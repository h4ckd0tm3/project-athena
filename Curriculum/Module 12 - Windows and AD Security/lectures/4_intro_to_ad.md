# Introduction to Active Directory 
Active Directory (AD) stands as an indispensable component in modern network architecture, developed by Microsoft to provide a unified and efficient means of managing resources within Windows domain networks. Its core purpose is to centralize the management of users, computers, and groups, fostering an organized and secure network environment.

> Active Directory originated in the late 1990s

AD serves a dual role as an authentication and authorization service. It streamlines access to network resources by providing a centralized repository for directory information. 

Functioning on a client-server model, Domain Controllers (DCs) are pivotal in this ecosystem. They authentication users, store directory data, and collaborate to maintain the integrity of the directory database.

### Components of AD

Active Directory is structured hierachically, with key components playing distinct roles in the architecture.

**Domain Controllers (DC)**:
- authoritative servers for authentication and directory maintenance
- responsible for validating users' credentials
- maintain the integrity of the directory database
- multiple domain controllers ensure redundancy
- crucial for fault tolerance and reliability in authentication

**Domains**:
- logical groupings of network objects

**Trees**:
- collections of interconnected domains

**Forests**:
- encompass the entire directory structure

**Organizational Units (OUs)**:
- granular level of organization within a domain
- allows application of Group Policy settings
- enables the delegation of administrative authority
- OUs assist in organizing the network based on organizational requirements
- enhances the management and customization of policies within the network

### Objects in Active Directory

In Active Directory, objects are fundamental entities that represent various elements within a network.

**Users**:
- manage user accounts for authentication
- control access through usernames, passwords and group memberships

**Groups**:
- security and distribution groups for permissions
- efficient user management through grouping
- centralized control over resource access

**Computers**:
- integrate computers into the domain
- centralized management for security policies
- important for enforcing access controls

### Group Policy Objects (GPOs)

Group Policy Objects in AD are a powerful mechanism used to define and manage settings for users and computers within a Windows network.

1. **Definition**: These are containers for Group Policy settings that define how computers and users operate in the network.
2. **Application Scope**: GPOs can be applied at sites (geographical location), domains or OUs.
3. **Configuration**: GPOs are used to configure a wide range of settings like _Security Settings_ (e.g. Password Policies, ...), _Software Deployment_ (e.g. Installation of Software on Computers, ...), _Desktop Settings_ (e.g. Desktop Behavior, ...).
4. **Inheritance and Precedence**: Higher setting levels can be inherited by lower levels and precedence rules help resolve conflicts when multiple GPOs are applied.
5. **Centralized Management**: GPOs provide a centralized and efficient way to manage configurations and policies.
6. **Group Policy Modeling and Results**: Admins can simulate the effect of GPOs on users and computers before implementation and can view the applied policies using the RSoP tool.

### Trust Relationships in AD

Trust relationships in Active Directory establish a secure connection between different domains, allowing for the controlled sharing of resources and authentication across these domains.

1. **Types of Trust Relationships**:
	- **One-Way-Trust**: Allows authentication in one direction only (trusting domain to trusting domain).
	- **Two-Way-Trust**: Enables authentication in both directions.
2. **Transitivity**:
	- **Parent-Child-Trusts**: Automatic two-way-trusts between parent and child domains in a tree/forest structure.
	- **Shortcut-Trusts**: Manual creation of trusts between specific domains for optimized authentication.
3. **External Trusts**:
	- **Between Forests**: Establishes trust relationships between different Active Directory forests.
	- **Realm Trusts**: Establishes trust with non-Windows Kerberos realms.
4. **Importance**:
	- Trust relationships are crucial for users in one domain to access resources in another.
	- They enhance collaborations and resource sharing in complex network environments.

### Security in Active Directory

Security in Active Directory is paramount, ensuring that only authorized users and systems have access to resources.

1. **Authentication and Authorization**:
	- **Authentication**: The process of verifying the identity of users or systems.
	- **Authorization**: Granting or denying access based on the authenticated identity.
2. **Role-Based Access Control (RBAC)
	- Assigning permissions based on roles rather than individual user accounts.
	- Enhances security by simplifying and centralizing access management.
3. **Kerberos Authentication**:
	- Default authentication protocol in AD
	- Uses tickets to prove the identity of users and services without transmitting passwords
4. **Security Groups**:
	- **Distribution Groups**: Used for sending emails to a group of users.
	- **Security Groups**: Used for managing access control by assigning permissions.
5. **Auditing and Monitoring**:
	- **Audit Policies**: Configured to track specific events and activities in AD.
	- **Monitoring Tools**: Utilized to detect and respond to suspicious activities.
6. **Fine-Grained Password Policies**:
	- Allows the application of different password policies to different sets of users.
	- Enhances security by tailoring policies to specific organizational needs.
7. **Secure LDAP**: 
	- Encrypts communication between clients and domain controllers using SSL/TLS.
	- Ensures the confidentiality and integrity of data during transmission.
8. **Physical Security Measures**:
	- Protection of physical servers and data centers hosting AD components.
	- Implementation of access controls and surveillance.

### Replication in Active Directory

Active Directory replication is the process of ensuring that changes made in one domain controller's database are propagated to all other domain controllers within the same domain. This process maintains a consistent and up-to-date directory across the entire network. 

1. **Multi-Master Replication:**
   - Active Directory follows a multi-master replication model, meaning that each domain controller can accept changes to its local copy of the directory database.
   - All domain controllers in a domain are considered peers.
