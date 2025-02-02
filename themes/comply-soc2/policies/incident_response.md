name: ASIS Security Incident Response Policy
acronym: Incident_Response
satisfies:
  TSC:
    - CC2.2
    - CC2.3
    - CC4.1
    - CC5.3
    - CC7.1
    - CC7.2
    - CC7.3
    - CC7.4
    - CC7.5
majorRevisions:
  - date: Mar 3, 2023
    comment: Initial document
---

\pagebreak

|**Change / Revision Record**|
|    :----:   |

This record shall be maintained throughout the life of the document. Each published update shall be recorded. Revisions are a complete reissue of the entire document. 

+--------------+----------------+-------------------------------------------------------+
| **Revision**  |   **Date**    | **Change/Revision Description**                       |
+:=============:+:=============:+:=====================================================:+
|       1.0     | 03 Mar 2023   | Initial Document                                      |
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

This policy:

a. Is intended to establish controls to ensure detection of security vulnerabilities and incidents, as well as quick reaction and response to security breaches.

a. Provides implementing instructions for security incident response, to include definitions, procedures, responsibilities, and performance measures (metrics and reporting mechanisms).

# Scope

This policy applies to all users of information systems within the the UTRS Aviation Safety Technology Division (organization). This typically includes employees and contractors, as well as any external parties that come into contact with systems and information controlled by the organization (hereinafter referred to as *“users”*). This policy must be made readily available to all users.

# Background

a. A key objective of the organization’s Information Security Program is to focus on detecting information security weaknesses and vulnerabilities so that incidents and breaches can be prevented wherever possible. The organization is committed to protecting its employees, customers, and partners from illegal or damaging actions taken by others, either knowingly or unknowingly. Despite this, incidents and data breaches are likely to happen; when they do, the organization is committed to rapidly responding to them, which may include identifying, containing, investigating, resolving , and communicating information related to the breach.

a. This policy requires that all users report any perceived or actual information security vulnerability or incident as soon as possible using the contact mechanisms prescribed in this document. In addition, the organization must employ automated scanning and reporting mechanisms that can be used to identify possible information security vulnerabilities and incidents. If a vulnerability is identified, it must be resolved within a set period of time based on its severity. If an incident is identified, it must be investigated within a set period of time based on its severity. If an incident is confirmed as a breach, a set procedure must be followed to contain, investigate, resolve, and communicate information to employees, customers, partners and other stakeholders.  

a. Within this document, the following definitions apply:

    i. *Information Security Vulnerability:* a vulnerability in an information system, information system security procedures, or administrative controls that could be exploited to gain unauthorized access to information or to disrupt critical processing.

    i. *Information Security Incident:* a suspected, attempted, successful, or imminent threat of unauthorized access, use, disclosure, breach, modification, or destruction of information; interference with information technology operations; or significant violation of information security policy.

# References

a. Reference A: ASIS Cyber Risk Assessment Procedure

a. Reference B: ASIS Cyber Incident Response Process

# Policy

a. All users must report any system vulnerability , incident, or event pointing to a possible incident to the Information Security Manager (ISM) as quickly as possible but no later than 24 hours. Incidents must be reported by sending an email message to <cybersecurity@utrs.com> with details of the incident.

a. Users receive training on the procedures for reporting information security incidents or discovered vulnerabilities, and their responsibilities to report such incidents. Failure to report information security incidents shall be considered to be a security violation and will be reported to the Human Resources (HR) Manager for disciplinary action.

a. Information and artifacts associated with security incidents (including but not limited to files, logs, and screen captures) must be preserved in the event that they need to be used as evidence of a crime.

a. All information security incidents must be responded to through the incident management procedures defined below.

a. In order to appropriately plan and prepare for incidents, the organization reviews incident response procedures at least once per year for currency, and updates as required. The incident response logs are reviewed monthly.

# Incident Response Steps



