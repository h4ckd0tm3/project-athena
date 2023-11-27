# Defensive Security and Blue Teaming

## Learning Objectives

- Identify and explain the importance of defensive security technologies and processes
- Describe the principles of firewalls and their role in network security
- Analyze and evaluate different intrusion detection and prevention technologies
- Explain the incident response process and the role of the incident response team
- Analyze and evaluate different SIEM solutions and their use in enterprise security

## Topics Covered

1. Defensive Security Overview
2. Firewalls
3. Intrusion Detection and Prevention
4. Incident Response
5. Security Information and Event Management (SIEM)

## Overview - You can achieve a good defensive security with the following points

### Intrusion Detection Systems (IDS)

IDS are software or hardware systems that automate the process of tracking event occurrences within a computer system or network and analysing them for signs of security breaches. They are important in the early warning system.

### Intrusion Prevention Systems (IPS)

The intrusion protection systems (IPS) are the network security devices responsible for examining network and/or system activities looking for malicious or unwanted behaviors and will instantly attempt to stop or prohibit them. These programs have the same features as intrusion detection system and are also able to prevent unauthorized access.

### Security Information and Event Management (SIEM).

The technology known as SIEM analyses security alerts that are produced on an ongoing basis by network hardware and software. It gives a detailed overview of an organisation’s information security.

### Endpoint Detection and Response (EDR)

EDR solutions constantly monitor and collect data about endpoint devices like desktop, laptop systems, tablets, and smartphones. EDR solutions are set up mainly to detect and eradicate suspected threats.

### Antivirus Software

Anti-virus software is a program or a set of programs that are specially designed to prevent the creation or usage of virus files. It can also search for and detect these files in software. Examples of what it can find are viruses, worms, trojans, adware, spy ware etc.

### Firewalls

Firewalls are network security devices which regulate traffic and ensure communication between computer networks. They act as a wall between a private network and the internet, or other networks outside the internal network. Firewalls may have physical or virtual character and they have become indispensable tool for compliance with organizational network security policies.

_source: Overview [1.], Overview [2.]_

## Overview - Crucial Security Defense processes

### Incident Response

Incident response is a systematic approach towards addressing security breaches as well as cyber threats. The primary role of this is to handle, control, and damage mitigation due to a breach.

### Threat Intelligence

Threat intelligence is the type of knowledge that helps an organization gauge any threat to their surrounding environment. it gives context to threats and empowers organizes to decide with conviction.

### Vulnerability Management

Vulnerability management encompasses the practice of identifying exposures as well as evaluating, remediating, and reporting vulnerabilities in systems or software.

### Risk Management

Risk management entails the identification, evaluating and controlling of risks to an organization’s capital and profit. These threats or risks may come from various sources such as financial problems, legal liabilities, poor decision-making, accidents and natural calamities.

_source: Overview [1.], Overview [2.]_

## Overview - Difference to Red Teaming

<img src="https://lh6.googleusercontent.com/rx-60dcB6d-PkM2PyP3WGhJHMs64U9MZqYZvURexA_uXryKYdBLsgjHpvFsXz1khxNdqXxiQsziaTQ3_-Beyb-mlsmQvelSVw6ADi8TqSB7XtWxa-N01TWGoeJjvpVUXmGsCiP5UBVitXQQ_erdNcns" alt="drawing" style="width:500px"/>

_source: Overview [3.]_

## Firewalls

### What is a Firewall?

It must be noted that firewalls are used for filtering of network traffic in internal network. It determines the traffic that should either be permitted or prohibited in line with specific stipulations. The firewall can be thought of as a gatekeeper of your computer’s entrance point where only trusted sources or IP address are allowed into your network.

The incoming traffic, which is allowed in this network, is configured into a firewall. It differentiates between good traffic and malicious data and either permits or denies packets based on preset security criteria.

The packet data contains such information as its source, destination, content and so on which serves as basis for these rules. They allow traffic from suspect sources, but block it to mitigate cyberattacks.

For instance, the picture below illustrates how a firewall lets genuine traffic through to the user’s private network.

<img src="https://www.simplilearn.com/ice9/free_resources_article_thumb/Firewall_1.png" alt="drawing" style="width:500px"/>

_source: Firewalls [3.]_

However, as you can see on the picture below, the malicious or per rules blocked traffic is not allowed to enter the users private network. The gatekeeper is doing his job pretty good!

