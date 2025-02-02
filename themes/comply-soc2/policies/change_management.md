name: ASIS Change Management Policy
acronym: Change_Management
satisfies:
  TSC:
    - CC3.4    
    - CC8.1
majorRevisions:
  - date: March 3, 2023
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

This policy defines how changes to information systems are planned and implemented. 

# Scope

This policy applies to all employees, contractors, consultants (hereinafter "_Autthorized Users_") of UTRS Aviation Safety Technology Division (organization) and others who may have access to confidential information. This policy must be made readily available to all whom it applies to.


# Background

This policy defines specific requirements to ensure that changes to systems and applications are properly planned, evaluated, reviewed, approved, communicated, implemented, documented, and reviewed, thereby ensuring the greatest probability of success. Where changes are not successful, this document provides mechanisms for conducting post-implementation review such that future mistakes and errors can be prevented.

# Policy

a. Any changes to the security architecture or customer data handling of a system, or software and application changes including bug fixes, must be formally requested in via the Podio project management application.

a. All change requests must be documented.

    i. Internal change requests are entered into the Podio ticketing application.

    i. External change requests and bug reports are entered by users into Zendesk. Zendesk creates a Podio ticket. 

a. All change requests must be prioritized in terms of benefits, urgency, effort required, and potential impacts to the organization’s operations.

a. All implemented changes must be communicated to relevant users. 

a. Change management must be conducted according to the following procedure:
    
    i. _Planning_: Plan the change, including the implementation design, scheduling, and implementation of a communications plan, testing plan, and roll-back plan.
    
    i. _Evaluation_: Evaluate the change, including priority level of the service and risk that the proposed change introduces to the system; determine the change type and the specific step-by-step process to implement the change.
    
    i. _Review_: Review the change plan amongst the VP, Program Manager, Systems Network Manager, Team Lead, and if necessary the Cybersecurity Manager
    
    i. _Approval_: The VP must approve the change plan. 
    
    i. _Communication_: Communicate the change to all users of the system.
    
    i. _Implementation_: Test and implement the change.
    
    i. _Documentation_: Record the change and any post-implementation issues.
    
    i. _Post-change review_: Conduct a post-implementation review to determine how the change is impacting the organization, either positively or negatively. Discuss and document any lessons learned.

    i. The workflow steps including approvals at each development level must be documented in Podio.

# Separation of Duties

a. All development is conducted in either a local environment or in a dedicated development environment in AWS.

a. Developers are not provided access to the production environment. 

a. All changes to production must be pushed to staging and then switched to production by the systems administration team. 


