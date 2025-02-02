name: Control Environment Narrative
acronym: Control_Environment
satisfies:
  TSC:
    - CC2.1
    - CC2.2
    - CC2.3
    - CC4.1
    - CC4.2
    - CC5.1
    - CC5.2
    - CC5.3
majorRevisions:
  - date: Mar 7, 2023
    comment: Initial document
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

# Control Environment Narrative

The following provides a description of the control structure of {{.Name}}.

The intent of this description is to enumerate the logical, policy, and procedural controls that serve to monitor {{.Name}}'s application and data security. Changes uncovered by these procedures in the logical, policy, procedural, or customer environment are addressed by remediations specific to the noted change.

# Logical Controls

{{.Name}} employs several logical controls to protect confidential data and ensure normal operation of its core product.

- Mandatory data encryption at-rest and in-transit

- Multi-factor authentication for access to cloud infrastructure

- Activity and anomaly monitoring on production systems

- Vulnerability management program

# Policy Controls

{{.Name}} employs several policy controls to protect confidential data and ensure normal operation of its core product. These policies include, but are not limited to:

- ASIS Access Control  Policy

- ASIS Encryption Policy

- ASIS Password-Passphrase Policy

- Policy Training Policy

- UTRS Vendor Management Policy

# Procedural Controls

{{.Name}} has numerous scheduled procedures to monitor and tune the effectiveness of ongoing security controls, and a series of event-driven procedures to respond to security-related events.

TODO: Finalize these lists

## Scheduled Security and Audit Procedures

- Review Access [semi-annually]

- Review Security Logs [weekly]

- Review Cyber Risk Assessment (enumerate possible compromise scenarios) [quarterly]

- Review Data Classification [annually]

- Backup Testing [monthly]

- Disaster Recovery Testing [at least annually -- conducted in conjunction with monthly staging/backup testing]

- Review Devices & Workstations [quarterly]

- Review & Clear Low-Priority Alerts [weekly]

- Apply OS Patches [monthly]

- Verify Data Disposal per Retention Policy [quarterly]

- Conduct Security Training [at least annually]

- Review Security Monitoring and Alerting Configuration [quarterly]

- SOC2 Audit [annual]

## Event-Driven Security and Audit Procedures

- Onboard Employee

- Offboard Employee

- Investigate Security Alert

- Investigate Security Incident

# Remediations

{{.Name}} uses the outcomes of the aforementioned controls and procedures to identify shortcomings in the existing control environment. Once identified, these shortcomings are remediated by improving existing controls and procedures, and creating new controls and procedures as needed.

# Communications

{{.Name}} communicates relevant information regarding the functioning of the above controls with internal and external parties on an as-needed basis and according to statutory requirements.

## Internal

{{.Name}} communicates control outcomes, anomalies, and remediations internally using the following channels:

- Slack
- Email
- GitHub ticketing

## External

{{.Name}} communicates relevant control-related information to external parties including shareholders, customers, contractors, regulators, and government entities as needed according to contractual and regulatory/statutory obligation.