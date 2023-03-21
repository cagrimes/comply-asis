name: ASIS Data Retention Policy
acronym: Data_Retention

satisfies:
  TSC:
    - C1.1
    - C1.2
    - CC1.2
    - CC6.5
    - P4.2
majorRevisions:
  - date: Jan 22 2023
    comment: Initial document
---
\pagebreak

|**Change / Revision Record**|
|    :----:   |

This record shall be maintained throughout the life of the document. Each published update shall be recorded. Revisions are a complete reissue of the entire document. 

+--------------+----------------+-------------------------------------------------------+
| **Revision**  |   **Date**    | **Change/Revision Description**                       |
+:=============:+:=============:+:=====================================================:+
|       1.0     | 22 Jan 2023   | Complete Reissue                                      |
+---------------+---------------+-------------------------------------------------------+
|               |               |                                                       |
+---------------+---------------+-------------------------------------------------------+
|               |               |                                                       |
+---------------+---------------+-------------------------------------------------------+
|               |               |                                                       |
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

# Appendices
Appendix A: Retention Periods

# Purpose

This policy:

a. Defines the objectives and requirements for data retention within the UTRS Aviation Safety Division (organization). Further, this policy extends and compliments the UTRS Records Retention Policy. 

a. Covers all data within the organization's custody or control, regardless of the medium the data is stored in (electronic form, paper form, etc.) Within this policy, the medium which holds data is referred to as information, no matter what form it is in.

# Scope

This policy applies to all users of information systems within the organization. This typically includes employees and contractors, as well as any external parties that come into contact with systems and information the organization owns or controls (hereinafter referred to as “users”). This policy must be made readily available to all users.

# Background

The organization:

a. Is bound by multiple legal, regulatory and contractual obligations with regard to the data it retains. These obligations stipulate how long data can be retained, and how data must be destroyed. Examples of legal, regulatory and contractual obligations include laws and regulations in the local jurisdiction where the organization conducts business, and contracts made with employees, customers, service providers, partners and others.

a. May also be involved in events such as litigation or disaster recovery scenarios that require it to have access to original information in order to protect the organization's interests or those of its employees, customers, service providers, partners and others. As a result, the organization may need to archive and store information for longer that it may be needed for day-to-day operations.
 
 \pagebreak 

# Reference

a. Reference A: ASIS Removable Media Policy

a. Reference B: ASIS Technology Equipment Disposal Policy

a. Reference C: ASIS Backup and Recovery Policy

a. Referencd D: ASIS Log and Audit Management Policy

# Policy

a. *Information Retention*

    i. Retention is defined as the maintenance of information in a production or live environment which can be accessed by an authorized user in the ordinary course of business. 

    i. Information used in the development, staging, and testing of systems shall not be retained beyond their active use period nor copied into production or live environments.

    i. By default, the retention period of information shall be an active use period of exactly two years from its creation unless an exception is obtained permitting a longer or shorter retention period. The business unit responsible for the information must request the exception.

    i. After the active use period of information is over in accordance with this policy and approved exceptions, information must be archived for a defined period. Once the defined archive period is over, the information must be destroyed.

    i. Each business unit is responsible for the information it creates, uses, stores, processes and destroys, according to the requirements of this policy. The responsible business unit is considered to be the information owner.

    i. The organization’s legal counsel may issue a litigation hold to request that information relating to potential or actual litigation, arbitration or other claims, demands, disputes or regulatory action be retained in accordance with instructions from the legal counsel.

    i. Each employee and contractor affiliated with the company must return information in their possession or control to the organization upon separation and/or retirement.

    i. Information owners must enforce the retention, archiving and destruction of information, and communicate these periods to relevant parties.

a. *Information Archiving*

    i. Archiving is defined as secured storage of information such that the information is rendered inaccessible by authorized users in the ordinary course of business but can be retrieved by an administrator designated by company management.

        1. Physical (e.g., paper) records must be archived in secured storage (onsite or offsite) and clearly labeled in archive boxes naming the information owner.

        1. Electronic records must be archived with strict access controls set by the information owner and appropriate to secure the confidentiality, integrity and accessibility of the information.

    i. The default archiving period of information shall be 2 years unless an approved exception permits a longer or shorter period. Exceptions must be requested by the information owner.

        1. As a guideline, an archiving period of more than 2 years may be granted for information with a vital historical purpose such as corporate records, contracts, and technical/trade secrets.

        1. As a guideline, an archiving period of less than 2 years may be granted for information with a limited business purpose such as email, travel itineraries, pre-trip advisories, or to comply with specific legal, contractual and/or regulatory requirements (e.g., PCI DSS, GDPR, etc.)

    i. Information must be destroyed (defined below) at the end of the elapsed archiving period.  

a. *Information Destruction*

    i. Destruction is defined as the physical or technical destruction sufficient to render the information contained in the document irretrievable by ordinary commercially-available means.

    i. The organization must maintain and enforce a detailed list of approved destruction methods appropriate for each type of information archived, whether in physical storage media such as CD-ROMs, DVDs, backup tapes, hard drives, mobile devices, portable drives or in database records or backup files. Physical information in paper form must be shredded using an authorized shredding device; waste must be periodically removed by approved personnel. Refer to Reference A and A above.

    i. Customer data is returned to the customer upon departure and then destroyed.

