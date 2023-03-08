name: ASIS Cyber Incident Response Standard
acronym: Cyber_Incident_Standard
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
  - date: Mar 6, 2023
    comment: Initial Document
---

\pagebreak

|**Change / Revision Record**|
|    :----:   |

This record shall be maintained throughout the life of the document. Each published update shall be recorded. Revisions are a complete reissue of the entire document. 

+--------------+----------------+-------------------------------------------------------+
| **Revision**  |   **Date**    | **Change/Revision Description**                       |
+:=============:+:=============:+:=====================================================:+
|       1.0     | 06 Mar 2023   | Initial Document                                      |
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

a. This standard outlines the general steps for responding to computer security incidents.  
In addition to providing a standardized process flow, it:

   i. Identifies the incident response (IR) stakeholders and establishes their roles and responsibilities

   i. Describes incident triggering sources, incident types, and incident severity levels

   i. Includes requirements for annual testing, post-incident lessons-learned activities, 
and collection of IR metrics for use in gauging IR effectiveness.

a. The goals of IR, as outlined in this standard, are to:

  - Confirm whether an incident occurred
  
  - Provide a defined incident notification process

  - Promote the accumulation and documentation of accurate information
  
  - Establish controls for proper retrieval and handling of evidence
  
  - Contain the incident and stop any unwanted activity quickly and efficiently
  
  - Minimize disruption to network operations
  
  - Provide accurate reports and useful recommendations to management
  
  - Prevent and/or mitigate future incidents from occurring

# Scope

This policy applies to all employees, contractors, consultants (hereinafter "*users*") of UTRS Aviation Safety Technology Division (organization) and others who may have access to the Aviation Safety Information System (ASIS). This policy must be made readily available to all whom it applies to.

# References

a. Reference A: ASIS Incident Response Policy

