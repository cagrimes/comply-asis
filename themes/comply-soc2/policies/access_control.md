name: ASIS Access Control Policy
acronym: Access_Control
satisfies:
  TSC:
    - CC6.1
    - CC6.2
    - CC6.3
majorRevisions:
  - date: Mar 1, 2023
  - comment: Initial Document
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

The purpose of this policy is to establish the rules and processes for creating, maintaining and controlling the access of a digital identity to UTRS Aviation Safety Technology Division (organization) applications and resources for means of protecting their systems and information.

# Scope

This policy applies to all employees, contractors, consultants (hereinafter "*users*") of UTRS Aviation Safety Technology Division (organization) and others who may have access  all systems developed by, or on behalf of the organization, that require authenticated access. This includes all development, test, quality assurance, production . This policy must be made readily available to all whom it applies to.

# References

a. Reference A: ASIS Authentication Management Policy

b. Reference B: ASIS Audit and Log Management Policy

c. Reference C: NIST SP 800-63, *Digital Identity Guidelines*

# Policy

Account management and access control includes the process of requesting, creating, issuing, modifying and disabling user accounts; enabling and disabling access to resources and applications; establishing conditions for group and role membership; tracking accounts and their respective access authorizations; and managing these functions. 

## Account Management/Access Control Rules

Account management and access control require that the roles of Information Owner, Account Manager and Account Administrator are defined and assigned for each resource and application.  A listing of authorized users in these roles must be documented and maintained.  The associated tasks and responsibilities for each role are described below.  Each role may belong to one or more individuals depending on the application.  In some cases, a single individual or group may be assigned more than one of these roles. 

a. **Information Owner:** Information owners are management level personnel who:

    + Delegate account managers to ensure the appropriate level of information access is provided.  Delegation can be to individual users, and groups.

    + Define roles and groups, as well as the corresponding level of access to resources for that role or group.

    + Determining who should have access.
    
    + Determine the identity assurance level for the application and/or data. 

    + Review that accounts and access controls are commensurate with overall business function and that the associated rights have been properly assigned, at a minimum, annually. 

    + Require business units with access to protected resources to notify account managers when accounts are no longer required, such as when users are terminated or transferred and when individual access requirements change.

a. **Account Manager:** Account managers maintain accounts.  They are the delegated custodians of protected data.  Account managers:

    + Maintain appropriate levels of communication with the information owners to determine the level or degree of access granted to an individual.

    + Determine the technical specifications needed to set access privileges 

    + Delegate account management functions to account administrators

    + Create and maintain procedures used in managing accounts

    + Perform all account administrator duties as required

a.  **Account Administrators:**  Account administrators are a subset of the account manager role.  They do not determine procedures. System rights and/or responsibilities are assigned to them by the account manager.  All account administrator responsibilities are contained within the role of account manager should an account administrator not exist. For account management, the administrator may:

    - Maintain any necessary information supporting account administration activities, including account management requests and approvals
    
    - Enroll new users

    - Enable/disable user accounts

    - Create and maintain user roles and groups

    - Assign rights and privileges to a user or group

    - Collect data to periodically review user accounts and their associated rights

## Account Types

a. Account types include:  Individual, Privileged, Service, Shared, Default Non-Privileged (e.g., Guest, Anonymous), Emergency, and Temporary.  All account types must adhere to all applicable organization policies.

a. Role-based Access Control is used to determine Individual and Privileged account access and privileges. 

a.  **Individual Accounts:** An individual account is a unique account issued to a single user.  The account enables the user to authenticate to systems with a digital identity. After a user is authenticated, the user is authorized or denied access to the system based on the permissions that are assigned directly or indirectly to that user.

a.  **Privileged Accounts:** A privileged account is an account which provides increased access and requires additional authorization. Examples include a network, system or security administrator account.  A privileged account may only be provided to users who require it to accomplish their job duties. The use of privileged accounts must be compliant with the principle of least privilege. Access will be restricted to only those programs or processes specifically needed to perform authorized business tasks and no more. 

a. **Note**: Privileged account access requires Multi-factor Authentication.

