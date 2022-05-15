# 👩‍💻✉🗝 Attack is the best defense

## 0. ARP spoofing and sniffing unencrypted traffic

![image](https://user-images.githubusercontent.com/85373056/168468856-daa83596-8d06-47ed-a3e5-42f848993565.png)

Security is a vast topic, and network security is an important part of it. A lot of very sensitive information goes over networks that are used by many people, and some people might have bad intentions. Traffic going through a network can be intercepted by a malicious machine pretending to be another network device. Once the traffic is redirected to the malicious machine, the hacker can keep a copy of it and analyze it for potential interesting information. It is important to note that the traffic must then be forwarded to the actual device it was supposed to go (so that users and the system keep going as if nothing happened).

Any information that is not encrypted and sniffed by an attacker can be seen by the attacker - that could be your email password or credit card information. While today’s network security is much stronger than it used to be, there are still some legacy systems that are using unencrypted communication means. A popular one is telnet.
In this project, we will not go over ARP spoofing, but we’ll start by sniffing unencrypted traffic and getting information out of it.

Sendgrid offers is an emailing service that provides state of the art secure system to send emails, but also supports a legacy unsecured way: telnet. You can create an account for free, which is what I did, and send an email using telnet

A user_authenticating_into_server script was written that performs the authentication steps I just showed above. The mission is to run user_authenticating_into_server locally on the machine and, using tcpdump, sniff the network to find the ***password***. Once found, paste the password into the ***0-sniffing*** response file. This script will not work in a Docker or Mac OS container, use your bum Ubuntu machine or any other Linux machine.

**DISCLAIMER**: You will probably see Authentication failed: wrong username/password in the tcpdump trace. It's normal, the user was removed from the Sendgrid account. Unable to verify password found via Sendgrid, only fix system can!

## Command to capture data from telnet using tcpdump
```
tcpdump -qns 0 -X
```
Flag ***-X*** -> Print the data of each packet (minus its link level header) in hex and ASCII.

## 📚 Recourses
- [Capture data from telnet using tcpdump](https://stackoverflow.com/questions/62365130/how-to-capture-password-from-tcpdump-pcap-result)
- [Base64 Encryption/Encoding](https://www.computersecuritystudent.com/SECURITY_TOOLS/SNIFFER/lesson1/index.html)

