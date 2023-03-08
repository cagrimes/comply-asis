name: ASIS Risk Assessment and Management Policy
acronym: Risk_Assessment
satisfies:
  TSC:
    - CC9.1
majorRevisions:
  - date: Mar 1, 2023
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

# Overview

Information security risk management takes into account vulnerabilities, threat sources, and security controls that are planned or in place.  These inputs are used to determine the resulting level of risk posed to information, systems, processes, and individuals that support business functions.

While risk management and related assessment activities can take many forms (e.g., formal risk assessment, audits, security reviews, configuration analysis, vulnerability scanning and testing), all are aimed at the same goal - identifying and acting on risk to improve overall security posture.

Risk can never be completely eliminated, but steps can be taken to manage risk.

The risk management process is iterative and should be followed throughout a system’s or process’s life cycle.

# Purpose

a. The purpose of this policy is to define the methodology for the assessment and management of information security risks within the organization, and to define the acceptable level of risk as set by the organization’s leadership.

# Scope

a. Risk assessment and risk management are applied to the entire scope of the organization’s information security program, and to all assets which are used within the organization or which could have an impact on information security within it.

a. This policy applies to all employees of the organization who take part in risk assessment and risk management.

# Background

a. A key element of the organization’s information security program is a holistic and systematic approach to risk management. This policy defines the requirements and processes for the organization to identify information security risks. The process consists of four parts: identification of the organization’s assets, as well as the threats and vulnerabilities that apply; assessment of the likelihood and consequence (risk) of the threats and vulnerabilities being realized, identification of management for each unacceptable risk, and evaluation of the residual risk after management.

# References

a. Reference A: ASIS Risk Assessment Report Template

a. Reference B: ASIS Risk Assessment and Mitigation Template

# Policy

a. *Risk Assessment*

    i. The risk assessment process includes the identification of threats and vulnerabilities having to do with organization assets.

    i. The first step in the risk assessment is to identify all assets within the scope of the information security program; in other words, all assets which may affect the confidentiality, integrity, and/or availability of information in the organization. Assets may include documents in paper or electronic form, applications, databases, information technology equipment, infrastructure, and external/outsourced services and processes. For each asset, an owner must be identified.

    i. The next step is to identify all threats and vulnerabilities associated with each asset. Threats and vulnerabilities must be listed in a risk assessment table. Each asset may be associated with multiple threats, and each threat may be associated with multiple vulnerabilities. A sample risk assessment table is provided as part of the Risk Assessment Report Template (reference (a)).

    i. For each risk, an owner must be identified. The risk owner and the asset owner may be the same individual.

    i. Once risk owners are identified, they must assess the potential:

        1. Impact for each combination of threats and vulnerabilities for an individual asset if such a risk materializes. 

        1. Likelihood of occurrence of such a risk (i.e. the probability that a threat will exploit the vulnerability of the respective asset).

        1. Criteria for determining Impact and likelihood are defined in Tables 4 and 5.
    
    i. The current risk level is calculated by multiplying the Impact score and the likelihood score. 


+---------------------+---------------------+------------------------------------------------------+ 
| **Risk Assessment** | **Risk Assessment** | **Description**                                      |  
| **Level**           | **Value**           |                                                      | 
+=====================+:===================:+======================================================+
| Low                 | 1 - 4               | Loss of confidentiality, integrity, or availability will not |
|                     |                     | affect the organization's cash flow, legal, or contractual |  
|                     |                     | obligations, or reputation.                          |
+---------------------+---------------------+------------------------------------------------------+ 
|                     |                     |                                                      |  
+---------------------+---------------------+------------------------------------------------------+ 
| Moderate            | 5 - 9               | Loss of confidentiality, integrity, or availability may incur |
|                     |                     | financial cost and has low or moderate impact on the |        
|                     |                     | organization's legal or contractual obligations and/or |      
|                     |                     | reputation.                                          |        
+---------------------+---------------------+------------------------------------------------------+ 
|                     |                     |                                                      |  
+---------------------+---------------------+------------------------------------------------------+ 
| High                | 10 - 14             | Loss of confidentiality, integrity, or availability will have |
|                     |                     | immediate and or/considerable impact on the organization's |
|                     |                     | cash flow, operations, legal and contractual obligations, | 
|                     |                     | and/or reputation.                                   |  
+---------------------+---------------------+------------------------------------------------------+ 
|                     |                     |                                                      |  
+---------------------+---------------------+------------------------------------------------------+ 
| Extreme             | 15 - 25             | Loss of confidentiality, integrity, or availability will have |
|                     |                     | immediate and extremely grave impact on the organization's |
|                     |                     | cash flow, operations, legal and contractual obligations, and |
|                     |                     | reputation.                                          |
+---------------------+---------------------+------------------------------------------------------+ 
**Table 3: Description of Risk Assessment Levels and Value Criteria Matrix**
\pagebreak

+-----------------+--------------------------------------------------------------------------------+
|                 |  &nbsp;   &nbsp;  &nbsp;   &nbsp;   &nbsp;   &nbsp;  **Likelihood**            |
+:===============:+================================================================================+
|     1           | Theoretically possible. May only occur under                                 |
|     Improbable  | exceptional circumstances.      |
+-----------------+--------------------------------------------------------------------------------+
|                 |                                                                                |
+-----------------+--------------------------------------------------------------------------------+
|     2           | Theoretically possible. May only occur under exceptional                       |
|     Unlikely    | circumstances.       |
+-----------------+--------------------------------------------------------------------------------+
|                 |                                                                                |
+-----------------+--------------------------------------------------------------------------------+
|     3           | Reasonable to expect the event could occur at some time,                       |
|     Possible    | under normal business conditions. |
+-----------------+--------------------------------------------------------------------------------+
|                 |                                                                                |
+-----------------+--------------------------------------------------------------------------------+
|     4           | Likely to expect the event to occur at some time,                              |
|     Likely      | under normal business conditions. |
+-----------------+--------------------------------------------------------------------------------+
|                 |                                                                                |
+:---------------:+--------------------------------------------------------------------------------+
|     5           | Virtual certainty the event will occur at some time,                          |
|     Expected    | under normal business conditions |
+-----------------+--------------------------------------------------------------------------------+

