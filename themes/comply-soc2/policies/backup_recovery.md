name: ASIS Backup and Recovery Policy
acronym: Backup_Recovery
satisfies:
  TSC:
    - A1.2
    - A1.3
    - CC4.1
    - CC6.1
    - CC6.2
    - CC6.3
    - CC6.7
    - CC7.5
    - CC9.9
    - PI1.5
majorRevisions:
  - date: February 9, 2023
    comment: Revision 1.2
---

\pagebreak

|**Change / Revision Record**|
|    :----:   |

This record shall be maintained throughout the life of the document. Each published update shall be recorded. Revisions are a complete reissue of the entire document. 

+--------------+----------------+-------------------------------------------------------+
| **Revision**  |   **Date**    | **Change/Revision Description**                       |
+:=============:+:=============:+:=====================================================:+
|       1.0     | 01 Aug 2017   | Initial Document                                      |
+---------------+---------------+-------------------------------------------------------+
|       1.1     | 30 Jun 2020   | Periodic Review                                       |
+---------------+---------------+-------------------------------------------------------+
|       1.1     | 31 May 2022   | Periodic Review                                       |
+---------------+---------------+-------------------------------------------------------+
|       1.2     | 09 Feb 2023   | Periodic Review - Minor changes/corrections           |
+---------------+---------------+-------------------------------------------------------+
|               |               |                                                       |
+---------------+---------------+-------------------------------------------------------+
|               |               |                                                       |
+---------------+---------------+-------------------------------------------------------+
|               |               |                                                       |
+---------------+---------------+-------------------------------------------------------+
|               |               |                                                       |
+---------------+---------------+-------------------------------------------------------+

\pagebreak

# Overview

Since disasters happen so rarely, it is often easy to overlook the business continuity and disaster recovery planning process. Aviation Safety Information System (ASIS) customers generate and modify large amounts of data every day. Data can be lost, corrupted, compromised, or stolen through hardware failure, human error, hacking, and malware. Loss or corruption of data could result in significant business disruption. Data backup and recovery is an integral part of the ASIS business continuity plan and disaster recovery plan.

# Purpose

The purpose of this policy is to define the backup schedules for all the server groups and ensure server continuity to support the backup and restoration of archived information in the event of a natural disaster, equipment failure, and/or accidental loss of files. The goals of this backup policy are outlined as follows:

- To safeguard the information assets of ASIS and its customers. 
- To prevent the loss of data in case of accidental deletion or corruption of data, system failure, or disaster. 
- To permit timely restoration of information and business processes.
- To manage as well as secure backup and restoration processes and the media employed within these processes.

# Scope

This policy applies to all employees, contractors, consultants (hereinafter "*users*") of UTRS Aviation Safety Technology Division (organization)and others who may have access to confidential information. This policy must be made readily available to all whom it applies to.

# References

a. Encryption Policy

a. Disaster Recovery Policy 

# Backup Configurations

**Backup System**

All backups are performed using standard Unix, PostgreSQL or Amazon Web Services (AWS) tools and data formats: pg_dump, rsnapshot, tar, gzip/gunzip, GnuPG, AWS S3, and RDS Snapshots. Except for RDS Snapshots, there are no proprietary or non-standard data formats in use, so there will never be a risk of restore failures due to loss of backup software, unsupported versions of backup software, etc.

Since ASIS is a 100% cloud-based provider, ASIS does not utilize any physical backup medium (i.e., tapes or external drives), but ASIS does utilize different cloud locations to prevent against data loss within a single-point-of-failure. It is mandatory that all backup data, just like the source data, must be encrypted in transit and at rest.

To mitigate against any sort of “total loss” with AWS,ASIS utilizes encrypted backups with rsync.net as a form of “off-site” backups. For all backup targets, ASIS only keeps 7 days of backups with rsync.net.

ASIS utilizes different tools for multiple backups and targets to leverage maximum redundancy, flexibility, and efficiency. ASIS only performs full backups versus incremental or differential backups, reducing complications during. 

**Backup Targets**

ASIS targets data that is non-reproducible, such as:

- Customer databases
- Submitter file attachments
- Subversion (code repository)
- Alfresco (document repository)

# Backup Jobs

The following backup jobs are configured based upon maximum backup cycles allowable for full backups. It is currently configured to backup on the following schedule:

**ASIS PostgreSQL Database Dumps**

These are stored “near-line” as quick-loadable individual database dumps, on an encrypted EFS (NFS) volume. Each customer has a discrete database linked to a discrete instance. Complete database restoration is only required for disaster recover, or testing, development, and staging.
There are several PostgreSQL database dump schedules and processes to maintain multiple backups to choose from:

