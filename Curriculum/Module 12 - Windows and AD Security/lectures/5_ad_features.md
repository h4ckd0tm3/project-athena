# Active Directory Security Features
Active Directory also includes a boatload of features relating to security. These are, of course in addition or completion to most of the regular windows security features.

### Windows Group Policy
Group Policy is a powerful management tool in Microsoft Windows operating systems that allows administrators to define and control various system settings, configurations, and security policies for users and computers in a network.

Purpose and Overview:
        Group Policy provides a centralized way for administrators to manage the configuration and security settings of computers and users in an Active Directory (AD) environment.
        It enables the creation of policies that define how systems behave, ensuring consistency and adherence to security standards across the network.

Active Directory Integration:
        Group Policy is tightly integrated with Active Directory, Microsoft's directory service. It is primarily used in domain environments where computers are part of an Active Directory domain.

Group Policy Objects (GPOs):
        Group Policy settings are stored in Group Policy Objects (GPOs). Each GPO is a collection of settings that can be applied to users, computers, or both.
        GPOs are linked to Active Directory containers, such as sites, domains, or organizational units (OUs), to apply settings to specific groups of users or computers.

User Configuration and Computer Configuration:
        Group Policy settings are divided into two main categories: User Configuration and Computer Configuration.
        User Configuration settings apply to users when they log in, while Computer Configuration settings apply to computers during the startup process.

Security Settings:
        Group Policy includes a wide range of security settings, allowing administrators to enforce password policies, account lockout policies, and other security configurations.
        Security settings also cover areas such as Windows Firewall, Windows Defender, and BitLocker.

Software Installation and Management:
        Group Policy can be used to deploy and manage software installations on networked computers.
        It allows administrators to specify which software should be installed or removed from user or computer configurations.

Scripts and Logon/Logoff Actions:
        Group Policy supports the execution of scripts during various phases of the logon and logoff processes.
        This enables administrators to automate tasks based on user or computer actions.

Folder Redirection:
        Group Policy can redirect special folders (e.g., Documents, Desktop) to network locations, providing a centralized approach to managing user data.

Internet Explorer Maintenance (IEM):
        In older versions of Windows, Group Policy included Internet Explorer Maintenance settings for configuring browser-related options.
        In newer versions, these settings are being phased out in favor of more modern browser management approaches.

Group Policy Preferences:
        Group Policy Preferences allow administrators to configure settings that users can change.
        This provides flexibility for users while still maintaining a level of control over the environment.

Resultant Set of Policy (RSoP):
        RSoP is a tool that allows administrators to simulate and analyze the cumulative effect of Group Policy settings on a user or computer.
        It helps in troubleshooting and understanding how policies are applied.

Central Store:
        The Group Policy Central Store is a folder structure in the SYSVOL directory of a domain controller that stores the ADMX and ADML files for centralized management of policy settings.

Security Filtering and WMI Filtering:
        Group Policy can be selectively applied using security filtering based on user or computer security groups.
        WMI filtering allows policies to be applied based on specific conditions detected by Windows Management Instrumentation.

Advanced Group Policy Management (AGPM):
        AGPM is a tool available in Microsoft's Desktop Optimization Pack (MDOP) that enhances the management of Group Policy by providing versioning, change control, and role-based administration.


### Access Control
Access control in Active Directory (AD) refers to the mechanisms and policies that govern the permissions and rights granted to users and groups for accessing and managing resources within the directory. It is a crucial aspect of security in AD, ensuring that only authorized users can perform specific actions on directory objects.

Discretionary Access Control Lists (DACLs):
        DACLs are used in AD to define access permissions on objects such as users, groups, and organizational units (OUs). Each object has an associated DACL that specifies which users or groups have specific permissions (e.g., read, write, delete).

Permissions:
        Permissions are the specific actions or operations that users or groups are allowed or denied on AD objects. Common permissions include Read, Write, Create Child Objects, Delete, and Full Control.

Security Principal:
        A security principal in AD refers to an entity that can be assigned permissions. This includes users, groups, and computer accounts.

Inheritance:
        Inheritance allows permissions to be inherited from higher-level containers (e.g., OUs) to lower-level objects (e.g., user accounts). This simplifies the management of permissions by applying them hierarchically.

Access Control Entries (ACEs):
        ACEs are individual entries in a DACL that specify the permissions granted or denied to a particular security principal on a specific object.

Explicit and Inherited Permissions:
        Explicit permissions are those directly assigned to an object, while inherited permissions are received from a parent container. Understanding and managing explicit and inherited permissions is crucial for effective access control.