a. There are two privileged account types - Administrative Accounts and Default Accounts.

    i.  **Administrative Accounts:** Accounts given to a user that allow the right to modify the operating system or platform settings, or those which allow modifications to other accounts.  These accounts must:

        - Be at an Identity Assurance Level commensurate with the protected resources to which they access

        - Not have user-IDs that give any indication of the user’s privilege level, e.g., supervisor, manager, administrator, or any flavor thereof. 

        - Be internally identifiable as an administrative account per a standardized naming convention.

        - Be revoked in accordance with organizational requirements

    i.  **Default Privileged Accounts:** Default privileged accounts (e.g., root, Administrator) are provided with a particular system and cannot be removed without affecting the functionality of the system. Default privileged accounts must:

        - Be disabled if not in use or renamed if technically possible

        - Only be used for the initial system installation or as a service account.  When technically feasible, alerts must be issued to the appropriate personnel when there is an attempt to log-in with the account for access

        - Not use the initial default password provided with the system

        - Have password known or accessible by at least two individuals within the organization, if password is known by anyone. As such, restrictions for shared accounts, outlined below, must be followed.  

a.  **Service Accounts:** A service account is not intended to be given to a user but is provided for a process.  It is to be used in situations such as to allow a system to run jobs and services independent of user interaction.  Service accounts must:

    i. Have an assigned owner responsible for documenting and managing the account

    i. be restricted to specific devices and hours when possible

    i. never be used interactively by a user for any purpose other than the initial system installation or if absolutely required for system troubleshooting or maintenance. Wherever technically feasible, administrators should leverage “switch user” (SU) or “run as” for executing processes as service accounts

    i. never be for any purpose beyond their initial scope

    i. be internally identifiable as a service account per a standardized naming convention, where possible

    i. not allow its password to be reset according to any standardized and/or forced schedule.  However, should an employee with knowledge of said password leave the organization, that password must be changed immediately

    i. have password known or accessible by at least two individuals within the organization, if password is known by anyone. As such, restrictions for shared accounts, outlined below, must be followed

a.  **Shared Accounts:**  A shared account is any account where more than one person knows the password and/or uses the same authentication token. Use of shared accounts is only allowed when there is a system or business limitation preventing use of individual accounts.  These cases must be documented by the information owner and reviewed by the Information Security Officer (ISO)/designated security representative. Additional compensatory controls must be implemented to confirm accountability is maintained.  Shared accounts must:

    i.  have the tokens (e.g. password) reset when any of its users no longer needs access, or otherwise in accordance with applicable policies

    i.  be restricted to specific devices and hours when possible

    i.  wherever technically feasible, have its users log on to the system with their individual accounts and “switch user” (SU) or “run as” the shared account

    i.  have strictly limited permissions and access only to the system(s) required

a.  **Default Non-Privileged Accounts:** The default non-privileged account (guest or anonymous user) is an account for people who do not have individual accounts.  An example of where this might be necessary is on a public Wi-Fi network.  <!--- This account type must: ---> Default Non-Privileged Accounts are not used at this time.

    <!--- i.  Be disabled until necessary --->

    <!--- i.  Have limited rights and permissions --->

    <!--- i.  Only be allowed after a risk assessment ---> 

    <!--- i.  Have compensatory controls that include restricted network access --->

    <!--- i.  Be assigned a password that the user cannot change but that is changed monthly, at a minimum, by an administrator --->

    <!--- i.  not allow the account to be assigned for delegation by another account --->

    <!--- i.  have a log maintained of users to whom the password is given --->

a.  **Emergency Accounts:**  Emergency Accounts are intended for short-term use and include restrictions on creation, point of origin, and usage (i.e., time of day, day of week). The Systems Network Manager may establish emergency accounts in response to crisis situations and with the need for rapid account activation. Therefore, emergency account activation may bypass normal account authorization processes.  Emergency accounts must be automatically disabled after 24 hours.

a.  **Temporary Accounts:** Temporary accounts are intended for short-term use and may include restrictions on creation, point of origin, usage (i.e., time of day, day of week), and must have start and stop dates. These accounts must have strictly limited permissions and access only to the systems required.

## Account Management and Access Control Functions

