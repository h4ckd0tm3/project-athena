## Public Key Infrastructure (PKI)

PKI, also know as Public Key Infrastructure, is a hierarchical system for issuing, distributing and verifying digital certificates.
Digital certificates allow a trustworthy and secure association between various entities and their public keys.
Public Key Infrastructure consists out of multiple components 
- Registration Authority:
  - The registration authority is responsible for verifying certificate signing requests & forwarding them to the certificate authority.
  - When you want to get a digital ceriticate, you need to request a certificate signing here. As the registration authority needs to verify the user's identity, you need to provide personal information such as
    - Personal information 
    - Proof of identity
    - Information about the company to issue the certificate to
- Certificate Authority:
  - The certificate authority is responsible for issuing the digital certificates. 
  - After the registration authority validated the user's identity, the certificate authority will create the certificate to be issued to the user.
- Validation Authority:
  - The validation authority is responsible for validating digital certificates, as well as providing information about it's validity.
  - In the case of a code signing certificate, windows sends a validation request to the validation authority to see whether the signed certificate is still valid.

Let's make an example:
You are a software developer, and want to create a computer game.
After you are finished with coding, you want to publish your program, allowing everyone to download it.
Once the program downloads & executes the program, the operating system attempts to verify the publisher by looking for a digitally signed certificate within the executable.
That's where PKI comes in: In order to verify yourself as publisher of the program, you need to request a code-signing certificate.
In case it's not present, windows states that the program was released by an unknown publisher, and therefore cannot be trusted.

Obtaining a code-signing certificate can be quite expensive, especially when it comes to signing kernel-mode drivers.
With that being said, as of now, there is no way to obtain a code-signing certificate for free.

HTTPS-certificates are also managed via PKI, which are used for providing traffic encryption & verifying the ownership of websites.
Fortunately, HTTPS-certificates are easy & free to obtain. One example of a free certificate authority offering free certificates would be https://letsencrypt.org.