Access Control Inheritance Rules:
        AD follows specific inheritance rules when propagating permissions. These rules dictate how permissions are inherited from parent objects to child objects, ensuring a predictable and manageable access control structure.

Special Identities:
        Special identities in AD, such as Everyone, Authenticated Users, and Anonymous Logon, are used to define broad categories of users. Special identities can be used in permissions to grant or deny access to these categories.

Delegation of Control:
        Delegation of control allows administrators to assign specific administrative tasks to other users or groups without granting full administrative privileges. This is useful for distributing administrative responsibilities in a secure manner.

Effective Permissions:
        Effective permissions represent the cumulative set of permissions a user has on a particular object, taking into account both explicitly assigned and inherited permissions.

Auditing:
        AD provides auditing features that allow administrators to track changes to permissions and monitor user access. Auditing is crucial for security compliance and detecting potential security incidents.

Access Control Lists (ACLs):
        ACLs are data structures that contain the list of ACEs for an object. They define the permissions associated with the object and are an integral part of the access control model in AD.

Service Accounts and Managed Service Accounts:
        Service accounts and Managed Service Accounts (MSAs) in AD are used to run services and applications. Properly configuring access control for these accounts is essential to ensure the security of the services they support.

Effective Access:
        Administrators can use tools in AD to determine the effective access a user or group has on a specific object. This helps in troubleshooting access-related issues and ensuring proper permissions.

Role-Based Access Control (RBAC):
        RBAC is a method of access control that assigns permissions based on roles or job functions. AD supports RBAC through the assignment of roles to security groups, simplifying access management.

Protected Accounts and Security Descriptors:
        Certain accounts, such as domain administrators, are considered protected accounts. These accounts have special security descriptors to enforce additional security measures and protections.
		
### Auditing
Active Directory (AD) auditing is a critical aspect of maintaining security, compliance, and accountability within an organization's IT environment. Auditing in Active Directory involves tracking and monitoring events related to authentication, authorization, and changes to directory objects.

Event Logging:
        AD auditing generates a variety of events that are logged in the Security Event Log on domain controllers. These events provide detailed information about user activities, changes to objects, and security-related incidents.

Audit Policies:
        Audit policies in AD define the types of events that are logged. There are two main categories of audit policies:
            Account Logon Auditing: Tracks logon events for user accounts.
            Account Management Auditing: Tracks changes to user accounts, groups, and other AD objects.

Advanced Auditing:
        Advanced auditing allows organizations to configure more granular audit policies beyond the standard settings. It includes additional categories such as Detailed File Share, Directory Service Access, and Directory Service Changes.

Configuration Auditing:
        AD auditing covers changes to configuration settings, such as changes to Group Policy, audit policy settings, and changes to AD schema.

Object Access Auditing:
        Object access auditing focuses on tracking access and changes to specific objects, such as files, folders, and printers. This can be configured separately from the main AD audit policies.

Authentication Auditing:
        Auditing authentication events helps monitor logon and logoff activities, providing insights into user access patterns and potential security threats.

Failed Logon Auditing:
        Monitoring failed logon attempts is crucial for identifying potential security breaches and brute force attacks. This includes tracking unsuccessful logon attempts for user accounts.

Kerberos Authentication Auditing:
        Kerberos authentication events are logged to provide details about the Kerberos authentication protocol, including ticket requests and renewals.

Logon/Logoff Auditing:
        Logon and logoff events capture information about user sessions, including when users log on or off, the workstation used, and the type of logon session (e.g., interactive, network).

Group Membership Changes:
        AD auditing can track changes to group memberships, including additions and removals of users from security and distribution groups.

Policy Changes Auditing:
        Auditing policy changes helps organizations track modifications to AD policies, including changes to security settings, audit policies, and Group Policy Objects (GPOs).

Directory Service Access Auditing:
        Directory Service Access auditing focuses on tracking specific actions performed on AD objects, such as viewing attributes, creating objects, or deleting objects.

Directory Service Changes Auditing:
        This category of auditing covers changes made to AD objects, including user account modifications, group changes, and changes to organizational units.

Object Deletion Auditing:
        Tracking object deletions is essential for identifying instances where critical AD objects, such as user accounts or organizational units, are removed.

Audit Log Retention:
        Organizations need to establish proper audit log retention policies to ensure that audit logs are available for review and compliance purposes. This involves setting appropriate log sizes and archival processes.

Third-Party Auditing Tools:
        Many organizations use third-party auditing tools to enhance AD auditing capabilities. These tools often provide advanced reporting, real-time monitoring, and alerting features.