a. Automated mechanisms must be employed to monitor the use and management of accounts.  These mechanisms must allow for usage monitoring and notification of atypical account usage. Thresholds for alerting should be set based on the criticality of the system or assurance level of the account. 

a. Staff in the appropriate account management/access control role(s) must be notified when account management activities occur, such as, accounts are no longer required, users are terminated or transferred, or system usage or need-to-know changes.  This should be automated where technically possible.  

a. Automated access control policies that enforce approved authorizations for information and system resources must be in place within systems.  These access control polices could be identity, role or attribute based.  

a. By default, no one has access unless authorized; the following must be adhered to:

    - ***Creating New Accounts:*** To create an account, there must be a valid access authorization based on an approved business justification and a request must be made to create the account.  

    - ***Modifying Account Attributes (i.e., changing users’ names, demographics, etc.):*** Modifications must only be made by the authenticated user or an authorized account manager.

    - ***Enabling Access:*** Access is granted, based on the principle of least privilege, with a valid access authorization.

    - ***Modifying Access:*** Access modifications must include a valid authorization.  When there is a position change (not including separation), access is immediately reviewed and removed when no longer needed.  

a.  **Disabling Accounts/Removing Access:**

    i. **Event/Risk Based (Administrative Disable):** When an account poses or has the potential to pose a significant risk, either the account is disabled and/or access attributes are removed upon discovery of the risk. Close coordination between the information owners, account managers/administrators, legal, incident response stakeholders and human resource managers is essential in order for timely execution of removing or restricting user access.  Significant risk may include a disgruntled employee, or one who has been identified by as a potential risk. Users posing a significant risk to organizations include individuals for whom reliable evidence or intelligence indicates either the intention to use authorized access to information systems to cause harm or through whom adversaries will cause harm. Harm includes potential adverse impacts to organizational operations and assets, individuals, other organizations. An account identifier is required to identify these accounts and prevent inappropriate re-enabling of the account/access.  Re-enabling the account requires explicit approval of the organization, Self-service mechanisms may not be used to re-enable the account. 

    i. **De-provisioning Upon Separation:** All user accounts (including privileged) must be disabled immediately upon separation. In addition, credentials must be revoked in accordance with organizational requirements, and access attributes must be removed.  Self-service mechanisms may not be used to re-enable the account.

    i. **Inactivity Disable**: When an account is disabled due to inactivity, access attributes may remain unchanged if deemed appropriate by the information owner.  

a.  **Reviewing Accounts and Access:**

    i. Information owners must review all accounts on an annual basis (minimally) to determine if they are still needed. 

    i.  Access to privileged accounts must be reviewed every six months (minimally) to determine whether or not they are still needed. 

    i. Information owners must review account authorizations and/or user access assignments on a semi-annual basis (minimally) to determine if all access is still needed. 

    i. Accounts or records of the account must be archived after 5 years of inactivity or after specific audit purposes are met. 

a.  **Unlocking User Accounts:** In order for an administrator or user support agent to unlock an account for a user, the user must be vetted through pre-registered knowledge tokens as per the Authentication Tokens Standard.

a.  **Secure Log on Procedures:** Where technically feasible, access must be controlled by secure log-on procedures as follows:

    i. Must not display tokens (e.g., password, PIN) being entered. 

    i. May provide option for user to view clear text token

    i. Must display the following information on completion of a successful log-on:

        i. Date and time of the previous successful log-on

        i. Details of any unsuccessful log-on attempts since the last successful log-on

a.  **Session Inactivity Lock:** Sessions must be locked after a maximum inactivity period of 15 minutes.  Session inactivity locks are temporary actions taken when users stop work and move away from their immediate vicinity but do not want to log out because of the temporary nature of their absences.  Users must re-authenticate to unlock the session.

a.  **Connection Time-out:** Sessions must be automatically terminated after 18 hours or after “pre-defined” conditions such as targeted responses to certain types of incidents.

a.  **Logging/Auditing/Monitoring:** All account activity must be logged and audited in accordance with the Audit and Log Management Policy.  The ability to modify or delete audit records must be limited to a subset of privileged accounts. Any modification to access attributes must be recorded and traceable to a single individual. See Reference B. 

