# What is Cryptography?

Before starting to work with Cryptography, we firstly need an actual definition for what it means.
Cryptography describes the science of transferring sensitive information securely over unsafe communication channels, only allowing the intended recipients to read the actual data.
The term "Encryption" describes the act of transforming the plaintext into an unreadable version, whereas "Decryption" describes the act of converting the unreadable version into it's readable version again.

## Terms

- **Encryption**

  - As mentioned before, encryption describes process of transforming readable data, known as plaintext, into an unreadable form, referred to as ciphertext. It involves the use of algorithms and cryptographic keys to secure information, ensuring that only authorized parties with the corresponding decryption key can revert the ciphertext to its original, readable state.

- **Decryption**

  - As opposed to encryption, decryption describes the reverse process of encryption, involving the conversion of unreadable ciphertext back into its original and readable plaintext form. It requires the use of the appropriate decryption algorithm and the corresponding cryptographic key, ensuring that only authorized individuals can access and comprehend the originally encoded information.

- **Hashing:**
  Hashing is a one-way process of converting data into a fixed-size string of characters, known as a hash value. It is designed to be irreversible, making it suitable for tasks like password storage and data integrity verification, where the focus is on comparing hash values rather than retrieving the original data.

- **Cryptograpic vs Non-Cryptographic Hashing:**

  - Hashing algorithms are seperated into two categories: Cryptograpic and Non-Cryptograpic hashes.
  - Cryptographic hashing is used for ensuring data integrity and security. It transforms input data of any size into a fixed-size hash value using a mathematical algorithm, where the focus lies on making hash-collisions as improbable as possible.
  - Examples:
    - SHA256
    - (MD5)
  - Non-cryptographic hashing is used for various purposes such as hash tables, data indexing, and checksums. While it's generally faster, it's usually less collision-resistant than cryptographic hashing.
  - Examples:
    - City64
    - xxHash

## Usecases

- **Symmetric:**
  As symmetric encryption is way faster than asymmetric encryption, it is more suitable for encrypting larger blocks of data.
  As it also requires less computational resources, it may be preferred when it comes to embedded systems & IoT devices.
- **Asymmetric:**
  Asymmetric encryption is often used in the initial phase of communication to establish a secure channel.
  This is because asymmetric encryption involves a pair of keys (public and private), and only the recipient's private key can decrypt the data encrypted with their public key.
  Asymmetric encryption can be used to create digital signatures, providing a way to verify the authenticity and integrity of a message or data.
  The private key is used to sign the data, whereas the public key is used to verify the signature.
  Asymmetric encryption is widely used in Public-Key-Infrastructure.
  It is a hierarchical system for issuing, distributing and verifying digital certificates.
  The topic "PKI" in particular will be discussed later on.
  - DH-Key Exhange:
    The Diffie-Hellman key exchange describes a method which is often used to establish a shared secret between two parties securely.
    Both parties choose a parameter, which is then sent to the other party.
    Using the from the other party received parameter, a common shared secret can be used for symmetric encryption.
