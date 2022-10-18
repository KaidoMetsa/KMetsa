# KMetsa :desktop_computer:

# [Networking for Web Developers](https://learn.udacity.com/courses/ud256)


 ## HTTP LINUXI KÄSUREAL / From Ping to HTTP :keyboard:
 
 [Konspekti kirjutamisel kasuta formaate ja käske](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
 
<!-- 

# The largest heading (#)
## The second largest heading (##)
###### The smallest heading (#####)
(**This is bold text**)
> Text that is a quote


> Some basic Git commands are:
```
git status
git add
git commit
```
 -->
 
## [Cloudshell ](https://cloud.google.com/shell)

Käsud

 - sudo apt-get update && sudo apt-get upgrade alustuseks (&& käivitab esimese ning seejärel teise käsu)
 - sudo apt-get install netcat-openbsd tcpdump traceroute mtr 

1. ip addrs show ethø   
- ip aadressi hankimine
       - Ethernet seadme nimi on harilikult eth0, eth1, eth2, jne.
IP aliased on lisa interfeisid füüsilisel interfeisil: eth0:1, eth0:2, eth2:1, jne
- Ethernet on juhtmetega kohtvõrgu tehnoloogia, mis vastab Elektri- ja Elektroonikainseneride Instituudi standardile

- ip route show
1. ping −c3 8.8.8.8 
- google üks aadressidest
- ping on cmd võrguühenduse testimiseks
- -c3 saadab kolm paketti testimiseks
- sudo apt-get install iputils-ping kui ping ei tööta
- internetis liiguvad käsud ja info nn pakkidena/sõnumitena
- pingida saab kõiki arvuteid/servereid mis kasutavad  op süsteeme mis toetavad interneti (Windows,linux,mac jne)


2. host -t aaaa google.com
3. host -t mx udacity.com
4. ## printf 'HEAD / HTTP/1.1\r\nHOST: www.udacity.com \r\n\r\n' \ |ne www.udacity.com 8ø
5. printf 'HEAD / HTTP/1.1\r\nHost: en.wikipedia.org\r\n\r\n' | nc en.wikipedia.org 80
- nagu echo 
- nc on netcat tööriist
- en.wikipedia.org 80 on wikipedia server
- | toru mis ütleb ,et vöta rea esimene osa sõnumist ja saada aadressile
- nc wikipedia ees ütleb mis aadressile ühendada

## Printf ja NC

**"printf" is the name of one of the main C output functions, and stands for "print formatted". printf format strings are complementary to scanf format strings, which provide formatted input**

6. tcdump -n -c5 -i ethø port 22
7. traceroute www.udacity.com
8. mtr uidacity.com

![alt text]([https://github.com/[username]/[reponame]/blob/[branch]/image.jpg?raw=true](https://github.com/KaidoMetsa/KMetsa/blob/main/LayerProtocolConcepts.png?raw=true))

| Layer | Protocol | Concepts |
| ------------- | ------------- | ------------- |
| Application | HTTP, SSH  | URLs,Paroolid |
|             |    DNS     |               |
| Transport | TCP,UDP  | Pordi numbrid,seansid\sessioonid |
|             |    ICMP    |               |
| Internet  | IP, IP aadressid, routes|
|             |    ARP     |               |
|Hardware| Wifi,Ethernet,DSL| Signal strenth,access points |



## koodi kirjutamisel alljärgnev kood 

<?php

header("Location: https://www.examplecom/", true, 302);

exit();

?>