<img src="https://www.simplilearn.com/ice9/free_resources_article_thumb/Firewall_2.png" alt="drawing" style="width:500px"/>

_source: Firewalls [4.]_

### How does a Firewall Work?

Firewalls work by examining data packets passing through them and applying the rules to determine whether to allow or block the traffic. These rules can be based on various factors like IP addresses, port numbers, protocols, or specific types of content.

### Types of Firewalls

A firewall can either be software or hardware. Software firewalls are programs installed on each computer, and they regulate network traffic through applications and port numbers. Meanwhile, hardware firewalls are the equipment established between the gateway and your network. Additionally, you call a firewall delivered by a cloud solution as a cloud firewall.

There are multiple types of firewalls based on their traffic filtering methods, structure, and functionality. A few of the types of firewalls are:

### Packet Filtering

A packet filtering firewall controls data flow to and from a network. It allows or blocks the data transfer based on the packet's source address, the destination address of the packet, the application protocols to transfer the data, and so on.

### Proxy Service Firewall

This type of firewall protects the network by filtering messages at the application layer. For a specific application, a proxy firewall serves as the gateway from one network to another.

### Stateful Inspection

Such a firewall permits or blocks network traffic based on state, port, and protocol. Here, it decides filtering based on administrator-defined rules and context.

### Next-Generation Firewall

According to Gartner, Inc.’s definition, the next-generation firewall is a deep-packet inspection firewall that adds application-level inspection, intrusion prevention, and information from outside the firewall to go beyond port/protocol inspection and blocking.

### Unified Threat Management (UTM) Firewall

A UTM device generally integrates the capabilities of a stateful inspection firewall, intrusion prevention, and antivirus in a loosely linked manner. It may include additional services and, in many cases, cloud management. UTMs are designed to be simple and easy to use.

### Threat-Focused NGFW

These firewalls provide advanced threat detection and mitigation. With network and endpoint event correlation, they may detect evasive or suspicious behavior.

_source: Firewalls [5.]_

### Softwarebased Firewall:

- **Software-based firewalls** are programs installed on individual computers or devices. They monitor traffic specific to that device, regulating incoming and outgoing connections based on predefined rules. They're often part of antivirus software or operating systems, offering granular control over what enters or leaves a particular device.

### Hardwarebased Firewall:

- **Hardware firewalls** are standalone devices positioned between an internal network and an external network (like the internet). They're often implemented within routers or dedicated firewall appliances. Hardware firewalls provide broader protection for entire networks and are managed separately from individual devices.

### Differences Between Software and Hardware Firewalls

1. **Scope:** Software firewalls protect individual devices; hardware firewalls safeguard entire networks.
2. **Location:** Software firewalls are installed directly on devices; hardware firewalls are separate physical devices or integrated within network infrastructure.
3. **Granularity of Control:** Software firewalls offer detailed control per device; hardware firewalls provide broader network-wide protection and can be more challenging to customize for individual devices.

Both types of firewalls are essential in a comprehensive security strategy. Often, a combination of both software and hardware firewalls is used in an organization's network architecture to provide layered security defenses.

### Difference Between a Firewall and Antivirus

#### Firewall

- A firewall is essential software or firmware in network security that is used to prevent unauthorized access to a network.
  It is used to inspect the incoming and outgoing traffic with the help of a set of rules to identify and block threats by implementing it in software or hardware form.
  Firewalls can be used in both personal and enterprise settings, and many devices come with one built-in, including Mac, Windows, and Linux computers.

#### Antivirus

- Antivirus is also an essential component of network security. It is basically an application or software used to provide security from malicious software coming from the internet.
  An antivirus working is based upon 3 main actions, Detection, Identification, and Removal of threats.
  Antivirus can deal with external threats as well as internal threats by implementing only through software.

### Diffrent types of firewalls

1. **Packet Filtering Firewalls** <br>
   Operation: Examines packets based on pre-defined rules (such as source/destination IP, ports, protocols) and allows or blocks them accordingly. <br>
   Characteristics: Efficient but operates at the network layer (Layer 3) of the OSI model and lacks deep inspection capabilities.

2. **Stateful Inspection Firewalls** <br>
   Operation: Tracks the state of active connections, allowing or denying traffic based on the context of the connection (stateful examination). <br>
   Characteristics: More secure than packet filtering, as it considers the connection state. It operates at network (Layer 3) and transport (Layer 4) layers.

