---
title: "ASIS - Business Continuity and Disaster Recovery Policy"
output: 
  pdf_document: 
    toc: yes
    number_sections: yes
    latex_engine: xelatex
---

| **Aviation Safety Technology** |
|:----------------------------:|





| Satisfies  | TSC:    |
|------------|--------:|
|            | - CC5.1 |
|            | - CC7.5 |
|            | - CC9.1 |
|   |   |
|---------------------|---------------------|
| Version: | 1.0      |
| Date:    | 09 Feb 22|




\pagebreak

| **Change / Revision Record** |
|:----------------------------:|

This record shall be maintained throughout the life of the document. Each published update shall be recorded. Revisions are a complete reissue of the entire document.

+----------------+--------------------------+---------------------------------+
| **Version**    | **Date**                 | **Change/Revision Description** |
+================+:========================:+:===============================:+
|       1.0      | 09 Feb 2023              | Initial Document                |
+----------------+--------------------------+---------------------------------+
|                |                          |                                 |
+----------------+--------------------------+---------------------------------+
|                |                          |                                 |
+----------------+--------------------------+---------------------------------+
|                |                          |                                 |
+----------------+--------------------------+---------------------------------+
|                |                          |                                 |
+----------------+--------------------------+---------------------------------+
|                |                          |                                 |
+----------------+--------------------------+---------------------------------+
|                |                          |                                 |
+----------------+--------------------------+---------------------------------+
|                |                          |                                 |
+----------------+--------------------------+---------------------------------+

\pagebreak

# Overview