# Procedure For Establishing Incident Response System

a. Define on-call schedule and assign an Incident Response Manager (IRM) responsible for managing incident response procedure during each availability window.

a. Define notification channel to alert the on-call IRM of a potential security incident.  Establish company resource that includes up to date contact information for on-call IRM.

a. Assign management sponsors from the Engineering, Legal, HR, Marketing, and C-Suite teams.

a. Distribute Procedure For Execute Incident Response to all staff and ensure up-to-date versions are accessible in a dedicated company resource. 

a. Require all staff to complete training for Procedure For Executing Incident Response at least twice per year.

# Procedure For Executing Incident Response

a. When an information security incident is identified or detected, users must notify their immediate manager within 24 hours. The manager must immediately notify the IRM on call for proper response. The following information must be included as part of the notification:

    i. Description of the incident

    i. Date, time, and location of the incident

    i. Person who discovered the incident

    i. How the incident was discovered

    i. Known evidence of the incident

    i. Affected system(s)

a. Within 48 hours of the incident being reported, the IRM shall conduct a preliminary investigation and risk assessment to review and confirm the details of the incident. If the incident is confirmed, the IRM must assess the impact to the organization and assign a severity level, which will determine the level of remediation effort required:

+--------+----------------------------------------+-----------------------------------------+
| Level  | Definition                             | Examples                                |
+:======:+========================================+=========================================+
| High   | Incidents that have a severe impact    | Compromise of sensitive database        |
|        | on operations                          | Widespread malcode attacks              |
|        |                                        | Unauthorized access to critical systems | 
|        |                                        | DoS affecting the entire enterprise     |
+--------+----------------------------------------+-----------------------------------------+
|        |                                        |                                         |
+--------+----------------------------------------+-----------------------------------------+
| Medium | Incidents that have a significant      | Small-scale DoS attacks                 |
|        | impact, or the potential to have a     | Website compromises                     |
|        | severe impact, on operations           | Unauthorized access (brute force attacks|
|        |                                        | against FTP, ssh, and other protocols)  |
+--------+----------------------------------------+-----------------------------------------+
|        |                                        |                                         |
+--------+----------------------------------------+-----------------------------------------+
| Low    | Incidents that have a minimal impact   | Network probes or system scans          |
|        | with the potential for significant     | Isolated virus infections               |
|        | or severe impact on operations         | Acceptable use violations               |
+--------+----------------------------------------+-----------------------------------------+

a. The IRM, in consultation with management sponsors, shall determine appropriate incident response activities in order to contain and resolve incidents.

a. The IRM must take all necessary steps to preserve forensic evidence (e.g. log information, files, images) for further investigation to determine if any malicious activity has taken place. All such information must be preserved and provided to law enforcement if the incident is determined to be malicious.

a. If the incident is deemed as High or Medium, the IRM must work with the VP Brand/Creative, General Counsel, and HR Manager to create and execute a communications plan that communicates the incident to users, the public, and others affected.

a. The IRM must take all necessary steps to resolve the incident and recover information systems, data, and connectivity. All technical steps taken during an incident must be documented in the organization’s incident log, and must contain the following:

    i. Description of the incident

    i. Incident severity level

    i. Root cause (e.g. source address, website malware, vulnerability)

    i. Evidence

    i. Mitigations applied (e.g. patch, re-image)

    i. Status (open, closed, archived)

    i. Disclosures (parties to which the details of this incident were disclosed to, such as customers, vendors, law enforcement, etc.)

a. After an incident has been resolved, the IRM must conduct a postmortem that includes root cause analysis and documentation any lessons learned.

a. Depending on the severity of the incident, the Chief Executive Officer (CEO) may elect to contact external authorities, including but not limited to law enforcement, private investigation firms, and government organizations as part of the response to the incident.

a. The IRM must notify all users of the incident, conduct additional training if necessary, and present any lessons learned to prevent future occurrences.