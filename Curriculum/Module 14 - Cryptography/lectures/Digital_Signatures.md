## Digital Signatures

Digital signatures are cryptographic techniques used to ensure the authenticity & integrity of digital messages.
Here, you'll find an overview about the most common ways to sign & verify messages.

- RSA

In asymmetric encryption, we used the public key to encrypt the data, whereas the private key was used for decrypting the data.
For digital signatures, the keys are used the other way around: The private key is used for encrypting the data, and the public key is used for decryption.
For instance, we initially generate a hash of a piece of data. Then, we encrypt the hash using the private key.
Now everyone with the public key can compare the decrypted hash against the actual hash of the data. A mismatch indicates that the original data was tampered with.

- HMAC (Hash-Based Message Code)

HMAC is another way of verifying digital messages.
In contrast to RSA, a shared secret is used instead of the private key. Here, the message is combined with a secret code, creating a so-called tag.
In context of symmetric encryption, the tag is created based on both the plaintext & the secret code. After transmission, the tag can be re-created by the receiver, which can be compared against the initial tag in order to detect transmission errors.\
While HMAC can be used to verify the integrity and authenticity of data, it is important to note that it's not a signing method, and not to be used as such.
