name: ASIS Password-Passphrase Protection Policy
acronym: Password-Passphrase
satisfies:
  TSC:
    - CC6.1
majorRevisions:
  - date: 31 May 2022
    comment: Revision 1.1
---
\pagebreak

|**Change / Revision Record**|
|    :----:   |

This record shall be maintained throughout the life of the document. Each published update shall be recorded. Revisions are a complete reissue of the entire document. 

+--------------+--------------+---------------------------------+--------------------+
| **Revision** |   **Date**   | **Change/Revision Description** | **Pages Affected** |
+:============:+:============:+:================================+:==================:+
|       1.0    | 01 Aug 2022  | Initial Document                | All                |
+--------------+--------------+---------------------------------+--------------------+
|       1.1    | 30 Jun 2021  | Account Mngt Responsibilities   | All                |
+--------------+--------------+---------------------------------+--------------------+
|       1.1    | 31 May 2022  | Periodic Review - No Changes    | All                |
+--------------+--------------+---------------------------------+--------------------+
|              |              |                                 |                    |
+--------------+--------------+---------------------------------+--------------------+
|              |              |                                 |                    |
+--------------+--------------+---------------------------------+--------------------+

\pagebreak

**Appendices**

Appendix A: Passphrase Construction Guidelines

Appendix B: Multifactor Authentication

Appendix C: Password Manager FAQ

# Overview

