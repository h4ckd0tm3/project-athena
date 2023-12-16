## Cryptographic Attacks

Here you'll find an overview on the most common cryptographic attacks, and how you can prevent them.

### Brute Force Attacks

The brute-force attack describes an attack where the attacker tries to guess the key by trying every possible key-combination.
Assuming a key can only consist out of 4 letters, the attacker will start trying to decrypt the data using the keys 'A', 'B', 'C', 'D'... up to "ZZZZ", until it finds the desired key.
While this attack is suitable for short key lengths, it becomes nearly impossible to guess a key who consists of many different letters.
For strong keys, the attacker needs to attempt 256^length key combinations until he is guaranteed to find the desired key, whereas the average amount of key combinations is about 256^(length - 1) keys.
In order to protect against brute-force attacks, you should choose a strong key, consisting of lower- and upper-case letters, numbers and special symbols. 

### Dictionary Attacks

For dictionary attacks, the attacker tries to guess the key by iterating through a pre-existing dictionary of possible keys.
There are many pre-existing dictionaries availabe for download, containing many frequently used keys.
Dictionary attacks are suitable for shorter keys, as those are more likely to be present in a dictionary.
In order to avoid your keys being guessed via dictionaries, you are encouraged to use long keys, consisting of different letters, numbers and symbols.

### Rainbow Tables

Rainbow table attacks involve the use of precomputed tables that map plaintext passwords to hash values.
Instead of repeatedly hashing potential passwords during an attack, the attacker can quickly look up the hash in a precomputed table to find the corresponding plaintext password.
Rainbow tables offer a tradeoff between performance and storage:
- Compared to brute-force attacks, they require much less performance.
- Compared to dictionary attacks containing a combination of nearly every single possible key, they require much less storage.
To prevent rainbow table attacks, you should use techniques such as salting. Salting involves adding random data to the password before hashing it. The salt should be changed regulary, ideally after each password.
That way, rainbow tables become useless, as the hash of the password cannot directly lead to the original password.

### Side-Channel Attacks

Side-channel attacks focus on exploiting information leaked during the execution of cryptographic algorithms. This could include timing information, power consumption, or electromagnetic radiation.
By analyzing these side-channel leaks, an attacker may gain insights into the cryptographic keys being used.
To defend against side-channel attacks, cryptographic implementations should be designed with countermeasures.
This might involve constant-time algorithms that do not reveal information through timing variations.
