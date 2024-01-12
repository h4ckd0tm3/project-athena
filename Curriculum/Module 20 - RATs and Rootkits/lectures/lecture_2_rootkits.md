## What is a Rootkit?

Is a Malware that is designed to give the threat actor control over a computer network or application. Once the malware is activated it sets up a backdoor exploit which could come with additional malware such as:

- ransomware, bots, keyloggers or trojans.

"Rootkits can stay undetected for up to several years."

______________________________________________________________________

**Known Rootkit Types:**

Firmware Rootkits:

- UEFI Rootkit

- Cloaker

- VGA rootkit

Kernel  mode rootkits:

- Spicy Hot Pot

- FU

- Knark

Kernel  mode rootkits:

- Stoned Bootkit

- Olmasco

- Rovnix

Kernel  mode rootkits:

- Vanquish

- Hacker Defender

- Aphex

______________________________________________________________________

**Rootkit example: Spicy hot pot**

Spicy Hot Pot malware uploads users' memory dumps and adds a local update feature. To enhance stealth, it introduces two kernel-mode drivers during infection, a step beyond typical browser hijackers.

These malicious drivers perform functions that can:

- Intercept and modify user input and output requests

- Enable the malicious actor to update the malware any way they wish\
  ![](https://lh7-us.googleusercontent.com/hcHOvWBZNURrXddZqbI8V5FiwvFcDDVhOEoZHM8o3zKxTD4H0U5EkM0x0A-mqPHOx-FpU94OCeOTjpgtwGHA_Tgyh_WEFfJa21I0NJjmoOVunYme9RPzjVN8XhRRtQ5qmXs4PgwZZ58uESznz5o5WrY)

Describe the common features and functionalities of RATs:

Because a RAT provides a backdoor and enables administrative control, it empowers the intruder to do almost anything on the targeted computer, including the following:

- Monitor user behavior, such as keystrokes, through [keyloggers](https://www.techtarget.com/searchsecurity/definition/keylogger) and spyware.

- Access confidential information, such as credit card and Social Security numbers.

- Activate a system's webcam and record video.

- Take screenshots.

- Distribute viruses and malware, as well as launch [ransomware](https://www.techtarget.com/searchsecurity/definition/ransomware)

- Format drives.

- Delete, download or alter files and file systems.

(see Yasar 2022)

So generally it can be said that RATs are designed to give the User complete control over the victim's computer. Things like the activation of webcams or Keyloggers are part of Spyware, although the manipulation of files makes it a potential Ransomware. Because of all these facts it's obvious that RATs have a wide variety of potential use cases.

**Describe the common features and functionalities of Rootkits:**

- Privilege Escalation:

- Rootkits aim to escalate their privileges to gain the highest level of access on a system, such as root or administrator privileges.

- By doing so, they can control all aspects of the operating system and compromise the security of the entire system.

- Persistence:

- Rootkits are persistent, meaning they are designed to survive system reboots and remain active on the compromised system.

- They often use techniques like modifying system files or registry entries to ensure that they are loaded during the system startup.

- Backdoor Functionality:

- Rootkits frequently include backdoor functionality, allowing remote attackers to access the compromised system without being detected.

- This backdoor access can be used for various malicious purposes, such as stealing sensitive information, launching attacks, or turning the compromised system into a part of a botnet.

- This may involve hiding files and processes, manipulating system logs, or using rootkit-specific mechanisms to conceal their activities.

- User-mode Rootkits:

- Other rootkits operate in user mode, making them less powerful but also less detectable.

- User-mode rootkits may achieve their goals by modifying user-level processes and system libraries.

- Anti-Antivirus Techniques:

- Rootkits often include mechanisms to evade detection by antivirus and security software.

- This may involve actively monitoring and responding to security software scans or manipulating system components to avoid detection.

**Analyze real-world Rootkit attacks and identify the techniques used by attackers**

![](https://lh7-us.googleusercontent.com/7DD-x8e-NKRXM3LaR8ExU8VJcgaAVnyZeAt4L8UNoRDVjtt5CrhOG3BCk-CczI_4myFBSVsKnR8JTUxlGUumOu0J-iSj663ZSbHx3KcVNe3A5w2aV-hMZNfhuO8pHfCXP9U6RRN9O98J2stI9MdzFoc)

Some of these real rootkit attacks summed up:

**ZeroAccess (or ZeroAccess Rootkit):**

- ZeroAccess is a sophisticated rootkit that primarily functions as a click-fraud and Bitcoin mining botnet. It often spreads through drive-by downloads and social engineering techniques. Its complexity and ability to avoid detection have made it a significant threat.

**Hit Kit:**

- As of my last knowledge update in January 2022, "HitKit" doesn't refer to a well-known rootkit or malware. It's possible that it's a new term or a specific reference within a certain context.

**Ebury:**

- Ebury is not a rootkit but rather a sophisticated backdoor Trojan designed for Linux servers. It is used by attackers to gain unauthorized access and control over Linux systems.

**Flame:**

- Flame, also known as Flamer or sKyWIper, is a highly complex and sophisticated cyber espionage malware that targeted primarily Middle Eastern countries. It had various capabilities, including data theft, audio recording, and taking screenshots.

**Necurs:**

- Necurs is not a rootkit but a notorious botnet that has been involved in various cybercriminal activities, including spam email campaigns, distributing ransomware, and participating in distributed denial-of-service (DDoS) attacks.

**Implement and use tools to detect and defend against Rootkits**

To counter rootkit malware, organizations  should implement advanced endpoint protection solutions using technologies like artificial intelligence, telemetry, and real-time response capabilities. These solutions go beyond traditional measures and include continuous monitoring of endpoint BIOS to prevent kernel rootkit attacks.