name: ASIS Log and Audit Management Policy
acronym: Log_Management
satisfies:
  TSC:
    - CC7.1
    - CC7.2
majorRevisions:
  - date: Mar 1, 2023
  - comment: Initial document
---

\pagebreak

|**Change / Revision Record**|
|    :----:   |

This record shall be maintained throughout the life of the document. Each published update shall be recorded. Revisions are a complete reissue of the entire document. 

+---------------+---------------+-------------------------------------------------------+
| **Revision**  |   **Date**    | **Change/Revision Description**                       |
+:=============:+:=============:+:=====================================================:+
|       1.0     | 01 Mar 2023   | Initial Document                                      |
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

# Overview

Logging from critical systems, applications and services can provide key information and potential indicators of compromise.  Although logging information may not be viewed on a daily basis, it is critical to have from a forensics standpoint. 

# Purpose

This policy addresses this issue by defining specific requirements for information systems to generate, store, process, and aggregate appropriate audit logs across the organization’s entire environment in order to provide key information and detect indicators of potential compromise.

# Scope

a. This policy applies to all information systems within the organization’s production network.

a. This policy applies to all employees, contractors, and partners of the organization that administer or provide maintenance on the organization’s production systems. Throughout this policy, these individuals are referred to as system administrators.

# Background

a. In order to measure an information system’s level of security through confidentiality, integrity, and availability, the system must collect audit data that provides key insights into system performance and activities. This audit data is collected in the form of system logs. Logging from critical systems, applications, and services provides information that can serve as a starting point for metrics and incident investigations. This policy provides specific requirements and instructions for how to manage such logs.

# Policy

a. All production systems within the organization shall record and retain audit-logging information that includes the following information:

    i. Activities performed on the system.

    i. The user or entity (i.e. system account) that performed the activity, including the system that the activity was performed from.
    
    i. The file, application, or other object that the activity was performed on.
    
    i. The time that the activity occurred.

    i. The tool that the activity was performed with.

    i. The outcome (e.g., success or failure) of the activity.

a. Specific activities to be logged must include, at a minimum:

    i. Information (including authentication information such as usernames or passwords) is created, read, updated, or deleted. 

    i. Accepted or initiated network connections. 

    i. User authentication and authorization to systems and networks.

    i. Grant, modify, or revoke access rights, including adding a new user or group; changing user privileges, file permissions, database object permissions, firewall rules, and passwords.

    i. System, network, or services configuration changes, including software installation, patches, updates, or other installed software changes.
  
    i. Startup, shutdown, or restart of an application. 
  
    i. Application process abort, failure, or abnormal end, especially due to resource exhaustion or reaching a resource limit or threshold (such as CPU, memory, network connections, network bandwidth, disk space, or other resources), the failure of network services such as DHCP or DNS, or hardware fault.

    i. Detection of suspicious and/or malicious activity from a security system such as an Intrusion Detection or Prevention System (IDS/IPS), anti-virus system, or anti-spyware system.

a. Unless technically impractical or infeasible, all logs must be aggregated in a central system so that activities across different systems can be correlated, analyzed, and tracked for similarities, trends, and cascading effects. Log aggregation systems must have automatic and timely log ingest, event and anomaly tagging and alerting, and ability for manual review.

a. Logs must be manually reviewed on a regular basis:
  
    i. The activities of users, administrators and system operators must be reviewed on at least a monthly basis.

    i. Logs related to PII must be reviewed on at least a monthly basis in order to identify unusual behavior.

a. When using an outsourced cloud environment, logs must be kept on cloud environment access and use, resource allocation and utilization, and changes to PII. Logs must be kept for all administrators and operators performing activities in cloud environments.

## Audit Log Security Controls and Backup

a. Audit logs shall be protected from unauthorized access or modification, so the information they contain will be made available only if needed to evaluate a security incident or for routine audit activities as outlined in this policy.

a. All audit logs are protected in transit and encrypted at rest to control access to the content of the logs.

a. Audit logs are collected, stored and accessible via Amazon Web Services (AWS) Cloudwatch Logs service. Log files are retained for two years with the following exceptions:

    i. AWS Lamda log files are limited to 365 days, except Cloudfront LamdaEdge, and `us-east-1.wbat-legacy-redirect-cloudfront` which are limited to 180 days

    i. `wbat/srs/srs/home/logs/multi-scgi-log & logs/xvfb-log`, `/var/log/mail.log`, `WBAT-ELB-VPC-STAGING-flow-log`, and `dev-vpc-logs` are limited to 365 days

    i. dev-vpc-logs is limited to 30 days

## Review and Reporting of Audit Findings

a. Audit information that is routinely gathered must be reviewed in a timely manner, currently monthly, by a designated systems administrator. On a quarterly basis, logs are reviewed to assure the proper data is being captured and retained. 

a. Whenever indicated through evaluation and reporting, appropriate corrective actions must be undertaken. 

## System Time Keeping

Accurate time keeping is essential to effective and accurate event analysis. All information systems within the organization must synchronize their clocks by implementing Network Time Protocol (NTP) or a similar capability. All information systems must synchronize with the same primary time source to ensure a reasonable level of accurate time is used to “time stamp” event logs across all information processing resources. .
