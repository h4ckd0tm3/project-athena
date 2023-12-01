# Introduction to Windows Security

## Structure of Windows
The Windows operating system is a complex and multifaceted structure that serves as the backbone for computing devices. At its core lies the kernel, managing system resources, executing processes, and facilitating communication between hardware and software. The modular approach to device drivers enables Windows to communicate with diverse hardware components.

Operating in user mode and kernel mode, Windows ensures the separation of critical system processes for stability and security. The Win32 API provides developers with a set of functions to create applications compatible with Windows, contributing to a robust software ecosystem.

Renowned for its graphical user interface, Windows offers users a visual environment featuring the Start menu, taskbar, and windowed applications. The Windows Shell manages the desktop, file system, and user interactions, providing a cohesive user experience.

Supporting various file systems, including NTFS, FAT32, and exFAT, Windows accommodates advanced features like file permissions and encryption. The Windows Registry serves as a centralized database for configuration settings, influencing system and application configurations.

A robust security subsystem manages user accounts, access control lists, and security policies, ensuring secure user authentication and data protection. Windows boasts extensive networking capabilities, supporting protocols for communication over local and wide area networks.

Windows Services, operating as background processes, handle specific functions independently of user sessions. The Task Scheduler automates task execution at specified intervals, contributing to system maintenance and updates.

Windows Update ensures the timely delivery of updates and patches for the operating system and other Microsoft software, enhancing system security and stability. Power management features optimize energy consumption on portable devices through sleep mode, hibernation, and advanced power settings.

Compatibility layers, including Compatibility Mode, facilitate backward compatibility with older software, allowing legacy applications to run seamlessly on newer Windows versions. In essence, the intricate structure of the Windows operating system harmonizes various components and features to deliver a versatile, secure, and user-friendly computing experience.

## Windows Users
The User is the basic controll unit in windows, a user can manipulate the OS.
An explanation to users and their usage and organization in windows

### Windows User Authentication
Windows user authentication is a crucial aspect of the operating system's security framework. It involves the process of verifying the identity of users attempting to access a Windows system, ensuring that only authorized individuals gain entry.
NTLM (NT LAN Manager):
Developed by Microsoft, NTLM is an authentication protocol used in Windows environments.
It operates by challenging the client with a cryptographic hash calculation, which is then sent to the server for verification.
While still supported for compatibility, NTLM is considered less secure than modern alternatives and is gradually being phased out.

Kerberos:
Kerberos is the preferred authentication protocol in Windows environments, especially within Active Directory (AD) domains.
It uses a ticket-based system to authenticate users and provides mutual authentication between the client and the server.
Kerberos is more secure than NTLM and helps prevent certain types of attacks, such as pass-the-hash.

User Account Control (UAC):
Introduced in Windows Vista and present in subsequent versions, UAC is a security feature that helps prevent unauthorized changes to the system.
UAC prompts users for confirmation when attempting to perform tasks that require administrative privileges, mitigating the risks associated with unintended system modifications.

Windows Credentials:
Windows stores user credentials securely, including usernames and password hashes, to facilitate authentication.
Credential Manager is a Windows component that allows users to manage their credentials, such as usernames and passwords for websites and network resources.

Smart Cards and Biometrics:
Windows supports the use of smart cards and biometric authentication methods, providing an extra layer of security beyond traditional username and password combinations.
Smart cards store cryptographic keys and require physical presence for authentication.

Windows Hello:
Windows Hello is a biometric authentication feature that supports facial recognition, fingerprint scanning, and iris scanning.
It provides a convenient and secure alternative to traditional passwords.

Group Policy:
Group Policy settings allow administrators to define and enforce security policies related to user authentication across a network.
Policies can include password complexity requirements, account lockout settings, and more.

Multi-Factor Authentication (MFA):
Windows supports MFA, requiring users to provide multiple forms of identification before gaining access.
MFA enhances security by combining something the user knows (password) with something they have (security token, mobile device).

Credential Guard:
Introduced in Windows 10, Credential Guard helps protect against credential theft by isolating and securing credentials in a virtualized environment.

Device Guard:
Also introduced in Windows 10, Device Guard ensures that only trusted applications run on a device, preventing unauthorized code execution.

Authentication Protocols and Encryption:
Windows uses secure protocols such as NTLM and Kerberos over encrypted channels to protect authentication data during transmission.

Azure Active Directory (AAD):
For cloud-based authentication, Windows integrates with Azure Active Directory, providing identity and access management services for cloud resources.

### User Account Control
User Account Control (UAC) is a security feature introduced by Microsoft in Windows Vista and present in subsequent versions of the Windows operating system. The primary goal of UAC is to enhance the security of the system by preventing unauthorized changes and reducing the impact of malware.

Purpose and Objectives:
UAC is designed to mitigate the risks associated with unintentional or malicious system modifications by requiring user confirmation before allowing certain actions that require administrative privileges.
It aims to strike a balance between user convenience and system security.

Prompt Elevation:
When a user attempts to perform tasks that require administrative privileges, such as installing software, changing system settings, or modifying system files, UAC triggers a prompt.
The prompt informs the user about the action being requested and asks for confirmation or credentials to proceed.

Levels of UAC:
UAC provides multiple levels of control, allowing users to adjust the sensitivity of the prompts based on their preferences.
The default setting notifies users when programs try to make changes to the computer, but users can choose more restrictive settings for increased security.

Consent Prompt:
The consent prompt is the most common type of UAC prompt. It informs the user that a program is attempting to make changes to the computer and asks for confirmation.
Standard users will need to enter administrator credentials to proceed.

Secure Desktop:
UAC prompts are displayed on the secure desktop, a separate desktop environment with higher privileges than the user's standard desktop.
This helps prevent malware from intercepting UAC prompts and tricking users into providing consent for malicious actions.

Administrator Approval Mode (AAM):
AAM is a mode in which administrators run most applications as a standard user but can temporarily elevate privileges when necessary.
It encourages administrators to use standard user accounts for daily tasks to reduce the risk of unintentional system modifications.

File and Registry Virtualization:
UAC employs file and registry virtualization to redirect write operations from standard user locations to appropriate per-user or per-session locations.
This helps maintain compatibility with legacy applications designed to write to protected areas.

Group Policy Settings:
UAC settings can be configured using Group Policy to enforce specific policies across an organization's network.
Group Policy allows administrators to customize UAC behavior, including prompt levels and behavior for built-in administrators.

Integration with Windows Security Center:
UAC is integrated with the Windows Security Center, providing a centralized location for managing security settings on a Windows system.

Windows 10 and Later Enhancements:
In later versions of Windows, UAC has seen improvements, such as the addition of a slider in the Settings app to easily adjust the prompt sensitivity.
Windows 10 introduced additional UAC settings, allowing users to control the behavior of UAC prompts on a per-app basis.