a. Retention and archival periods for information that is created, processed, stored and used by the organization is defined in Appendix A, “Retention Periods.” 

\pagebreak 

# Appendix A: Retention Periods

Incremental backups are created every 8 hours (Refer to Reference C above)

**Production Database** 

+------------------+-------------------+------------------+------------------+-----------------+
| Information Type | Information Owner | Storage Location | Retention Period | Archival Period |
+==================+===================+==================+==================+=================+
| Voluntary        |                   |                  |                  |                 |
| Safety Data      | Customer          | AWS              | Indefinite       | N/A             |
+------------------+-------------------+------------------+------------------+-----------------+
|       |
+------------------+-------------------+------------------+------------------+-----------------+
|                  |                   |                  |                  |                 |
| Flight Data      | Customer          | AWS              | Indefinite       | N/A             |
+------------------+-------------------+------------------+------------------+-----------------+
|       |
+------------------+-------------------+------------------+------------------+-----------------+
|                  |                   |                  |                  |                 |
| Attachments      | Customer          | AWS              | Indefinite       | N/A             |
+------------------+-------------------+------------------+------------------+-----------------+
Data in production remains in the production database

**Backups**

> *Customer Data*

+------------------+-------------------+------------------+------------------+-----------------+
| Backup Type      | Retention Period  | Storage Location | Rotation  Period | Source          |
+==================+===================+==================+==================+=================+
|                  | Continual 8-Hour  |                  |                  | Original        |
| 8-Hour Increment | Rotation          | AWS S3           | 24 Hours         | Backup          |
+------------------+-------------------+------------------+------------------+-----------------+
|       |
+------------------+-------------------+------------------+------------------+-----------------+
|                  |                   |                  |                  | Last 8-Hour     |
| Daily            | 7 Days            | AWS S3 / rsync   | 24 Hours         | Backup (0000Z)  |
+------------------+-------------------+------------------+------------------+-----------------+
|       |
+------------------+-------------------+------------------+------------------+-----------------+
|                  |                   |                  |                  | Last Weekly     |
| Weekly           | 4 Weeks           | AWS S3           | 7 Days           | Backup (0000Z)  |
+------------------+-------------------+------------------+------------------+-----------------+
|       |
+------------------+-------------------+------------------+------------------+-----------------+
|                  |                   |                  |                  | Last Monthly    |
| Monthly          | 6 Months          | AWS S3           | 4 Weeks          | Backup (0000Z)  |
+------------------+-------------------+------------------+------------------+-----------------+
\pagebreak
*ASIS Internal* 

> *Subversion Code Repository*

+------------------+-------------------+------------------+------------------+-----------------+
| Backup Type      | Retention Period  | Storage Location | Rotation Period  | Source          |
+==================+===================+==================+==================+=================+
|                  | 30 Days\          | AWS S3           | AWS S3 [^1]      | Original        |
| 3-Hour Increment | 7 Days            | rsync            | rsync [^2]       | Backup          |
+------------------+-------------------+------------------+------------------+-----------------+
|      |   
+------------------+-------------------+------------------+------------------+-----------------+
|                  |                   | AWS S3           |                  | Last 3-Hour     |
| Daily            | 30 Days           | rsync            | 24 Hours         | Backup (0000Z)  |
+------------------+-------------------+------------------+------------------+-----------------+

[^1]: Every 3-Hour update is retained in AWS S3 for 30-days then discarded
[^2]: Daily rotation to rsync. Each backup file is uploaded to *"day-of-week/backupfilename"* replacing the previous version

> *Git Code Repository*

+------------------+-------------------+------------------+------------------+-----------------+
| Backup Type      | Retention Period  | Storage Location | Rotation Period  | Source          |
+==================+===================+==================+==================+=================+
|                  |                   |                  |                  | Original        |
| Daily            | 30 Days           | AWS S3           | Daily            | Backup          |
+------------------+-------------------+------------------+------------------+-----------------+

> *Alfresco Document Repository*

+------------------+-------------------+------------------+------------------+-----------------+
| Backup Type      | Retention Period  | Storage Location | Rotation  Period | Source          |
+==================+===================+==================+==================+=================+
|                  | Continual 8-Hour  |                  |                  | Original        |
| 8-Hour Increment | Rotation          | AWS S3           | 24 Hours         | Backup          |
+------------------+-------------------+------------------+------------------+-----------------+
|       |
+------------------+-------------------+------------------+------------------+-----------------+
|                  |                   |                  |                  | Last 8-Hour     |
| Daily            | 7 Days            | AWS S3 / rsync   | 24 Hours         | Backup (0000Z)  |
+------------------+-------------------+------------------+------------------+-----------------+
|       |
+------------------+-------------------+------------------+------------------+-----------------+
|                  |                   |                  |                  | Last Weekly     |
| Weekly           | 4 Weeks           | AWS S3           | 7 Days           | Backup (0000Z)  |
+------------------+-------------------+------------------+------------------+-----------------+
|       |
+------------------+-------------------+------------------+------------------+-----------------+
|                  |                   |                  |                  | Last Monthly    |
| Monthly          | 6 Months          | AWS S3           | 4 Weeks          | Backup (0000Z)  |
+------------------+-------------------+------------------+------------------+-----------------+

> *Audit Logs*

Audit log retention is dicussed in Reference D, Paragraph 5.1.c. 