Compliance Reporting:
        AD auditing helps organizations meet regulatory compliance requirements by providing detailed reports on user activities, changes to sensitive objects, and security-related events.

Integration with SIEM Solutions:
        Active Directory audit logs can be integrated with Security Information and Event Management (SIEM) solutions for centralized log management, correlation, and analysis.

### Secure LDAP
Secure LDAP, also known as LDAPS (LDAP over Secure Sockets Layer) or LDAP over TLS (Transport Layer Security), is a protocol used to secure communications between LDAP (Lightweight Directory Access Protocol) clients and servers. In the context of Active Directory (AD), secure LDAP involves encrypting the communication between clients and domain controllers, adding an extra layer of security to the directory service.

Protocol Basics:
- LDAPS secures the communication channel between LDAP clients (such as applications or other directory services) and LDAP servers (Active Directory domain controllers) using encryption provided by SSL/TLS.

Port Number:
- By default, LDAP communication occurs over port 389. However, when using LDAPS, the communication takes place over port 636.

SSL/TLS Encryption:
- LDAPS encrypts data exchanged between LDAP clients and servers using SSL or its successor, TLS. This encryption helps protect sensitive information, such as usernames and passwords, from eavesdropping or man-in-the-middle attacks.

Certificate-Based Authentication:
- LDAPS uses X.509 certificates for server authentication. Clients can verify the authenticity of the LDAP server by validating its digital certificate. Conversely, servers may also request and validate client certificates for mutual authentication.

Certificate Authority (CA):
- A trusted Certificate Authority is typically responsible for issuing digital certificates. In the context of AD, certificates are often issued by the AD Certificate Services or another trusted CA in the organization.

AD Domain Controller Certificate:
- Each AD domain controller hosting the LDAPS service requires a valid server authentication certificate. This certificate is used to establish a secure connection with clients.

Configuration:
- Enabling LDAPS involves obtaining and installing a valid SSL/TLS certificate on each domain controller and configuring the AD DS service to use this certificate for secure LDAP communication.

Security Considerations:
- Implementing LDAPS enhances the security of LDAP communication by protecting sensitive data. It is particularly important when LDAP is used for authentication, such as in scenarios where applications or services query AD for user authentication.

Compatibility:
- LDAPS is widely supported by LDAP clients and applications. Most LDAP libraries and tools provide options for secure LDAP connections, allowing organizations to enforce secure communication.

Enforcement of Secure Connections:
- Organizations can enforce the use of LDAPS by configuring domain controllers to reject unsecured LDAP connections. This helps ensure that all LDAP communication is encrypted.

LDAP Signing:
- In addition to LDAPS, organizations can also enable LDAP signing, which ensures the integrity of LDAP communication by requiring that data be signed. This is an additional measure to prevent tampering with LDAP packets.

LDAP Channel Binding and LDAP Signing Requirements:
- Starting with Windows Server 2012, domain controllers may enforce LDAP channel binding and LDAP signing. This enhances security by requiring clients to negotiate secure connections and sign LDAP packets.

Impact on Performance:
- While LDAPS provides a higher level of security, it may have a slight impact on performance due to the overhead of encryption and decryption processes. However, the impact is generally negligible for most environments.

Certificate Renewal:
- Organizations need to manage the lifecycle of SSL/TLS certificates used for LDAPS, ensuring timely renewal and updating of certificates to avoid service disruptions.

Logging and Monitoring:
- AD administrators should monitor and log LDAPS activities for security and compliance purposes. This includes reviewing logs for successful and failed secure LDAP connections.	
### Read-Only Domain Controllers
Read-Only Domain Controllers (RODCs) are a specialized type of domain controller in the Active Directory (AD) infrastructure. They provide a way to extend AD services to locations with less secure physical environments, such as branch offices, without compromising the security of the AD database.

Introduction to RODCs:
- RODCs were introduced with Windows Server 2008 as a security enhancement to the traditional writable domain controllers. They are part of Microsoft's effort to address security concerns in branch offices and remote locations.

Read-Only Nature:
- As the name suggests, RODCs are read-only with respect to the AD database. They do not store any writeable copies of the AD database. All changes to the AD database are replicated from a writeable domain controller.

Benefits:
- Enhanced Security: RODCs minimize the security risk in locations where physical security cannot be guaranteed.
- Reduced Attack Surface: Since RODCs don't store a writeable copy of the AD database, compromising an RODC doesn't give an attacker the ability to modify AD objects directly.
- Credential Caching: RODCs can cache a subset of user and computer credentials, allowing users to log in even when the RODC is disconnected from the rest of the network.

