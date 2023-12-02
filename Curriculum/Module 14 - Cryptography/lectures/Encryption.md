
## Index

- [Terms](#Terms)
- [Symmetric Cryptography](#symmetric-cryptography)
- [Asymmetric Cryptography](#Asymmetric-Cryptography)
- [Usecases](#Usecases)

## What is Kryptography?

Before starting to work with Kryptography, we firstly need an actual definition for what it means.
Kryptography describes the science of making information unreadable, and only allow the intended recipients to make the unreadable information readable again.
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

## Symmetric Cryptography

- For symmetric encryption, there exists one single key for encrypting & decrypting data. The key itself can be any arbitrary value.

For instance, let there be Person A (Bob) and Person B (Alice).
Bob wants to send an encrypted message to Alice.
Bob uses the shared key for encrypting the message, whereas Alice uses the same shared key for decrypting the message.
Everyone aware of the shared key can encrypt & decrypt sent messages.

For many block ciphers, an IV (initialization vector) needs to be provided aswell. There's a simple reason for that:
In several ciphers, blocks are depending on each other, meaning block n cannot be en- or decrypted without having block (n-1).
In order to provide a dependency for the very first block, an IV can be used.

### Stream Ciphers

A stream cipher describes an encryption/decryption algorithm which operates on individual bits or bytes of data, encrypting or decrypting them one at a time.
Unlike block ciphers, which process fixed-size blocks of data, stream ciphers generate a continuous stream of pseudorandom bytes.
This keystream is combined with the plaintext using a bitwise XOR operation to produce the ciphertext

- Examples:
    - RC4
    - ChaCha20
    - AES (CFB/CTR)

### Block Ciphers

A block cipher is another kind of algorithm, which encrypts data blockwise instead of one by one. In contrast to stream ciphers, they always operate on blocks of multiple bytes.
Depending on the exact cipher mode, the encrypted data can be either dependend or independent on the previous block. Several block ciphers also make the encrypted data depending on the plaintext,
indicating that data encrypted twice will not look like the same in it's encrypted form.

- Examples:
    - AES (ECB/CBC)
    - DES
    - 3DES
    - Blowfish

## Comparison - Stream Cipher vs Block Cipher

- **Stream Ciphers:**
  - More efficient & faster.
  - Easier to implement.
  - Allows parallel processing.
- **Block Ciphers:**
  - More secure.
  - Harder to derive key from encrypted data.

## Best Practice

- AES-256
- The longer the key, the better.
- IV should be independent of the key.
- Choose the right mode: (Depends on the usecase. CFB, CTF are secure & commonly used ones)

ECB counts as insecure, as visible in the following comparison (left=decrypted, middle=ecb, right=cbc).
As each block is encrypted independend of the position & plaintext, each similar datablock consisting of the same bytes results in the same encrypted counterpart when being encrypted, making the encryption pretty ineffective. 

<img src="/Curriculum/Module%2014%20-%20Cryptography/resources/images/Plain.png" alt="image" width="100" height="auto"/> <img src="/Curriculum/Module%2014%20-%20Cryptography/resources/images/ECB.png" alt="image" width="100" height="auto"/> <img src="/Curriculum/Module%2014%20-%20Cryptography/resources/images/Secure.png" alt="image" width="100" height="auto"/>

It is okay to use CBC for data encryption; However, it is discouraged to be used for larger amounts of data, as the encryption pattern starts repeating after a high number of blocks. 

## Asymmetric Cryptography

Asymmetric encryption, on the other hand, uses two seperate keys, respectively for encryption & decryption:
- The public key, used for encrypting messages and
- The private key, used for decrypting messages.
In contrast to symmetric encryption, the keypair cannot be chosen freely, as they need to be mathematically connected to each other.

For instance, let there be Person A (Bob) and Person B (Alice). Each of them has a public & private key.
The public key needs to be available for everyone who wants to encrypt messages.
The private key must be kept private, as it can be used to decrypt any messages encrypted with the respective public key.

Bob wants to send an encrypted message to Alice.
Firstly, Bob encrypts the message using Alice's public key for, which is then transmitted to Alice.
Then, Alice uses her private key for decrypting the message.

### How to generate a RSA keypair:

1. Generate two large random prime numbers (p, q).
It is important to ensure that those prime numbers are generated using a cryptographic random number generator with sufficient entropy,
as numbers generated by pseudo-random number generators are predictable, making the resulting keypair unsafe.
2. Calculate N = p * q.
3. Calculate Z = (p-1) * (q-1).
4. Choose e such that 1 < e < Φ(n), gcd(e, Φ(N)) = 1.
5. Calculate d such that e * d ≡ 1 (mod Φ(N)).
6. Public key: (e, N).
7. Private key: (d, N).

### Encryption & Decryption

The plain data is defined as m, whereas the encrypted data is defined as c.
Both m and c are treated as unsigned integer.

- **Encryption:**
  - c = m^e mod N.
- **Decryption:**
  - m = c^d mod N.

### Usecases

- **Symmetric:**
  As symmetric encryption is way faster than assymetric encryption, it is more suitable for encrypting larger blocks of data. 
  It is recommended to use symmetric encryption for disk encryption, as it's way faster than asymmetric encryption.
  Besides that, a suitable disk-cypher should be used, as each cluster needs to be encrypted seperately, independend from the previous one.
- **Asymmetric:**
  Asymmetric encryption is often used in the initial phase of communication to establish a secure channel.
  This is because asymmetric encryption involves a pair of keys (public and private), and only the recipient's private key can decrypt the data encrypted with their public key.
  Asymmetric encryption can be used to create digital signatures, providing a way to verify the authenticity and integrity of a message or data.
  The private key is used to sign the data, whereas the public key is used to verify the signature.
  Asymmetric encryption is widely used in Public-Key-Infrastructure.
  It is a hierarchical system for issuing, distributing and verifying digital certificates.
  The topic "PKI" in particular will be discussed later on.
- **Hybrid:**
  - DH-Key Exhange:
  - The Diffie-Hellman key exchange is often used to establish a shared secret between two parties securely.
  Both parties choose a parameter, which is then sent to the other party. 
  Using the from the other party received parameter, a common shared secret can be used for symmetric encryption.
