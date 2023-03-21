name: ASIS System Availability Policy
acronym: System_Availability
satisfies:
  TSC:
    - A1.1
    - CC9.1
majorRevisions:
  - date: Mar 1, 2023
  - comment: Initial document
---

\pagebreak

|**Change / Revision Record**|
|    :----:   |

This record shall be maintained throughout the life of the document. Each published update shall be recorded. Revisions are a complete reissue of the entire document. 

+--------------+----------------+-------------------------------------------------------+
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

# Purpose

The purpose of this policy is to define requirements for proper controls to protect the availability of the organization’s Aviation Safety Information System (ASIS).

# Scope

This policy applies to all users of ASIS within the organization. This typically includes employees and contractors, as well as any external parties that come into contact with systems and information controlled by the organization (hereinafter referred to as “*users*”). This policy must be made readily available to all users.

# Background

a. The intent of this policy is to minimize the amount of unexpected or unplanned downtime (also known as outages) of ASIS under the organization’s control. This policy prescribes specific measures for the organization that will increase system redundancy, introduce failover mechanisms, and implement monitoring such that outages are prevented as much as possible. Where they cannot be prevented, outages will be quickly detected and remediated.

a. Within this policy, an availability is defined as a characteristic of information or ASIS in which such information or systems can be accessed by authorized entities whenever needed.

# References

a. Reference A: ASIS Risk Assessment Policy

# Policy

a. ASIS must be consistently available to conduct and support business operations and specifially the WBAT Platform.

a. ASIS must have a defined availability classification, with appropriate controls enabled and incorporated into development and production processes based on this classification.

a. System and network failures must be reported promptly to the organization’s Systems Network Manager or designee <sysadmin@utrs.com>

a. Users, and customers where practical, must be notified of scheduled outages (e.g., system maintenance) that require periods of downtime. This notification must specify the date and time of the system maintenance, expected duration, and anticipated system or service resumption time.

a. Prior to production use, each new or significantly modified application must have a completed risk assessment that includes availability risks. Risk assessments must be completed in accordance with the Risk Assessment Policy (Reference A).

a. Capacity management and load balancing techniques must be used, as deemed necessary, to help minimize the risk and impact of system failures.

a. ASIS is hosted in the Amazon Web Services (AWS) US-East (NorVA) Region with backups replicated to US-West (NorCal). 

    i. AWS standard SLA is 99.95% uptime for all services. AWS S3 Object Storage SLA is 99.9999999%

    i. For added redundancy, encrypted backups are transferred rsync

a. ASIS has an appropriate data backup plan that ensures:

    i. All sensitive data can be restored within a reasonable time period.

    i. Full backups of critical resources are performed on at least a weekly basis.

    i. Incremental backups for critical resources are performed on at least a daily basis.

    i. Backups and associated media are maintained IAW the ASIS Data Retention Policy

    i. Backups are stored off-site with multiple points of redundancy and protected using encryption and key management.

    i. Tests of backup data must be conducted at least once per quarter. Tests of configurations must be conducted twice per year.

a. ASIS has an appropriate business continuity plan that meets the following criteria:

    i. Recovery Point Objective: 8 hours maximum

    i. Recovery Time Objective and data loss limits are defined in Table 3. 

    i. Recovery time requirements and data loss limits must be adhered to with specific documentation in the plan.

    i. Organization and/or external critical resources, personnel, and necessary corrective actions must be specifically identified.

    i. Specific responsibilities and tasks for responding to emergencies and resuming business operations must be included in the plan.

    i. All applicable legal and regulatory requirements must be satisfied.

+-------------------+------------------+---------------+-------------------+------------------+
|**Availability**   | **Availability** | **Scheduled** | **Recovery Time** | **Data Loss or** |
|**Classification** | **Requirements** | **Outage**    | **Requirements**  | **Impact Loss**  |
+===================+==================+===============+===================+==================+
| High              | High to          | 30 minutes    | 1 hour            | Minimal          |
|                   | Continuous       |               |                   |                  |
+-------------------+------------------+---------------+-------------------+------------------+
|                   |                  |               |                   |                  |
+-------------------+------------------+---------------+-------------------+------------------+
| Medium            | Standard         | 2 hours       | 4 hours           | Some data loss   |
|                   | Availability     |               |                   | is tolerated if  |
|                   |                  |               |                   | it results in    |
|                   |                  |               |                   | quicker          |
|                   |                  |               |                   | restoration      |
+-------------------+------------------+---------------+-------------------+------------------+
|                   |                  |               |                   |                  |
+-------------------+------------------+---------------+-------------------+------------------+
| Low               | Limited          | 4 hours       | Next              | Some data loss   |
|                   | Availability     |               | business day      | is tolerated if  |
|                   |                  |               |                   | it results in    |
|                   |                  |               |                   | quicker          |
|                   |                  |               |                   | restoration      |
+-------------------+------------------+---------------+-------------------+------------------+

Table 3: Recovery Time and Data Loss Limits 

Service Standards / SLA

| Level  | Definition                                                                                                         | Examples                                                                                                                                     |
|--------|--------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| High   | Incidents that have a severe <br>impact on operations                                                              | Compromise of sensitive data<br>Widespread malcode attack<br>Unauthorized access to critical systems <br>DoS affecting the entire enterprise |
| Medium | Incidents that have a <br>significant impact, or the <br>potential to have a severe <br>impact, on operations      | Small-scale DoS attack<br>Website compromises<br>Unauthorized access (brute force attacks <br>against FTP, ssh, and other protocols)         |
| Low    | Incidents that have a minimal <br>impact with the potential for <br>significant or severe impact <br>on operations | Network probes or system scans<br>Isolated virus infections<br>Acceptable use violations                                                     |