Deployment Scenarios:
- Branch Offices: RODCs are commonly deployed in branch offices or remote locations where physical security is a concern.
- DMZ (Demilitarized Zone): RODCs can be used in DMZ environments to provide authentication services without exposing the full AD database to external threats.

RODC Prerequisites:
- Before deploying an RODC, organizations must ensure that their forest and domain functional levels are at least Windows Server 2003 and that they have a writeable domain controller running Windows Server 2008 or later.

Password Replication Policy (PRP):
- RODCs, by default, do not store the passwords of all user accounts. The Password Replication Policy (PRP) determines which user accounts' passwords are allowed to be cached on an RODC.

Admin Role Separation:
- RODCs do not host operations master roles (also known as FSMO roles) that involve write access to the AD database. These roles remain on writeable domain controllers.

Unidirectional Replication:
- Replication is unidirectional, with data flowing from a writeable domain controller to an RODC. RODCs do not replicate changes back to writeable domain controllers.

RODC Prerequisites and Installation:
- The installation of an RODC involves running the Active Directory Domain Services Installation Wizard and selecting the RODC option. Administrators need to be members of the Domain Admins group or have delegated rights for the installation.

RODC Administration:
- Administrators can manage RODCs using standard AD management tools, but they must be aware of the limitations imposed by the read-only nature of the RODC.

RODC Filtering:
- Administrators can use attributes like "msDS-RevealOnDemandGroup" to filter which AD objects are replicated to an RODC, helping to control the scope of the AD database exposed to an RODC.

Password Replication Policy (PRP) Management:
- The PRP can be managed using the "Active Directory Users and Computers" console. Administrators can specify which user accounts' passwords are allowed to be cached on an RODC.

RODC Recovery:
- In the event of an RODC failure, organizations can seize the FSMO roles on another domain controller and promote a new RODC to replace the failed one.

Monitoring and Logging:
- Monitoring tools and AD event logs provide information on the health and activities of RODCs. Regular reviews of logs help ensure security and compliance.

Read-Only Administrator Role:
- Organizations can delegate a "Read-Only Administrator" role for specific RODCs. This role allows the administrator to log in to the RODC for monitoring and troubleshooting without providing write access to AD data.

RODC Compatibility:
- RODCs are compatible with Windows Server 2008 and later versions of the operating system.
		
### PAM

Privileged Access Management (PAM) in the context of Active Directory (AD) refers to the practices, strategies, and tools used to secure and manage privileged access within the AD environment. PAM aims to reduce the risk of unauthorized access to sensitive data, prevent misuse of administrative privileges, and enhance overall security.

**Privileged Access**:
Privileged access refers to elevated permissions and capabilities that go beyond standard user access. It includes administrative roles, such as Domain Admins, Enterprise Admins, and other roles with broad control over AD resources.
PAM Goals:

The primary goals of PAM in AD are to:
- Limit and Monitor Privileged Access: Restrict access to sensitive resources and closely monitor activities of privileged users.
- Implement Just-In-Time (JIT) Access: Provide elevated privileges only when needed for a specific task or time period.
- Adopt Just-Enough-Access (JEA): Grant minimal required access for specific administrative tasks.

Components of PAM:
- PAM in AD involves a combination of technologies, processes, and strategies, including:
- Just-In-Time (JIT) Access: Granting elevated access for a limited duration.
- Just-Enough-Access (JEA): Limiting the scope of administrative tasks to the minimum necessary.
- Privileged Access Workstations (PAWs): Secure, dedicated workstations for administrative tasks.
- Credential Guard: Protecting and managing privileged credentials securely.
- Just-In-Time (JIT) Access:
JIT access involves granting elevated permissions for a specific duration, reducing the window of opportunity for potential misuse. Solutions like Azure AD Privileged Identity Management (PIM) enable JIT access.

Just-Enough-Access (JEA):
- JEA restricts administrators to perform only specific tasks for which they have been explicitly authorized. It limits the scope of their actions, reducing the risk associated with unnecessary privileges.

Privileged Access Workstations (PAWs):
- PAWs are dedicated, secure workstations used exclusively for administrative tasks. They are isolated from standard user activities, reducing the risk of credential theft and other security threats.

Credential Guard:
- Credential Guard is a security feature that helps protect privileged credentials by utilizing virtualization-based security to isolate sensitive information and prevent credential theft.