a. Reference B: [DHS/CISA Cyber Incident Reporting Factsheet](https://www.dhs.gov/sites/default/files/publications/Cyber%20Incident%20Reporting%20United%20Message.pdf) 

# Cyber Incident Process Standard

## IR Stakeholder Roles and Responsibilities

a. In order to respond effectively to a computer security incident, it is critical that all IR 
stakeholders fully understand not only their roles and responsibilities in the IR 
process, but also the roles and responsibilities of each IR stakeholder.  This is 
necessary to:

  i. Avoid duplication of effort 

  i. Minimize procedural gaps that may occur 

  i. Ensure rapid response to computer security incidents.

a. IR stakeholders include:

      i. *Organization Leadership* - Provides mainly IR oversight, with their Information Security Officer (ISO) or designee, being the most ‘hands-on’ in terms of IR management activities.

      i. *Cybersecurity Manager (CSM)* – The CSM, or designee, provides for overall coordination of IR including the escalation of an incident. The CSM leads incident response services for the organization.

      i. *First Responders* – IT staff, such as the Systems Network Manager, system administrators, and other technical personnel, will be called upon, as needed, to provide support and tactical response to the Security Operations Center.  All digital forensic analysis must be performed by, or under the direction of, the SOC.

      i. *Agency Incident Response Teams* – Predefined teams must be ready which include, at minimum, Executive Management, Legal and the Public Information Officer. In some cases, Human Resources and Labor Relations may become involved.  

  i. *External Entities* - In consultation with the Security Operations Center, external 
entities may conduct hands-on IR activities, such as investigative response 
activities, or may provide guidance. For example, a security solutions vendor 
may provide assistance on security appliance settings.  External entities include 
vendors, service providers, or law enforcement including, but not limited to:

  - Multi-State Information Sharing and Analysis Center (MS-ISAC)

  - Federal Bureau of Investigation (FBI)

  - Internet Service Providers

  - Amazon Web Services

  - Data Holder Vendors

## IR Process Flow

This flow covers how to respond to specific situations for IR stakeholders 
to ensure an effective and efficient response. The focus of the IR process is to 
eradicate the problem as quickly as possible, while gathering actionable intelligence, 
to restore business functions, improve detection, and prevent reoccurrence. The six step IR process flow as depicted below:
 
**ADD img/cyber_ir_flow.png Figure 4.1 – Incident Response Process Flow**

### Step 1: Preparation

a. Proper planning and preparation for an incident before it occurs ensures a more 
effective and efficient IR process.  Activities associated with this step, include 
establishing IR teams; updating IR tools, policies/procedures, and forms/checklists; 
and ensuring IR communication procedures and IR stakeholder contact lists are 
accurate and up-to-date. The organization must have a defined and up to date Contact List 
and establish multiple communication channels with all entities and individuals on the 
IR Contact List.  

a. As per the Information Security Policy, all employees are required to report suspected information security incidents or weaknesses to the appropriate manager and the CSM (<cybersecurity@utrs.com>).

a. In order to operate efficiently and effectively, the IR process must be regularly 
tested.  This must occur at least annually.  This testing can be accomplished with 
mock incident training or tabletop exercises using realistic scenarios to provide a high-
level outline and systematic walk through of the IR process and, to the extent possible, 
must include all IR stakeholders.  These training scenarios should include specific 
'discussion points' that represent key learning opportunities, and incorporate lessons-
learned, which can then be integrated into the IR process as part of the review.

### Step 2: Identification

a. Identification involves review of anomalies to determine whether or not an incident has 
occurred, and, if one has occurred, determining the nature of the incident. 
Identification begins with an event, an anomaly that has been reported or noticed in a 
system or network. Detection can be accomplished through technical sources (e.g., 
operations staff, anti-virus software), non-technical sources (e.g., user security 
awareness and reporting), or both.  

a. It is important to recognize that not every network or system event will be a security 
incident. A first responder must be assigned to determine if there is an incident, 
categorize the incident and escalate as necessary.  Typically, this will be the organization’s 
designated security representative.

a. To be effective in IR, incidents must be classified, and escalated as soon as possible 
to the proper IR stakeholders to promote collaboration and information sharing. 
Incident classification requires the use of established incident categories together with 
an incident severity matrix as a means for prioritizing incidents and determining 
appropriate IR activities. 

**Incident Categories**

a. It is important to categorize common incidents experienced throughout the enterprise.  
By doing so, IR stakeholders can better focus their IR activities.  It should be noted 
that incidents can have more than one category and categorization may change as the 
investigation unfolds. 

a. The six (6) US-CERT  incident categories are as follows:

+----------+-----------------+--------------------------------------------------------------+
| Category | Name            | Description                                                  |
+:========:+=================+==============================================================+
| 0        | Exercise /      | Used during state, federal, international exercises and      |
|          | Network         | approved activity testing of internal/external network       |
|          | Defense Testing | defenses or responses.                                       |
+----------+-----------------+--------------------------------------------------------------+
|          |                 |                                                              |
+----------+-----------------+--------------------------------------------------------------+
| 1        | Unauthorized    | An individual gains logical or physical access without       |
|          | Access          | permission to a local government network, system,            |
|          |                 | application, data, or other resource.                        |
+----------+-----------------+--------------------------------------------------------------+
|          |                 |                                                              |
+----------+-----------------+--------------------------------------------------------------+
| 2        | Denial of       | An attack that successfully prevents or impairs the  normal  |
|          | Service         | authorized functionality of networks, systems, or            | 
|          |                 | applications by exhausting resources.  This activity         |
|          |                 | includes being the victim of or participating in the         | 
|          |                 | Denial of Service (DoS).                                     |
+----------+-----------------+--------------------------------------------------------------+
|          |                 |                                                              |
+----------+-----------------+--------------------------------------------------------------+
| 3        | Malicious Code  | Successful installation of malicious software (e.g.,  virus, |
|          |                 | worm, Trojan horse, or other code-based malicious  entity)   |
|          |                 | that infects an operating system or application.             |
+----------+-----------------+--------------------------------------------------------------+
|          |                 |                                                              |
+----------+-----------------+--------------------------------------------------------------+
| 4        | Improper Usage  | A person who knowingly or unknowingly violates acceptable    |
|          |                 | computing use policies.                                      |
+----------+-----------------+--------------------------------------------------------------+
|          |                 |                                                              |
+----------+-----------------+--------------------------------------------------------------+
| 5        | Scans / Probes  | Includes any activity that seeks to access or identify an    |
|          | / Attempted     | entity’s computer, open ports, protocols, service, or any    | 
|          | Access          | combination for later exploit.  This activity does not       | 
|          |                 | directly result in a compromise or denial of service.        |
|          |                 | Unauthorized internal scans are considered incidents.        |
|          |                 | Most external scans are considered to be routine, and on  a  |
|          |                 | case-by-case basis may require response and investigation.   |
+----------+-----------------+--------------------------------------------------------------+
|          |                 |                                                              |
+----------+-----------------+--------------------------------------------------------------+
| 6        | Investigation   | Unconfirmed incidents that are potentially malicious or      |
|          |                 | anomalous activity deemed by the reporting entity to         |
|          |                 | warrant further review.                                      |
+----------+-----------------+--------------------------------------------------------------+

**Incident Severity Matrix**

a. All information security incidents should be categorized according to severity level to assist in determining the extent to which a formal IR is required.  Severity levels are based on the perceived business impact of the incident.  Severity levels may change as the investigation unfolds. 

a. General definitions and description of each severity level are as follows:

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

**Escalation Procedures**

a. During an incident, clear and effective communication is critical.  As such, an 
escalation procedure should address all lines of communication in the event an 
incident occurs.  This includes not only internal communication but external 
communications as well. Communication should flow through all involved IR 
stakeholders so that everyone has the necessary information to act and carry out their 
responsibilities in a timely manner.  Notification must be made as soon as possible but 
should not delay the organization from taking appropriate actions to isolate and contain 
damage.

a. Each organization must have an IR escalation procedure that consists of: 
   
   i. An escalation matrix

   i. An up-to-date contact list with alternate contacts

   i. Multiple communications channels

a. All steps are needed to ensure appropriate and accurate information is disseminated quickly to the appropriate IR stakeholders.  

**Incident Scoping**

a. Initial scoping is provided by the organization and includes: 

      i. Identifying potential targets (e.g., known compromised systems, likely affected systems, key systems)
  
      i. Defining external touch points (e.g., Internet, wireless, 3rd party, remote access connections)
  
      i. Prioritizing likely scenarios (e.g., internal vs., external threat, targeted attack vs., target of opportunity)
  
      i. Visualizing in-scope environment (e.g., network diagram, data flow) 
  
a. Considerations for incident scoping activities are as follows: 
  
      i. Relying on relevant and verified evidence sources
  
      i. Reducing false positives and volume of data
  
      i. Avoiding excessive scope and ‘scope creep’
  
      i. Realizing operational and resource limitations may affect scope 
  
a. As additional incident-related information develops during the IR process and as additional stakeholders become involved, an incident typically requires re-scoping.

**Incident Tracking & Reporting**

a. A secure centralized tracking system, that can accommodate ‘need to know’ access, 
leads to a more efficient and systematic IR effort, as well as provides an audit trail 
should the efforts lead to legal prosecution of the threat.  

a. At a minimum, documentation of the incident must contain the following information: 

  - Date / time the incident was reported
  
  - Type of Incident
  
  - Reporting source of incident
  
  - Summary of the incident
  
  - Current status of the incident
  
  - All actions taken concerning the incident
  
  - Contact information for all involved parties
  
  - Evidence gathered during incident investigation
  
  - Relevant comments from IR team members
  
  - Proposed next steps to be taken

### Step 3:  Containment

a. This step focuses on containing the threat to minimize damage.  It is during this step 
that information is collected to determine how the attack took place. All affected 
systems within the enterprise should be identified so that containment (and eradication 
and recovery) is effective and complete.

a. Incident containment involves ‘stopping the bleeding’ and preventing the incident from 
spreading.  Containment can be accomplished by isolating infected systems, blocking 
suspicious network activity, and disabling services among other actions.  Containment 
varies for each incident depending on the severity and risk of continuing operations. 
organization leadership makes decisions regarding containment measures based on 
recommendations from the CSM.  

### Step 4:  Eradication

a. Eradication involves removing elements of the threat from the enterprise network.  
Specific eradication measures depend on the type of incident, number of systems 
involved, and the types of operating systems and applications involved. Typical 
eradication measures include re-imaging infected systems and enhanced monitoring of 
system activity.

a. Analysis of information collected is an iterative process and occurs/reoccurs during 
both the containment and eradication phases.

### Step 5:  Recovery

a. Once the root cause of an incident has been eradicated, the recovery phase can 
begin.  The goals of this step are to:

   i. Remediate any vulnerabilities contributing to the incident (and thus prevent future incidents)

   i. Recover by restoring operations to normal

a. A phased approach is often used to return systems to normal operation, 
harden them to prevent similar future incidents and heighten monitoring for an 
appropriate period of time. Typical recovery activities include rebuilding systems from 
trusted images/gold standards, restoring systems from clean backups and replacing 
compromised files with clean versions.

a. Care must be taken to ensure that files restored from backup do not reintroduce 
malicious code or vulnerabilities from the incident and that the system is clean and 
secure before returning to production use. Once recovery has been completed, the IR 
lead must validate/certify that the incident has been resolved.  

### Step 6:  Lessons Learned

a. An IR process is only as good as the ability to execute it successfully.  Lessons 
learned can be the results of actual IR activities or IR capability testing, and these 
results should be used to improve the IR process by identifying systemic weaknesses 
and deficiencies and taking steps to improve on these.  It is important that this take 
place relatively soon after the incident is closed.

a. Lessons learned, or postmortem, discussions provide:

   i. A record of steps taken to respond to an attack

   i. Investigative results into determining the root cause of the attack

   i. Potential improvements to make, such as IR stakeholder training and certifications, process and procedural updates, and technical modifications.  

a. Knowledge gained can be used in an effort to prevent and/or mitigate future incidents 
in the form of proactive services.  This may include testing the IR process, conducting 
vulnerability assessments, providing computer security training, reviewing security 
policies and procedures, and disseminating cyber security reminders.

a. Both incident reports and the results of these lesson-learned discussions will be 
placed into a database for future use and shared with all IR stakeholders for 
situational awareness and professional development.

## Incident Response Metrics

a. IR metrics must be compiled for each incident and reported to the CSM for enterprise 
situational awareness when possible and practical. 

a. These metrics allow IR stakeholders to:

   i. Measure IR effectiveness (and reveal potential gaps) over time

   i. Identify trends in terms of threat activities and in doing so

   i. Provide justification for additional resources, to include additional personnel, training, and tools

**IR Metrics**

+----------+----------------------------------------+-----------------------------------------+
| Category | Measurement                            | Description                             |
+:========:+========================================+=========================================+
| Incidents| \# Total Incidents / Year              | Total amount of incidents responded to  |
|          | on operations                          | per year                                |
|          |                                        |                                         |
|          | \# Incidents by Type / Year            | Total number of incidents responded to  | 
|          |                                        | by category per year                    |
+----------+----------------------------------------+-----------------------------------------+
|          |                                        |                                         |
+----------+----------------------------------------+-----------------------------------------+
| Time     | \# Personnel Hours / Incident          | Total amount of labor spent resolving   |
|          |                                        | incident                                |
|          | \# Days / Incident                     | Total amount of days spent resolving    |
|          |                                        | incident                                |
|          | \# System Down-Time Hours / Incident   | Total hours of system down-time until   |
|          |                                        | Incident resolved                       |
+----------+----------------------------------------+-----------------------------------------+
|          |                                        |                                         |
+----------+----------------------------------------+-----------------------------------------+
| Cost     | Estimated Monetary Cost / Incident     | Total estimated monetary cost per       |
|          |                                        | incident, to include containment,       |
|          |                                        | eradication, recovery, as well as       |
|          |                                        | collection & analysis activities (this  |
|          |                                        | include labor costs, external assistance|
|          |                                        | tool procurement, travel, etc.)         |
+----------+----------------------------------------+-----------------------------------------+
| Damage   | \# Systems Affected / Incident         | Total number of systems affected per    |
|          |                                        | incident                                |
|          | \# Records Compromised / Incident      | Total number of records compromised per |
|          |                                        | incident                                |
+----------+----------------------------------------+-----------------------------------------+
|          |                                        |                                         |
+----------+----------------------------------------+-----------------------------------------+
| Forensics| \# Total Forensics Leveraged Incidents | Total number of incidents requiring     |
|          | \ Year                                 | forensics (collection & analysis) per   |
|          |                                        | year                                    |
|          | \# System Images Analyzed / Incident   | Total number of system images analyzed  |
|          |                                        | per incident                            |
|          | \# System Memory Dumps Examined /      | Total number of system physical memory  |
|          | Incident                               | dumps examined per incident             |
+----------+----------------------------------------+-----------------------------------------+

# Compliance

a. Compliance is expected with all organization policies, procedures, processes and standards. Policies, procedures, processes and standards may be amended at any time.

a. If compliance with this standard is not feasible or technically possible, or if deviation 
from this policy is necessary to support a business function, entities shall request an 
exception through the published exception process.
 




	

	

