name: Verbose Name Markdown Template
acronym: Markdown_Template
satisfies:
  TSC:
    - CC0.1
majorRevisions:
  - date: Feb 6, 2023
    comment: Initial or Revised Document
---

\pagebreak

|**Change / Revision Record**|
|    :----:   |

This record shall be maintained throughout the life of the document. Each published update shall be recorded. Revisions are a complete reissue of the entire document. 

+--------------+----------------+-------------------------------------------------------+
| **Revision**  |   **Date**    | **Change/Revision Description**                       |
+:=============:+:=============:+:=====================================================:+
|       1.0     | 01 Aug 2023   | Initial Document                                      |
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


+---------------+---------------+-------------------------------------------------------+
|               |               |                                                       |
|               |               |                                                       |
|               |               |                                                       |
+---------------+---------------+-------------------------------------------------------+


\pagebreak

# Appendices
    If used


# Overview
    If used

# Purpose


# Scope

This policy applies to all employees, contractors, consultants (hereinafter "*users*") of UTRS Aviation Safety Technology Division (organization) and others who may have access to confidential information. This policy must be made readily available to all whom it applies to.

# Background
    If used

# References
    If used


# Policy


| **Hazard**                                          | **Probability** | **Magnitude** | **Warning** | **Duration** | **Risk Priority** | **Mitigation**                      |

|-----------------------------------------------------|-----------------|---------------|-------------|--------------|-------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Short-term Disruption in service in US East         | Low             | Limited       | None        | < 24 Hours   | High              | Allow AWS to correct their issues.                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Long-term Disruption in service in US East          | Low             | Critical      | None        | < 4 Days     | Medium            | Move operations to US West. The procedures to perform this operation are in the ASIS Disaster Recovery Plan.                                                                                                                                                                                                                                                                                                                                                                                           |
| Termination of AWS due to national natural disaster | Extremely Low   | Catastrophic  | None        | > 4 Days     | Low               | This is the only hazard in AWS that would lead to complete disruption of our services for an extended period of time. Due to the nature of this type of hazard and the impact that this will have on all our customers, independent of our system, the recovery plan in this situation will be to set up a new hosting facility in the USA using the offsite backups of all critical ASIS data stored at rsync.net. Validation of these offsite backups are part of the disaster recovery procedures.  |
| Disruption in Podio                                 | Low             | Limited       | None        | > 1 Day      | Low               | Podio is used internally to support project management and online collaboration between ASIS Team members as well as to document policy and procedures. If there is a disruption in service, the team can use alternative tools (such as Office365), and Slack can be used to support this functionality. In the event of a disruption in service, the mitigation plan is to allow Podio to correct their issues.                                                                                      |
| Disruption in rsync.net                             | Low             | Limited       | None        | > 1 Day      | Low               | Offsite backups are maintained by rsync.net. while primary backups are stored in AWS. Therefore, a disruption in service will not impact ASIS. rsync.net self-hosts, and data is archived completely independent of AWS. In the event of a disruption in service, the mitigation plan is to allow rsync.net to correct their issues.                                                                                                                                                                   |
| Disruption in Zendesk                               | Low             | Limited       | None        | > 1 Day      | Low               | Zendesk is our primary tool to support customer service. During a disruption in service, the ASIS Support Team has contact information for our customers in Podio and Mail Chimp, a third-party broadcast email service. In the event of a disruption in service, the mitigation plan is to allow Zendesk to correct their issues.                                                                                                                                                                     |
| Disruption in Slack                                 | Low             | Limited       | None        | > 1 Day      | Low               | Slack is used internally for communication (similar to SMS) between ASIS team members. The Aviation Safety Contact List contains email addresses, postal addresses, and phone numbers for the entire team. The contents of this list can be used with alternative commination tools (such as email and Podio) to support this functionality during an interruption in service. In the event of a disruption in service, the mitigation plan is to allow Slack to correct their issues.                 |
| Disruption in Alfresco                              | Low             | Limited       | None        | > 1 Day      | Low               | Alfresco is an open-source document management tool that ASIS hosts using AWS. No hazard is associated with a disruption in this service. In the event of a disruption in service, ASIS will implement the Information System Contingency Plan.                                                                                                                                                                                                                                                        |
| Disruption in Subversion                            | Low             | Limited       | None        | > 1 Day      | Low               | Subversion is an open-source version control system supporting the maintenance, development, and operations of the ASIS information systems. In the event of a disruption in service, ASIS will implement the Information System Contingency Plan.                                                                                                                                                                                                                                                     |

