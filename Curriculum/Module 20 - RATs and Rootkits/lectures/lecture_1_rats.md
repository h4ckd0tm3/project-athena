# Remote Access Trojans
## What is a RAT

"A RAT (Remote Access Trojan) is malware an attacker uses to gain full administrative privileges and remote control of a target computer. RATs are often downloaded along with seemingly legitimate user-requested programs -- such as video games -- or are sent to their target as an email attachment via a [phishing](https://www.techtarget.com/searchsecurity/definition/phishing) email".

"Once the host system is compromised, intruders use a [backdoor](https://www.techtarget.com/searchsecurity/definition/back-door) to control the host, or they may distribute RATs to other vulnerable computers and establish a [botnet](https://www.techtarget.com/searchsecurity/definition/botnet)".

(Yasar 2022)

### How is it working

RATs can be deployed through a framework like Metasploit, the Hacker compromises an open port on the target computer over which the Hacker gets a connection to the target PC.![](https://lh7-us.googleusercontent.com/9C6Pvq9wSrhaP-BytOUXIKvXc9o6JE_L75oHslnWX9rU2RHirTwz6Zcnhj_9oTcajEpUwBsySqWUWQhmk7fjLtzBRQKFM-wTXH-0Na-cBBq4GKrU24LQFBx9-KE0of4PkAdZAF6vchWciAICxqYS7Q4)

RATs can also be installed over phishing mails, "legit" software or torrent files. Sometimes RATs get installed after the hackers get first initial access.

(see Yasar 2022)

**Analyze real-world RAT attacks and identify the techniques used by attackers**

"In 2014, the Hacking Team, an Italian cybersecurity firm, fell victim to a RAT attack themselves. The attackers exploited vulnerabilities in their systems and stole sensitive data, including client information and zero-day exploits. This incident served as a stark reminder that even those tasked with defending against cyber threats are not immune from being targeted". (Sankaran, 2023)

This is a perfect example of how difficult it can be for even a specialized company to avoid a vulnerability in its infrastructure.

The next example is in connection with NotPetya, one of the most terrifying Ransomware attacks in history.

NotPetya was built up with different components, of which one took advantage of a vulnerability in the SMB protocol, called EternalBlue or CVE-2017-0144(see Positive Technologies, 2021). Because of the EternalBlue vulnerability, NotPetya could spread so immensely fast and infected thousands of computers. Even 6 years later, in 2023, EternalBlue is still used for security lessons, to show a pretty easy way to compromise a computer and gain full access to it.

"Another notable example is the case of Blackshades RAT. In 2014, law enforcement agencies across the globe conducted a joint operation to dismantle the Blackshades network. This remote administration tool was used by hackers worldwide to perform various illegal activities, such as spying on victims through their webcams and stealing personal information".

(Sankaran, 2023)

To conclude all these examples, it should be clear how damaging RATs can be for normal users and even more for companies.

**Implement and use tools to detect and defend against RATs**

It can be pretty difficult to defend against RATs, because of the fact that they can often operate completely in the background processes of the computer. Even though it can be hard to detect them, there are several ways to do that:

- One of the most common ways to defend against RATs is Anti-Malware Software. The software scans the PC to search for known RATs and removes them. The efficiency of this process is determined by the antivirus software used and its database of known RATS.

- A way more complex tool is an IDS(Intrusion Detection System). An IDS scans the network traffic for suspicious activities and sends out an alert if something was found. RATs need to get a connection with the victim's PC, this connection process can be detected via an IDS. An IDS is harder to implement, but for beginners Snort could be a good tool to start with.

- Another powerful tool is a FIM(File Integrity Monitoring). This solution validates the integrity of a given environment, namely, it checks to see whether the contents of your site's files have changed unexpectedly. With FIM it's hard for a malware to change something on the file system, because the files are continuously checked on their integrity, especially the critical system files. (see Robert Abela , 2023)

So it can be said that there are tools to defend against RATs. It's also important to update software on the computer, as well as informing on recently discovered vulnerabilities. Most RATs get installed by pressing on suspicious links in mails, so having a healthy skepticism is important.

**Bibliography:**

- Yasar, K. (2022) What is a rat (Remote Access Trojan)?: Definition from TechTarget, Security. Available at: https://www.techtarget.com/searchsecurity/definition/RAT-remote-access-Trojan (Accessed: 16 November 2023).

- Sankaran, S. (2023) Remote access trojans (rats), LinkedIn.
  Available at: https://www.linkedin.com/pulse/remote-access-trojans-rats-subramaniam-sankaran (Accessed: 16 November 2023).

- Positive Technologies (2021) Everything you wanted to know about Notpetya but were afraid to ask, ptsecurity.com.
  Available at: https://www.ptsecurity.com/ww-en/about/news/everything-you-wanted-to-know-about-notpetya-but-were-afraid-to-ask/ (Accessed: 16 November 2023).

- Robert Abela  (2023) What's file integrity monitoring? (and why you need to know more about it), Kinsta®.
  Available at: https://kinsta.com/blog/file-integrity-monitoring/ (Accessed: 20 November 2023).

- Kurt Baker - November 8, 2023 // Explain Rootkits are and how they work
  Available at: <https://www.crowdstrike.com/cybersecurity-101/malware/rootkits/>
  (Accessed: 21 November 2023)

- Mary E. Shacklett - October 2021 // Describe the common features and functionalities of RATs and Rootkits
  Available at: https://www.techtarget.com/searchsecurity/definition/rootkit
  (Accessed: 26 November 2023)

- Unknown - 3 November 2021 // Analyze real-world Rootkit attacks and identify the techniques used by attackers
  Available at: https://www.ptsecurity.com/ww-en/analytics/rootkits-evolution-and-detection-methods (Accessed 26 November 2023)