Passwords/passphrases are an important aspect of computer security. Initially, the best strategy was thought to be the use of passwords—a short string of characters complicated by the addition and substitution of UPPERCASE/lowercase letters, numbers, and special characters (for example, /\#\$\%\__\$\-). However, over time, cybersecurity professionals have radically shifted to recommend using a lengthier passphrase, which consists of multiple contiguous standard dictionary words (formerly a heinous crime), For the purposes of this policy document, passphrase, which is the currently recommended security protocol, will be understood to refer to both password as well as passphrase unless explicitly stated.

As a member of the Aviation Safety Information System (ASIS) Team, you should be ever vigilant against unauthorized access and/or exploitation of ASIS resources via your passphrase, ensuring you have not chosen a “weak” passphrase. All staff, including contractors and vendors with access to Aviation Safety Division systems, are responsible for taking the appropriate steps, as outlined in this policy document, to select and secure their passphrases. 

# Purpose

The purpose of this passphrase protection policy is to establish a standard for the creation of strong passphrases and the protection of those passphrases. This policy is based on the recommendations published in NIST SP 800-63B, Digital Identity Guidelines [(Section 5, Authenticator and Verifier Requirements)](https://pages.nist.gov/800-63-3/sp800-63b.html#sec5)>.

# Scope

This policy applies to all employees, contractors, and any other personnel (hereinafter "*users*") who have or are responsible for an account (or any form of access that supports or requires a passphrase) on any ASIS or any external device or system that stores any non-public Aviation Safety Division information.  

\pagebreak

# Policy

**Passphrase Creation**

a. All user and system-level passphrases must conform to the  established *Passphrase Construction Guidelines* found in Appendix A.

a. Users must establish a separate, unique passphrase for each of their work-related accounts. Users may not duplicate any work-related passphrases for their own, personal accounts.

a. User accounts that have system-level privileges granted through group memberships or programs such as sudo[^1]  must have a unique passphrase from all other accounts held by that user to access system-level privileges. In addition, it is highly recommended that some form of multi-factor authentication (MFA) is used for any privileged accounts, as well as your personal accounts. For more information on MFA, see Appendix A.

[^1]: The sudo command, which is used in Unix-based computer operating systems, permits a user to temporarily run programs with elevated security privileges, by default the root user.
 
**Passphrase Change**

Passphrases should be changed only when there is reason to believe a passphrase has been compromised.
Passphrase cracking or guessing may be performed on a periodic or random basis. If a passphrase is guessed or cracked during one of these scans, the user must change it to be in compliance with the Password/Passphrase Construction Guidelines.

**Passphrase Protection**

a. Passphrases must not be shared with anyone, including IT personnel[^2], supervisors and coworkers. All passphrases are to be treated as Sensitive, Confidential Aviation Safety Division information. 

a. Passphrases must not be inserted into email messages, or other forms of unencrypted electronic communication, nor revealed over the phone to anyone.

a. Passphrases may be stored only in a “password manager.”[^3] 

a. Be aware of the risks when using the “Remember Passphrase” feature of applications (for example, web browsers).
Any user suspecting that his/her passphrase may have been compromised must report the incident via an email to the Cybersecurity Team (<cybersecurity@utrs.com>) and change all passphrases.

[^2]: IT personnel, such as system administrators, will never ask for your passphrase or other secret credentials. Legitimate companies and organizations—banks, retailers, the IRS, Microsoft, etc.—will never call, email, or “pop-up” on your device and ask for your login credentials or ask you to log in to verify your credentials.

[^3]: Developers still call their products “password” managers. Some, such as BitWarden and 1Password, can generate “passphrases” with random words strung together separated by a special character. Others, like Dashlane and LastPass, only generate complex traditional passwords (AKA “gibberish”).  


**Application Development**

Application developers must ensure that their programs contain the following security precautions:

  + Applications must support authentication of individual users, not groups.

  + Applications must not store passphrases in clear text or in any easily reversible form.

  + Applications must not transmit passphrases in clear text over the network.

  + Applications must provide for some sort of role management, such that one user can take over the functions of another without having to know the other’s passphrase.

# Compliance

**Compliance Verification**

The Cybersecurity Team will verify compliance to this policy through various methods, including but not limited to, business tool reports, internal and external audits, and feedback to the policy owner. 

**Exceptions**

Any exception to the policy must be approved by the Cybersecurity Manager in advance. Please request approval via email, including the following in your email:

  + Who is requesting the exception

  + What is the change to the policy guidelines

  + Why the policy guidelines cannot be applied (i.e., justification)

  + Any mitigating/compensating actions

  + Any other relevant information

\pagebreak

# Appendix A: Passphrase Construction Guidelines

a. Strong passwords are long, and the more characters you have, then the stronger the password. The minimum allowable length of a password is eight characters—more is better and is usually the case when using a passphrase. 

a. As previously stated, the recommended best security practice is to use a passphrase rather than the traditional password. Examples include “Ilikeicecream” or “block-curious-sunny-leaves.” Passphrases are both easy to remember and type yet meet the strength requirements. Passphrases can be unique to an account by adding characters at the end to specify the account. For example:

  + Ilikeicecream.bank – To access your bank account.
  
  + Ilikeicecream.amazon – To access your Amazon account.

a. For accounts that require different special characters (such as a “dash” vs. a “dot”), just use the allowed character.

a. For accounts that require a number, add a number (or numbers) of your choice. 

a. Poor, or weak, passwords/passphrases have the following characteristics: 

  + Contain less than eight characters.

  + Contain personal information such as birthdates, addresses, phone numbers, or names of family members, pets, friends, and fantasy characters.

  + Is readily available to hackers in a rainbow table[^4] with clear text equivalent to a given hash such as those that:

    + Contain character patterns, such as aaabbb, qwerty, zyxwvuts, or 123321.
  
    + Are some version of “Welcome123,” “Password123,” or “Changeme123”.
  
    + Come up in a “this password/passphrase is used a lot” dialog. 

[^4]: A rainbow table is a pre-computed table storing the output of cryptographic hash functions and is often used for cracking password hashes. A hash is the encrypted cypher text version of a plain text password, and hashes are static. For example, the plain-text password “qwerty” will always create the cypher text contained within the following quotation marks: “`65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5`”. The rainbow table stores both the plain and cypher text, making password cracking for common passwords ridiculously easy.

a.  Consider testing your password/passphrase. There are several tools that can be found using a search, but one useful test site is <https://howsecureismypassword.net/>.

Following are sample passwords/passphrases and the estimated time to crack: 

  + qwerty/123321/aaabbb – Instantly

  + zyxwvuts – 5 seconds

  + Welcome123 – 8 months (better)

  + Ilikeicecream – 16 thousand years

  + Ilikeicecream.bank – 2 quadrillion years

\pagebreak

# Appendix B:  Multifactor Authentication (MFA)

a. Authentication takes place when someone tries to log in to a computer resource (such as a network, device, or application). The resource requires the user to supply the identity by which the user is known to the resource, along with evidence of the authenticity of the user‘s claim to that identity. Simple authentication requires only one such piece of evidence (i.e., factor), typically a password. For additional security, the resource may require more than one factor—MFA[^5].

[^5]: MFA includes Two Factor Authentication (2FA). 2FA refers to only two factors—such as passphrase and OTP. MFA is often used when referring to three or more factors used, and when only two factors are used then 2FA is specified. For simplicity, MFA herein refers to two or more factors.

a. The use of multiple authentication factors to prove one’s identity is based on the premise that an unauthorized actor is unlikely to be able to supply the factors required for access. The authentication factors of a multi-factor authentication scheme may include:

    i. Something the user has physical possession of, such as a security token (USB stick), a bank card, or key.

    i. Something the user knows, such as a password or PIN.

    i. Something unique to the user such as a physical characteristic of the user (bio-metrics), including a fingerprint, eye iris, face, or voice.

    i. Somewhere the user is that indicates connection to a specific computing network or use of a GPS signal to identify the location.

a. A good example of two-factor authentication is the withdrawing of money from an ATM; only the correct combination of a bank card (something the user possesses) and a PIN (something the user knows) allows the transaction to be carried out. Other MFA examples include supplementing a user-controlled password with a one-time password (OTP), or a code generated or received by an authenticator (for example, a security token or smartphone) that only the user possesses.

a. A third-party authenticator app enables multi-factor authentication in a different way, usually by showing a randomly generated and constantly refreshing code which the user can use, rather than sending an SMS or using another method. A big benefit of these apps is that they usually continue to work even without an Internet connection.

**Third-Party Authenticators**

Following are some recommended third-party authenticators:

+-------------------------+----------------------------------------------------------+-------------+
|    Authenticator        |         Website                                          |    Logo     |
+:========================+:=========================================================+:===========:+
| Authy                   | www.authy.com                                            |             |
+-------------------------+----------------------------------------------------------+-------------+
|                         |                                                          |             |
+-------------------------+----------------------------------------------------------+-------------+
| Google Authenticator    | www.googleauthenticator.net/                             |             |
+-------------------------+----------------------------------------------------------+-------------+
|                         |                                                          |             |
+-------------------------+----------------------------------------------------------+-------------+
| Microsoft Authenticator | www.microsoft.com/en-us/security/mobile-authenticator-app |          |
+-------------------------+----------------------------------------------------------+-------------+

\pagebreak

# Appendix C: Password Manager FAQs

**What is a password manager?**

A password manager[^6] is an application that remembers passwords, autofills login information, and generates complex passwords for login security. Many password managers also include different features to help increase cybersecurity, such as 2FA, password auditing, password sharing, and dark web monitoring.

[^6]: The applications are still called *"password managers"* so that term is used in this appendix

**How does a password manager work?**

A password manager records the username and password you use when you first log in to a website or service. Then the next time you visit the website, the password manager will autofill forms with your saved password login information. For those websites and services that do not allow automatic filling, a password manager lets you copy the password to paste into the password field.

Stuck picking a good password? Password managers can generate a strong password and ensure it is not reused across multiple services. A password manager should sync across all devices and browsers, so passwords and login information—including credit-card and shipping information—are available anywhere through the desktop app, mobile app and browser, or a browser extension. Some password managers provide secure storage, enabling storage of other items, such as documents like an electronic copy of your passport or will.

**Following are some recommended password managers:**

*NOTE: Features, Benefits and Pricing subject to change - current as of March 2023*

+------------------+--------------+-------------------+--------------------------------------+
| Password Manager | Free Version |  Paid Version     |         Notes                        |
+:=================+:=============+:==================+:=====================================+
| BitWarden        | Yes.         | $10/year adds     | Bitwarden provides free what other   |
|                  | Syncs across | storage, unlimited| password managers charge             |
|                  | computers[^7]| shares,  and hardware| Offers $40/year family plan and is|
|                  | mobile       | key MFA           | SOC 2 and HIPAA compliant. Password  |
|                  | devices[^8]  |                   | generator has a fully customizeable  |
|                  | Supports     |                   | passphrase setting. See the pricing  |
|                  | unlimited    |                   | and plan comparison at               |
|                  | logins[^9]   |                   | <https://bitwarden.com/pricing>      |
|                  |              |                   | No charge for mobile app.            |
+------------------+--------------+-------------------+--------------------------------------+

+------------------+--------------+-------------------+--------------------------------------+
| Password Manager | Free Version |    Paid Version   |        Notes                         |
+:=================+:=============+:==================+:=====================================+
| Dashlane         | Yes. Limited | $33/year Advanced | Offers $89.98/year friends and family|
|                  | to a single  | plan adds         | plan allowing up to 10 users per     | 
|                  | device       | unlimited devices | account. All plans provide MFA and   |
|                  |              | $59.99/year       | security alerts. Does not generate   |
|                  |              | Premium plan      | “passphrases”                        |
|                  |              |                   | <https://dashlane.com/pricing>       |
+------------------+--------------+-------------------+--------------------------------------+
|                  |              |                   |                                      |
+------------------+--------------+-------------------+--------------------------------------+
| 1Password        | No. Offers   | $35.88/year single| Offers $59.88/year family plan for up|
|                  | 14-day free  | user plan. Mobile | 5 users. No difference in features   |
|                  | trial for    | apps available.   | Both plans include MFA and unlimited |
|                  | either plan  |                   | logins. Password generator with a    |
|                  |              |                   | "Memorable Password" to create a     |
|                  |              |                   | pass phrase and a PIN creator as well|
|                  |              |                   | <https://1password.com/signup>       |
+------------------+--------------+-------------------+--------------------------------------+

[^7]: "Computers” includes desktops/laptops running Windows, macOS, ChromeOS, or Linux
[^8]: “Mobile devices” include Apple iOS, and Android smartphones, tablets, and watches
[^9]: “Logins” refers to the number of sites/accounts/passwords allowed




