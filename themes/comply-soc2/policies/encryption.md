name: ASIS Encryption Policy
acronym: Encryption
satisfies:
  TSC:
    - CC6.7
    - CC9.9
    - PI1.1
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

The purpose of this policy is to provide guidance to UTRS Aviation Safety Technology Division (organization) that limits the use of encryption to those algorithms that have received substantial public review and have been proven to work effectively. Additionally, this policy provides direction to ensure that Federal regulations are followed, and legal authority is granted for the dissemination and use of encryption technologies outside of the United States.

# Scope

This policy:

a. Defines organizational requirements for the use of cryptographic controls, as well as the requirements for cryptographic keys, in order to protect the confidentiality, integrity, authenticity and nonrepudiation of information.

a. Applies to all:

  i. Systems, equipment, facilities and information within the scope of the organization’s information security program.

  i. Employees, contractors, part-time and temporary workers, service providers, and those employed by others to perform work on behalf of the organization (hereinafter "*users*") having to do with cryptographic systems, algorithms, or keying material are subject to this policy and must comply with it.

# Background

a. This policy defines the high level objectives and implementation instructions for the organization’s use of cryptographic algorithms and keys. It is vital that the organization adopt a standard approach to cryptographic controls across all work centers in order to ensure end-to-end security, while also promoting interoperability. This document defines the specific algorithms approved for use, requirements for key management and protection, and requirements for using cryptography in cloud environments.

# Policy

**Algorithm Requirements**

a. The organization must protect individual systems or information by means of cryptographic controls as defined in Tables 3 and 4: 


+---------------------+-------------------+----------------+--------------+
| **Name of System/** | **Cryptographic** | **Encryption** | **Key Size** |
| **Type of**         | **Tool**          | **Algorithm**  |              |
| **Information**     |                   |                |              |
+=====================+===================+================+==============+
| Public Key          |  NSA CNSA 1.0     | AES-256        | 256-bit key  |
| Infrastructure for  |                   |                |              |
| Authentication      |                   |                |              |
+---------------------+-------------------+----------------+--------------+
|                     |                   |                |              |
+---------------------+-------------------+----------------+--------------+
| Data Encryption     |  NSA CNSA v1      | AES-256        | 256-bit key  |
| Keys                |                   |                |              |
+---------------------+-------------------+----------------+--------------+
|                     |                   |                |              |
+---------------------+-------------------+----------------+--------------+
| Virtual Private     |  OpenVPN          | AES-256        | 256-bit key  |
| Network (VPN)       |  IKE2/IPSec       |                |              |
| keys                |  WireGuard        |                |              |
+---------------------+-------------------+----------------+--------------+
|                     |                   |                |              |
+---------------------+-------------------+----------------+--------------+
| Website TLS         |  X.509 CERT       | AES-256        | 256-bit key  |
| Certificate         |                   |                |              | 
+---------------------+-------------------+----------------+--------------+

Table 3: Cryptographic Controls Overview

&nbsp;

\pagebreak
|                           Algorithm                           |                                      Function                                      |  Spec     |                          Parameters                          |
|:--------------------------------------------------------------|:-----------------------------------------------------------------------------------|:--------------------|:-------------------------------------------------------------|
| Advanced <br>Encryption <br>Standard (AES)                    | Symmetric block cipher <br>used for information <br>protection                     | FIPS Pub 197 [^1]       | Use 256-bit keys<br>to protect up to <br>TOP SECRET          |
|   |   |   |   |
| Elliptic Curve <br>Diffie-Hellman <br>(ECDH) Key <br>Exchange | Asymmetric algorithm <br>used for key establishment                                | NIST SP 800-<br>56A [^2] | Use Curve P-384 <br>to protect up to <br>TOP SECRET          |
|   |   |   |   |
| Elliptic Curve <br>Digital Signature <br>Algorithm (ECDSA)    | Asymmetric algorithm <br>used for digital signatures                               | FIPS Pub <br>186-4 [^3] | Use Curve P-384 <br>to protect up to <br>TOP SECRET.         |
|   |   |   |   |
| Secure Hash <br>Algorithm (SHA)                               | Algorithm used for <br>computing a condensed <br>representation of <br>information | FIPS Pub <br>180-4 [^4] | Use SHA-384\* <br>to protect up to <br>TOP SECRET.             |
|   |   |   |   |
| Diffie-Hellman <br>(DH) Key <br>Exchange                      | Asymmetric algorithm <br>used for key establishment                                | IETF RFC <br>3526 [^5]  | Minimum 3072-bit <br>modulus to protect <br>up to TOP SECRET |
|   |   |   |   |
| RSA                                                           | Asymmetric algorithm <br>used for key establishment                                | NIST SP 800-<br>56B [^6] | Minimum 3072-bit <br>modulus to protect <br>up to TOP SECRET |
|   |   |   |   |
| RSA                                                           | Asymmetric algorithm <br>used for digital signatures                               | FIPS PUB 186-<br>4 [^7] | Minimum 3072-bit<br>modulus to protect <br>up to TOP SECRET. |
Table 4: NSA Commercial National Security Algorithm Suite (CNSA) 1.0

\* ASIS adheres to the [NIST policy on hash functions](http://csrc.nist.gov/groups/ST/hash/policy.html)

[^1]: <https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.197.pdf>
[^2]: <https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-56Ar3.pdf>
[^3]: <https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.186-4.pdf>
[^4]: <https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.180-4.pdf>
[^5]: <https://datatracker.ietf.org/doc/html/rfc3526>
[^6]: <https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-56Br2.pdf>
[^7]: <https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.186-4.pdf>

b. Except where otherwise stated, keys must be managed by their owners.

c. Cryptographic keys must be generated and stored in a secure manner, and protected against loss, change or destruction by applying appropriate access control mechanisms to prevent unauthorized use and by backing up keys on a regular basis.

d. 3.4.2  Key generation must be seeded from an industry standard random number generator (RNG). For examples, see [NIST Annex C: Approved Random Number Generators for FIPS PUB 140-2](http://csrc.nist.gov/publications/fips/fips140-2/fips1402annexc.pdf).

    i. In the AWS virtual environment, ASIS uses the AWS Key Management Service to generate, rotate and store keys.

a. The use of organizationally-approved encryption must be governed in accordance with the laws of the country, region, or other regulating entity in which users perform their work. Encryption must not be used to violate any laws or regulations including import/export restrictions. The encryption used by the organization conforms to international standards and U.S. import/export requirements, and thus can be used across international boundaries for business purposes.

# Policy Compliance

a. Compliance Measurement: The ASIS Cybersecurity Manager will verify compliance to this policy through various methods, including but not limited to, business tool reports, internal and external audits, and feedback to the policy owner. 

a. Exceptions: Any exception to the policy must be approved by the Cybersecurity Manager in advance. 

a. Non-Compliance: Users found to have violated this policy may be subject to disciplinary action, up to and including termination of employment/contract. 