3. **Proxy Firewalls (Application-Level Gateways)** <br>
   Operation: Acts as an intermediary between clients and servers, handling traffic at the application layer. It establishes separate connections for each request. <br>
   Characteristics: Offers enhanced security by inspecting and filtering at Layer 7 (application layer) but can introduce latency.

4. **Next-Generation Firewalls (NGFW)** <br>
   Operation: Integrates traditional firewall features with advanced functionalities like intrusion prevention, application awareness, deep packet inspection, and more. <br>
   Characteristics: Provides comprehensive security by combining various security features to detect and block modern threats.

5. **Deep Packet Inspection (DPI) Firewalls** <br>
   Operation: Analyzes packet contents beyond header information, scrutinizing the actual data payload for specific patterns or anomalies. <br>
   Characteristics: Offers detailed inspection but can impact performance due to resource-intensive packet analysis.

6. **Virtual Firewalls** <br>
   Operation: Designed for virtualized environments, securing traffic within virtual networks or between virtual machines. <br>
   Characteristics: Provides security for virtual environments, similar to physical firewalls but tailored for virtualized networks.

_source: Firewalls [1.], Firewalls [2.]_

## **Intrusion Detection and Prevention Systems**

### Introduction

- IDPS → combination of Intrusion Detection Systems (IDS) + Intrusion Prevention Systems (IPS)
- Nowadays a must-have to network security defenses, especially for detecting, tracking, and blocking malicious traffic and malware.
- IDPS has become part of advanced tools like next-generation firewalls (NGFW), SIEM, and Extended Detection and Response (XDR)

_source: Intrusion Detection and Prevention Systems [1.]_

### **IDS vs. IPS**

> Intrusion Detection Systems (IDS) and Intrusion Prevention Systems (IPS) are two tools that network administrators use to identify cyber-attacks. IDS and IPS tools are both used to discover online threats but there is a distinct difference in how they operate and what they do.

Intrusion Detection Systems (IDS) → **diagnostic tool**

Intrusion Prevention Systems (IPS) → **diagnostic and incident response tool**

_source: Intrusion Detection and Prevention Systems [3.]_

**Intrusion Detection Systems (IDS)**

1. **Functionality**
   - monitor network traffic and detect unusual or suspicious activities
   - identifies potential threats by comparing network activities to →
     - **previously recorded intrusion patterns (database)**
     - **baseline**
2. **Detection Techniques**
   - **Signature-Based Detection**
     - has a predefined database of attack patterns and signatures.
     - highly effective against known attacks but cannot detect new, unidentified attacks.
   - **Anomaly-Based Detection**
     - utilizing a baseline of normal network behavior, identifies deviations that could indicate a security threat.
     - often enhanced with AI and machine learning, can detect previously unknown attacks but are more prone to false positives.
3. **Limitations**
   - IDS primarily focuses on detection and alerting (not like IPS)
   - does not take action to block or prevent the detected threats → which means that human intervention or additional security measures are necessary for response.

_source: Intrusion Detection and Prevention Systems [2.]_

**Intrusion Prevention Systems (IPS)**

1. **Functionality**
   - extends the capabilities of IDS → taking proactive measures
   - analyzes network traffic content and responds to exploits by blocking malicious traffic and preventing it from interacting with the network.
2. **Detection Techniques**
   - uses both signature-based and anomaly-based detection.
3. **Advantage Over IDS**
   - the advantage is obvious → is both a diagnostic and incident response tool
4. **Potential Disadvantages**
   - the possibility of more false positives due to its proactive blocking measures.
   - it may incorrectly identify legitimate activities as threats, leading to unintended blocking of traffic.

_source: Intrusion Detection and Prevention Systems [3.]_

### **A Combined Approach (IDPS)**

In many security infrastructures, IDS and IPS are combined into a single solution known as Intrusion Detection and Prevention Systems (IDPS). This approach integrates the strengths of both systems, offering comprehensive protection by detecting threats (IDS) and actively preventing them (IPS).

In summary, IDS and IPS serve complementary roles in network security. IDS excels at detecting and alerting, while IPS extends this functionality by actively preventing identified threats.

_source: Intrusion Detection and Prevention Systems [1.]_

### **Types of IDPS**

**Host-Based IDPS (HIDPS)**