- Three times a day (0000, 0800, and 1600 UTC), a script will run (via rsnapshot) which will:
    + Perform a pg_dump of each ASIS database (separately), and gzip compress each sql file.
    + Rotate (via rsnapshot) each of the three “hourly” folders so that ASIS always has three folders of database dumps separated by 8 hours.
    
    *Note: “Hourly” is an approximation of the timing of the rsnapshot configuration.*

- Once a day (0000 UTC):
    + After the hourly script finishes), a script will run which rotates the most recent of the three “hourly” rsnapshots into the most recent “daily” rsnapshot, and rotate the seven daily rsnapshots (retaining 7 days).
    + A script will synchronize the most recent daily rsnapshot to an Amazon S3 bucket, so that ASIS always has daily database dumps on the EFS volume attached to servers, and also in S3.
    
        *Note: All S3 buckets are encrypted and all objects are encrypted by bucket policy.*

    + A script will encrypt each database dump from the daily rsnapshot (using GnuPG) and then rsync those files (over SSH) to rsync.net.
    
- Once a week (0000 UTC on Saturday, after daily scripts finish), rsnapshot will rotate the oldest daily rsnapshot into the weekly rotation (retaining four weeks of files).

- Once a month (0000 UTC on the first Saturday of the month), rsnapshot will rotate the oldest weekly rsnapshot into the monthly rotation (retaining six months of files).

The S3 bucket for storage is configured for both versioning and replication to a mirror S3 bucket in AWS US-West (N. California) Region.

ASIS also utilizes RDS Snapshot. RDS Postgresql is the managed AWS database service hosting ASIS’s Postgresql databases, and it is configured to make a full “snapshot” once per day.

**Submitter File Attachments**

Each customer has the capability to allow its submitters to “attach” a file to reports within WBAT (e.g., .pdf, .jpg, .docx files), and these files are linked to the database records, but stored as binary (\*.bin) files in S3. Since S3 has 99.999999999% durability, ASIS has felt safe in the native features of S3. However, ASIS does utilize versioning (in the case an object is inadvertently overwritten, a previous version can be restored), and replication to a mirror S3 bucket in the AWS US-West-1 Region.

**SVN (Subversion)**

A script runs to create a full backup of the Subversion repository to the local filesystem. This process occurs every three hours.

In addition, the backup is then encrypted and uploaded to rsync.net.
Amazon Backup is also utilized to create a backup of the EBS volume, with a seven-day retention, so in the event of a loss, the entire server, along with the data store, can be restored.

**Alfresco**

A script runs to create a full backup of the Alfresco database to the local filesystem. This process occurs every three hours.

In addition, the backup is then encrypted and uploaded to rsync.net.
Amazon Backup is also utilized to create a backup of the EBS volume, with a seven-day retention, so in the event of a loss, the entire server, along with the data store, can be restored.

# Backup Procedures

**Daily Tasks**

Every business day morning, prior to 0900, a backup administrator (assigned by recurring Podio task) reviews the status of the previous day’s backup jobs (and on first business day of the week, reviews the entire weekend’s activity) to verify that all jobs completed successfully. Any errors or unsuccessful jobs must be investigated to determine the cause and action taken immediately to complete unsuccessful jobs. Any unsuccessful backup jobs must be notified to the Sysadmin team and addressed within 24 hours and reviewed again on the weekly Sysadmin meetings on Monday morning.

*Recurring Podio Tasks*

- ASIS System Administration->ASIS: (Daily) Validate database backups
- ASIS Administration-> SDS: (Daily) Validate Subversion and Alfresco backups

# Recovery Testing

**Monthly Tests**

*Test Restore at least One ASIS Database Dump Backup*

This test is routinely performed as a matter of normal business as ASIS frequently copies a database from one system into another to use as a template, baseline, testing, evaluation, development, demo, etc. Each of these actions constitutes a test restore. 

*Recurring Podio Task*

- ASIS System Administration-> ASIS: (Monthly) Database test restore

**Annual Tests**

***ASIS Disaster Recovery Exercise***

This exercise will simulate a total loss of AWS US-East and will reconstitute ASIS in AWS US-West Region from RDS and S3 backups available in US-West-1.

*Recurring Podio Task*

- ASIS System Administration-> ASIS: (Annual) Disaster Recovery Exercise

***Subversion Disaster Recovery Exercise***

This exercise will simulate a total loss of AWS US-East and will reconstitute Subversion in AWS US-West Region from database and S3 backups available in US-West-1.

*Recurring Podio Task*

- ASIS System Administration-> SVN: (Annual) Disaster Recovery Exercise

***Alfresco Disaster Recovery Exercise***

This exercise will simulate a total loss of AWS US-East and will reconstitute Alfresco in AWS US-West Region from database and S3 backups available in US-West-1.

*<u>Recurring Podio Task</u>*

- ASIS System Administration-> Alfresco: (Annual) Disaster Recover Exercise

