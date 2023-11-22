# 2. WiFi Security Fundamentals

## 2.1 Introduction
In today's digital age, where wireless networks are ubiquitous, understanding the principles of WiFi security is not just a technical necessity but a critical skill for protecting data and maintaining privacy.

## 2.2 Common Threats
### 2.2.1 Passive Attacks
Passive attacks in the context of wireless security are a type of cyberattack where the attacker intercepts data transmitted over a wireless network without altering it or sending data back. These attacks are particularly insidious because they can be difficult to detect.

- **Eavesdropping:** The most common form of passive attacks. Attackers listen to the wireless transmissions between devices. The goal is to capture sensitive information like passwords, credit card numbers, or confidential communications.
- **Sniffing:** Attackers use software tools known as network sniffers to capture data packets transmitted over a wireless network. These tools can capture a significant amount of data which can then be analyzed to extract useful information.

**Common Attacks**
- **Packet Sniffing:** Using software to log traffic passing over a digital network. In wireless networks, this involves capturing packets that are broadcast through the air.
- **Network Monitoring:** Observing network traffic to identify patterns, like the timing of communications or the identification of devices and servers, which can be used for more targeted attacks.

**Defense Mechanisms**
- **Strong Encryption:** Using robust encryption protocols like WPA3 helps in preventing attackers from deciphering the intercepted data. AES, used in WPA2 and WPA3, is particularly effective against passive attacks.
- **Network Security Policies:** Implementing and enforcing strong network security policies, including regular updates to security protocols and educating users about secure practices.
- **Monitoring and Anomaly Detection:** Regularly monitoring network traffic for anomalies and employing intrusion detection systems can help in identifying potential passive eavesdropping.
- **Virtual Private Networks:** Using VPNs can encrypt data over the network, making it difficult for attackers to glean any useful information from intercepted data.

### 2.2.2 Active Attacks
Active attacks in wireless security involve unauthorized access or manipulation of the wireless network or the data transmitted over it. Unlike passive attacks where the attacker only eavesdrops, active attacks include actions that alter, disrupt, or destroy data and network functionality.

- **Data Manipulation:** This includes altering or corrupting data packets during transmission. It could be as simple as modifying messages or as malicious as injecting harmful data or malware into the network.
- **Network Interference:** This involves disrupting the normal functioning of the network. It can range from flooding the network with traffic (DoS attacks) to creating unauthorized access points (Evil Twins).
- **Identity Spoofing:** Attackers may impersonate a legitimate user or device on the network, allowing them to bypass security measures and gain unauthorized access to sensitive data.
- **Session Hijacking:** This involves taking control of a user's connection session to intercept or manipulate the data being transmitted.

**Common Attacks**
- **Man-in-the-Middle (MitM) Attacks:** The attacker intercepts communication between two parties, either to eavesdrop or to impersonate one of the parties, making it appear as normal exchanges.
- **Cracking Attacks:** The attacker uses tools to crack weak or default WiFi passwords.
- **Denial of Service (DoS) Attacks:** These attacks aim to overwhelm the network with traffic, rendering it unusable.
- **Evil Twin Attacks:** Setting up a rogue WiFi access point that appears legitimate to users, attackers can gather sensitive data from anyone who connects to it.
- **Packet Injection:** Injecting malicious packets into legitimate network streams can disrupt or take control of communication.

**Defense Mechanisms**
- **Strong Authentication Protocols:** Implementing robust authentication mechanisms like WPA3-Enterprise can help in preventing unauthorized access to the network.
- **Firewalls and Intrusion Detection Systems (IDS):** These systems monitor network traffic for signs of unusual or malicious activity and can block unauthorized access attempts.
- **Network Segmentation:** Dividing the network into segments can contain the impact of an active attack, preventing it from spreading across the entire network.
- **Regular Software Updates:** Keeping all network hardware and software updated can protect against known vulnerabilities that could be exploited by attackers.

## 2.3 Conclusion
In conclusion, this lecture highlights the critical importance of understanding and mitigating both passive and active attacks in wireless networks. Emphasizing the necessity of strong encryption, vigilant network monitoring, and robust security protocols like WPA3, it underscores that effectively securing a WiFi network involves both technical measures and informed user practices. This knowledge is indispensable in an era where wireless connectivity is pervasive and integral to our daily digital interactions.

# Sources
- [https://en.wikipedia.org/wiki/Wireless_security](https://en.wikipedia.org/wiki/Wireless_security)