- HIDPS is deployed directly on individual hosts, such as servers
- focuses on protecting specific endpoints → scanning system files, unauthorized changes and processes running on the system
- effective in monitoring internal activities of a host

_source: Intrusion Detection and Prevention Systems [1.]_

**Network-Based IDPS (NIDPS)**:

- monitors network traffic (entire network segment or subnet)
- It's deployed in strategic network locations

_source: Intrusion Detection and Prevention Systems [1.]_

### **Recent Advancements in IDPS Technology**

**Integration in other Solutions**

- IDPS increasingly merging with other advanced security solutions
  - next-generation firewalls (NGFW)
  - Security Information and Event Management (SIEM)
  - and Extended Detection and Response (XDR)
- This integration allows for a more comprehensive security posture, combining the strengths of each system to offer enhanced detection and prevention capabilities.

_source: Intrusion Detection and Prevention Systems [1.]_

**Adoption of Machine Learning and AI**

- Modern IDPS solutions are increasingly using machine learning and AI → process massive data faster
- Detects what traditional signature and anomaly detection methods might miss
- Adjusts learnings practices and behaviours in real-time
- Allows IDPS to adapt quickly to new threats

_source: Intrusion Detection and Prevention Systems [4.], Intrusion Detection and Prevention Systems [5.]_

**Industry Cloud Platforms**

- industry-specific cloud platforms offers scalability and functionality to unique industry needs.
- a more targeted approach → enhancing the effectiveness of IDPS in specific operational contexts.

_source: Intrusion Detection and Prevention Systems [5.]_

### Product Comparison

| IDPS Solution                        | Throughput     | Vulnerability & Threat Detection | Web & Network Security    | Malware Protection          | Traffic Analysis           | Additional Features          |
| ------------------------------------ | -------------- | -------------------------------- | ------------------------- | --------------------------- | -------------------------- | ---------------------------- |
| Trend Micro TippingPoint NGIPS       | Up to 100 Gbps | Yes                              | Deep pack inspection      | Yes                         | Inbound, outbound, lateral | High availability            |
| Cisco Firepower NGIPS                | Varies         | Embedded security intelligence   | Yes                       | Advanced malware protection | Yes                        | Application analysis         |
| Check Point IPS                      | Up to 1Tbps    | Yes                              | Multiple protocol support | Yes                         | Yes                        | Detailed reporting           |
| Trellix Network Security             | Up to 30 Gbps  | Yes                              | Intrusion prevention      | Yes                         | Yes                        | Self-learning detection      |
| Hillstone S-Series NIPS              | 1 to 12 Gbps   | Yes                              | Antivirus, URL filtering  | Yes                         | Yes                        | Cloud-based management       |
| NSFOCUS NGIPS                        | Up to 20Gbps   | Yes                              | Web security              | Yes                         | Yes                        | DDoS protection              |
| Palo Alto Networks Threat Prevention | -              | Yes                              | Decoder-based analysis    | Advanced malware analysis   | Yes                        | SSL decryption               |
| OSSEC HIDS                           | -              | File integrity monitoring        | -                         | Rootkit/malware detection   | Log-based                  | Compliance auditing          |
| Snort                                | -              | Yes                              | -                         | -                           | Protocol analysis          | Open-source                  |
| Alert Logic MDR                      | -              | Endpoint attack isolation        | -                         | -                           | Real-time visibility       | Managed services             |
| CrowdSec                             | -              | AI/ML                            | -                         | -                           | Behavioral analytics       | Open-source                  |
| SolarWinds Security Event Manager    | -              | -                                | -                         | -                           | Network visibility         | Compliance reporting         |
| Security Onion                       | -              | -                                | -                         | -                           | Comprehensive coverage     | Third-party tool integration |

_source: Intrusion Detection and Prevention Systems [1.]_

## Incident Response

### Definition

Incident response is an essential part of any cybersecurity strategy in any organization. It is a systematic framework on how to respond to incidents that may occur.

### Example

The example of the incident response plan could be a simple case as data breach. The first step would be detecting the breach, which could be done through system monitoring for uncommon activity. After ascertaining the nature of the breach, the next stage will be to investigate the breach on its own as well as the affected data. During the containment phase, the breach will be isolated to avoid its spread. During the termination phase, the malware would be removed, as its cause. The recovery phase was about restoring damaged systems to normal operation. At last, there would be post-incident activities that involve reporting the breach to appropriate agencies and learning from the breach to avoid its recurrence in the future.