2. **Replication Topology:**
   - Active Directory replication uses a replication topology that defines the connections between domain controllers.
   - Knowledge of the replication topology ensures that changes are efficiently and accurately propagated.
3. **Change Notification:**
   - Domain controllers use a change notification process to inform others about directory changes.
   - This process minimizes unnecessary replication traffic by notifying only the necessary domain controllers.
4. **Replication Intervals:**
   - Replication occurs at specific intervals, with intra-site replication being more frequent than inter-site replication.
   - Replication schedules can be configured to balance the trade-off between timely updates and network bandwidth.
5. **Sites and Subnets:**
   - Active Directory Sites are logical representations of physical network locations.
   - Subnets are associated with sites to optimize replication traffic.

### DNS and Active Directory

DNS (Domain Name System) plays a crucial role in the functioning of Active Directory, providing name resolution and ensuring that domain controllers and clients can locate each other.

1. **Integration:**
   - Active Directory heavily relies on DNS for name resolution.
   - DNS facilitates the translation of computer names to IP addresses and vice versa.
2. **SRV Records:**
   - Service (SRV) records in DNS are used by Active Directory to locate domain controllers and other services.
   - These records provide essential information for clients to discover domain controllers.
3. **Dynamic DNS Updates:**
   - Active Directory-integrated DNS zones support dynamic updates.
   - DNS records related to Active Directory are automatically updated when changes occur.
4. **Single Label Names:**
   - While Active Directory supports DNS names with a single label, it is recommended to use a fully qualified domain name (FQDN) for better DNS resolution.

### Active Directory Sites and Services

Active Directory Sites and Services is a Microsoft Management Console (MMC) snap-in that administrators use to manage the replication topology and other related aspects of network design.

1. **Logical Representation of Network Topology:**
   - Active Directory Sites represent logical groupings of network locations.
   - Designed to mirror the physical structure of the network.
2. **Subnets and Site Links:**
   - Subnets are associated with sites to aid in network optimization and efficient replication.
   - Site Links define the connections between sites, influencing replication traffic.
3. **Bridgehead Servers:**
   - Bridgehead servers are domain controllers designated to manage intersite replication.
   - They coordinate the flow of replication traffic between sites.
4. **Connection Objects:**
   - Connection objects define the replication connections between domain controllers.
   - Administrators can manually configure or allow automatic creation of these connections.
5. **Managing Replication:**
   - Active Directory Sites and Services provides tools to monitor and manage replication.
   - Administrators can force replication, check replication status, and troubleshoot any issues.
   
### Backup and Recovery in Active Directory

Active Directory backup and recovery are critical components of maintaining data integrity, ensuring business continuity, and safeguarding against data loss.

1. **Backup Frequency:**
   - Regular backups are essential to capture changes and updates to the Active Directory database.
   - Scheduled backups should align with the organization's recovery point objectives (RPOs).
2. **System State Backup:**
   - Active Directory data is encapsulated in the System State backup.
   - This backup includes critical components such as the registry, boot files, and Active Directory database.
3. **Authoritative and Non-Authoritative Restores:**
   - Authoritative restore marks objects as authoritative, ensuring they are replicated to other domain controllers.
   - Non-authoritative restore is used when only the specific domain controller needs recovery.
4. **Backup Storage and Security:**
   - Store backups in a secure location to prevent unauthorized access.
   - Encryption and proper access controls should be applied to backup files.
5. **Test Restores:**
   - Regularly perform test restores to ensure the viability of backup files.
   - Validate the restoration process to reduce downtime during actual recovery events.
6. **Offline Backups:**
   - Consider taking offline backups to safeguard against ransomware or other security threats.
   - Offline backups are not directly accessible, reducing the risk of compromise.
7. **Monitoring and Alerts:**
   - Implement monitoring mechanisms to track backup success and failure.
   - Configure alerts to promptly address any backup-related issues.
8. **Documentation:**
   - Maintain comprehensive documentation of the backup and recovery procedures.
   - Include step-by-step instructions for various recovery scenarios.

### Active Directory Federation Services (ADFS)

Active Directory Federation Services (ADFS) is a component of Windows Server that enables Single Sign-On (SSO) across organizational boundaries. ADFS allows users to access multiple applications with a single set of credentials.

1. **Federation Trust:**
   - Establishes a trust relationship between organizations to enable cross-organizational authentication.
   - Allows users from one organization to access resources in another without needing separate credentials.
2. **Claims-Based Authentication:**
   - ADFS uses claims-based authentication, where users present claims (attributes) that are verified for access.
   - Supports Security Assertion Markup Language (SAML) and other industry standards.
3. **Identity Providers and Relying Parties:**
   - Identity providers (IdPs) issue claims about a user's identity.
   - Relying parties (RPs) trust claims issued by IdPs and use them to grant access.
4. **Web Application Proxy (WAP):**
   - ADFS can be complemented with Web Application Proxy to enable secure remote access to applications.
   - WAP provides a reverse proxy and pre-authentication for web applications.
5. **Single Sign-On (SSO):**
   - ADFS enables SSO, allowing users to access multiple applications with a single login.
   - Improves user experience and reduces the need for multiple sets of credentials.
6. **Multi-Factor Authentication (MFA):**
   - ADFS supports multi-factor authentication for an added layer of security.
   - Enhances authentication by requiring multiple forms of verification.
7. **Token-Based Authorization:**
   - ADFS issues security tokens to users after successful authentication.
   - These tokens contain claims that are presented to relying parties for access.
8. **Integration with Azure AD:**
   - ADFS can be integrated with Azure Active Directory for extended functionality.
   - Enables organizations to leverage cloud-based applications and services.
