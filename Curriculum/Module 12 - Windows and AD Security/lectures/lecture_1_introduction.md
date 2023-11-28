## Introduction to Windows Active Directory

##### Active Directory Overview

- *Function*: Manages network resources, user data, and security policies in a Windows environment, serving as a centralized directory service.
- *Structure*: Hierarchical and modular, includes elements like domains, trees, and forests, allowing for scalable organization of resources.
- *Key Components*:
  - Domain Controllers: Hosts AD database and manages security token services, critical for authentication processes.
  - Global Catalog: Contains a searchable index of all objects in the forest, facilitating efficient and distributed searches.
- *Image Suggestion*: Detailed diagram showcasing the hierarchical structure and relationships within Active Directory.

##### Basic Security Principles

- *CIA Triad*:
  - Confidentiality: Implements encryption techniques to protect sensitive data during storage and transmission.
  - Integrity: Ensures data integrity through methods such as hashing and digital signatures, preventing unauthorized modifications.
  - Availability: Relies on redundancy and failover systems to guarantee reliable access, minimizing downtime.
- *AAA Framework*:
  - Authentication: Utilizes multi-factor authentication methods, adding layers of verification.
  - Authorization: Implements role-based access controls (RBAC) for granular control over user permissions.
  - Accounting: Maintains comprehensive audit logs and utilizes monitoring tools for real-time threat detection.