Business systems are vital to the Aviation Safety Technology Division's (organization) mission/business processes; therefore, it is critical that services provided by the organziation are able to operate effectively without excessive interruption. The organization's Business Continuity Plan, which is stored in Alfresco along with all security-related documents, establishes the overall plan for implementing Business Continuation (BCP/Contingency Planning (CP) and Disaster Recovery (DR) and comprehensive procedures to support the organization quickly and effectively following a service disruption to normal operations.

The Aviation Safety Information System (ASIS) is hosted by AWS, and the AWS uptime exceeds the service-level standard supported by ASIS. Hazards associated with AWS outages are separated based on severity. By default, ASIS is deployed in the US East (NorVA) region. ASIS maintains a warm backup site in the US West (NorCal) region, with backups in both the US East and US West regions. Offline backups are transferred to rsync.net and stored independently of AWS. See Reference 5A.

# Purpose

This policy includes an overview of continuity operations, outlines the approach for supporting an organization's critical business functions, and defines the roles and responsibilities of staff. This document also outlines the orders of succession, notification procedures and communication methods, and the plan for maintaining and restoring access to vital records.

# Scope

This policy applies to all

a.  Infrastructure and data within the organization's information security program.

a.  Management, employees, and suppliers that are involved in decisions and processes affecting the organization's business continuity. This policy must be made readily available to all whom it applies to.

# Background

a.  The success of the organization is reliant upon the preservation of critical business operations and essential functions used to deliver key products and services. The purpose of this policy is to define the criteria for continuing business operations for the organization in the event of a disruption. Specifically, this document defines:

    i.  The structure and authority to ensure business resilience of key processes and systems.

    ii. The requirements for efforts to manage through a disaster or other disruptive event when the need arises.

    iii. The criteria to efficiently and effectively resume normal business operations after a disruption.

a.  Within this document, the following definitions apply:

    i.  *Business impact analysis/assessment* - an exercise that determines the impact of losing the support of any resource to an enterprise, establishes the escalation of that loss over time, identifies the minimum resources needed to return to a normal level of operation, and prioritizes recovery of processes and the supporting system.

    ii. *Disaster recovery plan* - a set of human, physical, technical, and procedural resources to return to a normal level of operation, within a defined time and cost, when an activity is interrupted by an emergency or disaster.

    iii. *Recovery time objective* - the amount of time allowed for the recovery of a business function or resource to a normal level after a disaster or disruption occurs.

    iv. *Recovery point objective* - determined based on the acceptable data loss in the case of disruption of operations.

# References

a.  Reference A: ASIS Backup and Recovery Policy

# Policy

## Business Risk Assessment and Business Impact Analysis

a.  Each Program Manager is required to assist the organization Vice President in developing a business risk assessment and business impact analysis for area of responsibility.

a. The business risk assessment must identify and define the criticality of key business systems and the repositories that contain the relevant and necessary data for the key business system.

a. The business risk assessment must define and document the Disaster Recovery Plan (DRP) for their area of responsibility. The DRP shall include:

    1.  Key business processes.

    1.  Applicable risk to availability.

    1.  Prioritization of recovery.

    1.  Recovery Time Objectives (RTOs).

    1.  Recovery Point Objectives (RPOs).

## Disaster Recovery Plan

a.  The organization must have a documented DRP to provide guidance when hardware, software, or networks become critically dysfunctional or cease to function (short and long term outages).

a. The DRP must include an explanation of the magnitude of information or system unavailability in the event of an outage and the process that would be implemented to continue business operations during the outage. Where feasible, the DRP must consider the use of alternative, off-site computer operations (cold, warm, hot sites).

a. The plan must be reviewed against the organization's strategy, objectives, culture, and ethics, as well as policy, legal, statutory and regulatory requirements.

a. The DRP must include:

      1.  An emergency mode operations plan for continuing operations in the event of temporary hardware, software, or network outages.

      1.  A recovery plan for returning business functions and services to normal on-site operations.

      1.  Procedures for periodic testing, review, and revisions of the DRP for all affected business systems, as a group and/or individually.

## Data Backup and Restoration Plans

a.  The ASIS Backup and Recovery Policy provides policy and guidance for backup and recovery operation (Reference 3A)

a. A backup restoration test is performed monthly during the xxxx (waitingforDuane)
    
## Risk Assessment

The following table reflects hazard probability assumptions for the Business Continuity Plan:

![Table 1](/Users/iassllc/iass/img/bc-dr_risk1.png)
![Table 1](/Users/iassllc/iass/img/bc-dr_risk2.png)

## Critical Business Function 

a. The critical business function of ASIS is to maintain services to customers as defined in the service-level standard in the WBAT Software and Related Services Agreement (excerpt in Table 2). Software development, while integral to operations, is not a critical business function.

a. A risk assessment associated with the critical business function is listed in  Table 1.

## Maintain Service-Level Standard

a. ASIS’s capability to achieve its critical business function relies on the AWS Infrastructure as a Service (IaaS) and Zendesk. ASIS will make all reasonable efforts to ensure all ASIS-maintained sites support at least 99.5% uptime, which does not include scheduled downtime for maintenance as coordinated with the customer.

a. The ASIS Support Team’s primary responsibilities are defined in Table 2 "Expected Actions".

![Table 2](/Users/iassllc/iass/img/bc-dr_sla.png)

a. The ASIS service-level standard can be impacted by a disruption in AWS and Subversion. If this type of disruption does occur, the ASIS System Network Manager shall be notified immediately, and he/she will execute the Information System Contingency Plan. ASIS customers are notified of service disruptions via a broadcast email. 

## Alternate Communications

a. *Between ASIS Team Members*

The ASIS Team uses a variety of redundant tools to support internal communication. These tools include Slack and Podio. The ASIS Team maintains, in Alfresco, the Aviation Safety Contact List, which includes postal addresses, email addresses, and phone numbers. In the event that one of these tools has a disruption in service, other tools can be used during the interruption. In the case of an interruption, the ASIS System Network Manager shall be notified immediately, and he/she will notify the ASIS Team and indicate what tool should be used to support internal communication. Once the issues have been resolved (by a third party), the ASIS System Network Manager shall notify the ASIS Team that normal communication between team members has been resolved.

a. *Between Customers and ASIS Team Members*

The ASIS Team has multiple redundant tools to communicate with customers. Our primary tool is Zendesk. However, the team can use email, telephone, and Mail Chimp as an alternative in the case of an interruption. Redundant contact information for customers is accessible in Zendesk, Podio, and Mail Chimp. In the case of an interruption, the WBAT Program Manager shall be notified immediately, and he/she will notify the customers/ASIS Team and indicate what tool should be used to support customer/ASIS Team communication. Once the issues have been resolved (by a third party), the WBAT Program Manager shall notify all customers/ASIS Team that normal communication between customers/ASIS Team has been resolved.

## Order of Succession and Delegations of Authority 

a. The ASIS Team maintains, in Alfresco, *Aviation Safety Org-Corporate*, an organizational chart that includes all employees, their supervisor, and, if applicable, who they may supervise. In the event that an employee becomes unavailable, their roles and responsibilities shall be delegated to their supervisor. In the event that the Vice President becomes unavailable, his/her roles and responsibilities shall be delegated to UTRS’s Chief Operating Officer.

a. The *Aviation Safety Team Contact List* is maintained in Alfresco.