**Table 4: Likelihood of Occurrence Matrix** 

&nbsp;  

+--------------------+--------------------------------------------------------------------------------+
|                    |  &nbsp;   &nbsp;  &nbsp;   &nbsp;   &nbsp;   &nbsp;   **Impact**               |
+:==================:+================================================================================+
|     1              | Little to no damage or service impact. No reputational |
|     Insignificant  | or financial impact                                                |
+--------------------+--------------------------------------------------------------------------------+
|                    |                                                                                |
+--------------------+--------------------------------------------------------------------------------+
|     2              | Localized or minimal damage or service impact. 
|     Minor          | Minor reputational and financial impact.                                   |
+--------------------+--------------------------------------------------------------------------------+
|                    |                                                                                |
+--------------------+--------------------------------------------------------------------------------+
|     3              | Noticeable damage or service impact. Harmful reputational 
|     Moderate       | and financial impact, but not enough to ruin the business.  |
+--------------------+--------------------------------------------------------------------------------+
|                    |                                                                                |
+--------------------+--------------------------------------------------------------------------------+
|     4              | Major damage or service impact. Extensive reputational 
|     Major          | and financial impact, but not enough to ruin the business.      |
+--------------------+--------------------------------------------------------------------------------+
|                    |                                                                                |
+--------------------+--------------------------------------------------------------------------------+
|     5              | Critical, long-term damage or service impact. Financial 
|     Catastrophic   | and reputational damage could be enough to ruin the business. |
+--------------------+--------------------------------------------------------------------------------+

**Table 5: Impact of Occurrence Matrix**
\pagebreak

+------------------+--------------------------------------+
|                  | **Criticality of Asset**             |
+:=================+:=====================================+
|     1            |                                      |
|     Major        | Significantly critical to operations |
+------------------+--------------------------------------+
|                  |                                      |
+------------------+--------------------------------------+
|     2            |                                      |
|     Moderate     | Critical to operations               |
+------------------+--------------------------------------+
|                  |                                      |
+------------------+--------------------------------------+
|     3            |                                      |
|     Minor        | Somewhat critical to operations      |
+------------------+--------------------------------------+
|                  |                                      |
+------------------+--------------------------------------+
|     4            |                                      |
|     Insignificant| Not critical to operations           |
+------------------+--------------------------------------+

**Table 6: Criticality of Assets Matrix**

---   
b. *Risk Acceptance Criteria*

    i. Risk values of Low or Moderate (<7) are considered to be acceptable risks.

    i. Risk values Moderate (>7) or above are considered to be unacceptable risks. Unacceptable risks must be managed.

c. *Risk management*

    i. The first step in managing risk is to:

        1. Develop a strategy for conducting the risk assessment which considers assumptions, constraints, priorities, dependencies, trade offs and resources that will be used
    
        1. Determine the risk tolerance, or the level of risk that is acceptable. 

    i. Access Risk

        1. Assessing risk starts with identifying and classifying assets within scope. Risk is assessed by determining the threats and vulnerabilities to these assets, identifying the potential impact of each vulnerability being exploited, and determining the likelihood of occurrence.  A list of potential threats and vulnerabilities needs to be developed, and may come from preexisting resources.

        Types of information security risk assessments include, but are not limited to:
    
        - Enterprise Risk Assessments – Assesses risks to core agency assets, operational processes, and functions;

        - Physical Infrastructure Assets and Systems Risk Assessments – Identifies and assesses vulnerabilities and risks to core physical infrastructure assets and systems;

        - Project Security Risk Assessments (New Risks) – Identifies and assesses new risks to existing components introduced by new technology or service offerings; and

        - Change Request Risk Assessments – Assesses risk of change to ensure security is not compromised by the proposed change.

    i. Respond to and Manage Risk

        1. Once risk has been assessed, determine and implement the appropriate course of action.  When managing risk, there are only 3 courses of action:

            a. Avoid -- Many risks are unavoidable but not all risks are necessary. Discontinue unnecessary activities and processes that generate avoidable risk

            a. Mitigate -- For unavoidable risks, select and implement security, financial and other controls, and employ monitoring and other activities to reduce the possibility of compromise or loss

            a. Transfer -- Make the risk someone else's problem, such as insurance, offsite storage, outsourcing, multiple suppliers, etc.

            a. Accept -- Unfortunately some risks, or residual risks, can't be avoided, mitigated or transferred and the organization must determine what is the acceptable amount of risk. Generally this is last option and only used when other options are either not possible or not cost effective.

        1. After a course of action is determined, the risk assessment may need to be re-accomplished and the Residual Risk determined. 

    i. Monitor Risk

    The effectiveness of the risk response and management measures must be monitored to verify that the controls put in place are implemented correctly and operating as intended. This must occur annually, at a minimum.  In addition, the entity must have a process to alert it of significant changes in the factors it uses to assess its risk (e.g., assets, threats, controls, regulations, policies, risk tolerance). These changes may indicate a new assessment is needed.

    i. For continuous improvement purposes, organization managers may also opt to treat other risks for organization assets, even if their risk score is deemed to be acceptable.

a. *Reporting*

    i. The results of risk assessment and risk management, and all subsequent reviews, shall be documented in a Risk Assessment Report.