### Incidident Response Plans

An Incident Response Plan is a documented, tested, and implemented plan that provides the organization with a structured approach for handling cybersecurity incidents.
Incident Response plans are often tested through exercises known as table-top exercises. These exercises involve simulating a breach and practicing the steps of the incident response plan. They can help identify weaknesses in the plan and ensure that all members know what they have to do in a real scenario.

### Incident Response Life Cycle

<img src="https://criticalfault.com/wp-content/uploads/2022/03/Incident-Response-Lifecycle-black-text.png" alt="drawing" style="width:400px"/>

_source: Incident Response [3.], Incident Response [1.], Incident Response [2.]_

## **Security Information and Event Management (SIEM)**

### **Introduction**

- SIEM combines **security information management (SIM)** and **security event management (SEM)**
- **aggregating** and **analyzing** event data from various sources like applications, endpoints, firewalls, and networks.
- assists in quick identification of cyber threats through real-time threat monitoring and alerting capabilities.

_source: Security Information and Event Management [1.]_

### **Core Functions**

<img src="https://securityintelligence.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2023/07/SIB_SOAR-SIEM_FeatureImage@2x-1200x630.png.webp" alt="drawing" style="width:600px"/>

_source: Security Information and Event Management [6.]_

**Data Correlation and Analysis**

- **Reactive Nature**: Traditional SIEM systems focused on reactive logging and event management.
- **Proactive Shift**: Recent trends show a shift towards more proactive measures, integrating new threat data for better issue identification.
- **AI Integration**: Adoption of AI tools in SIEM systems helps narrow alert windows and automate security responses, moving from reactive to proactive responses.

_source: Security Information and Event Management [3.]_

**Event Log Management**

- **Essential Component**: Involves collection, normalization, and analysis of log data for network visibility and detecting security incidents.
- **Evolution and Challenges**: Modern SIEM solutions are evolving to address dynamic cybersecurity challenges, with an emphasis on cloud-based solutions for flexibility.
- **Combining with SOAR**: Integration with SOAR (Security Orchestration, Automation, and Response) tools extends the usability of SIEM tools, though they remain fundamentally reactive.

_source: Security Information and Event Management [4.]_

_source: Security Information and Event Management [3.]_

**Monitoring and Alerting**

- **Real-Time Monitoring**: SIEM is crucial for real-time monitoring and alerting in cloud and on-premise infrastructures.
- **Automation and AI**: Increasing use of AI and automation in SIEM and SOAR tools to save time and improve efficiency in threat response.
- **Cloud Migration**: There is a growing trend to move SIEM and SOAR solutions to the cloud to support scalable resources and enhance automation capabilities.

_source: Security Information and Event Management [4.], Security Information and Event Management [3.]_

### **Key Capabilities**

- **Threat Analytics**
  - SIEM systems are evolving to address complex security threats, although they primarily focus on logging and event management
- **Cloud Security**
  - The advancement of cloud-based SIEM solutions since 2020 reflects the need for fast, flexible, and customizable security solutions
- **Integrated Compliance**
  - assists in regulatory compliance by continuously collecting and reporting network data in real-time
- **User Behavior Analytics (UBA)**
  - The integration of new threat data in SIEM systems aids in detecting potential phishing efforts and identifying compromise points, aligning with the user behavior analytics approach.
- **Alerting**
- **Incident Response**
  - Combining SIEM with SOAR (Security Orchestration, Automation, and Response) extends the usability of these tools. However, even this combination is reactive rather than proactive, indicating a need for solutions that fill these gaps, such as extended detection and response (XDR).

_source: Security Information and Event Management [3.], Security Information and Event Management [5.]_

### **Benefits**

- **Rapid Detection and Response**
  - shortens the time required to detect and identify threats
- **Forensic Analysis**
  - forensic investigation by providing detailed logs and historical data
- **Diverse Applications**
  - SIEM can be used for operations support, troubleshooting, and other activities revolving around data or historical logs

_source: Security Information and Event Management [5.]_

### **Challenges in Implementing SIEM**

- Requirement of integration with other solutions
- Extensive oversight and control needed from security experts
- Initial and ongoing costs
- Difficulty in differentiating between regular activities and incidents.

_source: Security Information and Event Management [5.]_