Azure AD Privileged Identity Management (PIM):
- Azure AD PIM is a cloud-based solution that provides JIT access to Azure AD, Azure, and other Microsoft Online Services. It enables organizations to manage, control, and monitor access within these environments.

Role-Based Access Control (RBAC):
- RBAC is a key component of PAM, allowing organizations to define roles and assign specific permissions based on job responsibilities. RBAC helps implement the principle of least privilege.

Time-Bound Access:
- PAM solutions often enable organizations to set time-based constraints on privileged access. This ensures that elevated privileges are available only when necessary and reduces the risk of prolonged exposure.

Session Recording and Logging:
- PAM solutions may include session recording and logging capabilities to capture and monitor activities performed by privileged users. This is crucial for auditing, compliance, and incident response.

Automated Workflow:
- PAM solutions often include automated workflows for requesting, approving, and revoking privileged access. This streamlines administrative processes and ensures proper oversight.

Discovery and Monitoring:
- PAM solutions provide tools for discovering and monitoring privileged accounts, helping organizations identify and manage potential security risks.

Integration with SIEM:
- Integration with Security Information and Event Management (SIEM) systems allows organizations to correlate PAM data with other security events for a holistic view of the security landscape.

Compliance Reporting:
- PAM solutions often include reporting features to facilitate compliance with regulatory requirements. These reports provide insights into privileged access activities and adherence to security policies.
Continuous Improvement:

### SID Filtering
SID (Security Identifier) filtering in Active Directory is a security feature designed to enhance trust relationships between domains by controlling the types of security principals (users, groups, and computers) that can be authenticated in a trusting domain. SID filtering helps prevent certain security risks associated with the use of Security Identifiers in cross-domain authentication.

Security Identifier (SID): A SID is a unique identifier assigned to each security principal in an Active Directory domain. SIDs are used for authentication and authorization purposes.

Trust Relationships:
- Trust relationships between domains in Active Directory allow users in one domain to access resources in another domain. Trusts can be one-way or two-way, and they can be transitive or non-transitive.

Trust Types:
- In Active Directory, there are several trust types, including:
- Forest Trust: Establishes a trust relationship between two entire Active Directory forests.
- External Trust: Establishes a one-way or two-way trust between domains in different forests.
- Shortcut Trust: Simplifies the trust path between domains in a forest.

SID Filtering:
- SID filtering is a security mechanism primarily used in external trusts to restrict the SIDs that are allowed to pass through the trust relationship.

Security Risks:
- Without SID filtering, SIDs from one domain could potentially be misused in another domain, leading to security risks such as elevation-of-privilege attacks.

SID Filtering Process:
- SID filtering operates by preventing the propagation of certain types of SIDs across trust relationships. When a user from a trusting domain logs in to a resource in the trusted domain, SID filtering checks and filters out any SIDs that don't belong to the trusted domain.

Trust Attributes:
- SID filtering is applied to trusts through the use of trust attributes. The "SID Filter Quarantined" attribute is used to indicate whether SID filtering is enabled or disabled for a specific trust.

Domain Security Identifier (Domain SID):
- The Domain SID represents the security context of an entire domain. SID filtering ensures that only valid Domain SIDs from trusted domains are allowed through the trust relationship.

Inbound and Outbound SID Filtering:
- SID filtering can be applied separately to inbound and outbound trust relationships. Inbound SID filtering checks SIDs coming into the trusted domain, while outbound SID filtering checks SIDs leaving the trusting domain.

Quarantine Mode:
- SID filtering has a "quarantine mode" that can be enabled or disabled. In quarantine mode, the trusting domain rejects authentication requests containing unrecognized SIDs, providing an additional layer of security.

Administration and Maintenance:
- Administrators can configure and manage SID filtering through tools such as Active Directory Domains and Trusts and the netdom command-line tool.

SID Filtering and Read-Only Domain Controllers (RODCs):
- SID filtering is particularly relevant when dealing with external trusts involving Read-Only Domain Controllers (RODCs). SID filtering helps control the propagation of SIDs to RODCs.

Best Practices:
- Best practices for SID filtering include enabling SID filtering on external trusts, regularly reviewing trust relationships, and monitoring SID filtering logs for potential security incidents.

Limitations:
- SID filtering is effective in certain scenarios, but it has limitations. It doesn't prevent all types of attacks, and organizations should consider additional security measures, such as firewalls and network segmentation, for a comprehensive security posture.

Trust Verification:
- Administrators should regularly verify trust relationships and ensure that SID filtering is configured correctly. Trust verification can be part of a broader security audit process.