### Solution Comparison

| SIEM Solution                     | Best For                        | Key Features                                                               | Deployment Options          | Pricing                                                     |
| --------------------------------- | ------------------------------- | -------------------------------------------------------------------------- | --------------------------- | ----------------------------------------------------------- |
| Splunk Enterprise Security        | IT Observability                | Risk classification, threat intelligence, flexible deployment              | Various                     | Starting at $150/month for 1GB data/day                     |
| IBM Security QRadar SIEM          | Global Reach, Large Enterprises | AI and UBA integration, compliance resources, extensive integrations       | On-premises/Cloud           | Community: Free; Software: ~$320/month; SaaS: ~$2,340/month |
| Securonix Unified Defense SIEM    | Future-Looking Vision           | Cloud-native platform, integrated SOAR, long-term search capabilities      | Cloud, On-premises, Hybrid  | Contact for pricing; SaaS available                         |
| Exabeam Fusion                    | Log Storage and Searchability   | UEBA for insider threats, smart timelines, full indexing for log ingestion | SaaS cloud offering         | Contact for pricing; SaaS available                         |
| LogRhythm SIEM Platform           | On-Premises SIEM                | Advanced analytics, prebuilt playbooks, threat detection                   | On-premises                 | Starts under $30,000                                        |
| ManageEngine Log360               | Small Businesses                | Automated security scanning, compliance auditing, threat intelligence feed | Windows Server environments | Contact for pricing                                         |
| Datadog Security Monitoring       | Customization                   | Real-time security monitoring, log management, 600+ integrations           | Cloud-native                | 14-day free trial                                           |
| Logpoint SIEM                     | -                               | AI-driven anomaly detection, UEBA, integrated SOAR                         | Linux, AWS, SaaS            | -                                                           |
| SolarWinds Security Event Manager | Log Aggregation                 | Wide range of log management features                                      | -                           | -                                                           |

_source: Security Information and Event Management [2.]_

## References

**Overview**

1. https://picussecurity.com/resource/glossary/what-is-blue-teaming
2. https://csrc.nist.gov/glossary/term/blue_team
3. **img:** https://lh6.googleusercontent.com/rx-60dcB6d-PkM2PyP3WGhJHMs64U9MZqYZvURexA_uXryKYdBLsgjHpvFsXz1khxNdqXxiQsziaTQ3_-Beyb-mlsmQvelSVw6ADi8TqSB7XtWxa-N01TWGoeJjvpVUXmGsCiP5UBVitXQQ_erdNcns

**Firewalls**

1. https://www.cisco.com/c/en/us/products/security/firewalls/what-is-a-firewall.html
2. https://www.checkpoint.com/cyber-hub/network-security/what-is-firewall/
3. https://www.simplilearn.com/ice9/free_resources_article_thumb/Firewall_1.png
4. https://www.simplilearn.com/ice9/free_resources_article_thumb/Firewall_2.png
5. https://www.simplilearn.com/tutorials/cyber-security-tutorial/what-is-firewall

**Intrusion Detection and Prevention Systems**

1. https://www.esecurityplanet.com/products/intrusion-detection-and-prevention-systems/
2. https://www.hindawi.com/journals/js/2023/6048087/
3. https://www.comparitech.com/net-admin/ids-vs-ips/
4. https://kirkpatrickprice.com/blog/idps-techniques/
5. https://rossum.ai/blog/2023-idp-trends/#:~:text=,continue

**Incident Response**

1. https://www.techtarget.com/searchsecurity/definition/incident-response#:~:text=Incident%20response%20is%20an%20organized,recovery%20time%20and%20total%20costs.
2. https://www.ibm.com/de-de/topics/incident-response
3. **img:** https://criticalfault.com/wp-content/uploads/2022/03/Incident-Response-Lifecycle-black-text.png

**Security Information and Event Management**

1. https://www.selecthub.com/siem/siem/
2. https://www.esecurityplanet.com/products/siem-tools/#:~:text=,Premises
3. https://securityintelligence.com/articles/soar-and-siem-in-2023-key-trends-and-new-changes/
4. https://www.manageengine.com/log-management/siem/siem-functions.html
5. https://www.itsasap.com/blog/pros-cons-siem
6. **img:** https://securityintelligence.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2023/07/SIB_SOAR-SIEM_FeatureImage@2x-1200x630.png.webp
