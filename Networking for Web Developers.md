# KMetsa

# [Networking for Web Developers](https://learn.udacity.com/courses/ud256)


 ## HTTP LINUXI KÄSUREAL / From Ping to HTTP

 Konspekti kirjutamisel kasuta formaate ja käske :

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

## Cloudshell
sudo apt-get update && sudo apt-get upgrade alustuseks (&& käivitab esimese ning seejärel teise käsu)
sudo apt-get install netcat-openbsd tcpdump traceroute mtr 

- ip addrs show ethø   
- ip aadressi hankimine
- Ethernet seadme nimi on harilikult eth0, eth1, eth2, jne.
IP aliased on lisa interfeisid füüsilisel interfeisil: eth0:1, eth0:2, eth2:1, jne
- Ethernet on juhtmetega kohtvõrgu tehnoloogia, mis vastab Elektri- ja Elektroonikainseneride Instituudi standardile

- ip route show
- ping −c3 8.8.8.8 
  -- google üks aadressidest
  -- ping on cmd võrguühenduse testimiseks
  -- -c3 saadab kolm paketti testimiseks
  --sudo apt-get install iputils-ping kui ping ei tööta
- internetis liiguvad käsud ja info nn pakkidena/sõnumitena
- pingida saab kõiki arvuteid/servereid mis kasutavad  op süsteeme mis toetavad interneti (Windows,linux,mac jne)


## host -t aaaa google.com
## host -t mx udacity.com
## printf 'HEAD / HTTP/1.1\r\nHOST: www.udacity.com \r\n\r\n' \ |ne www.udacity.com 8ø
printf 'HEAD / HTTP/1.1\r\nHost: en.wikipedia.org\r\n\r\n' | nc en.wikipedia.org 80
- nagu echo 
- nc on netcat tööriist
- en.wikipedia.org 80 on wikipedia server
- | toru mis ütleb ,et vöta rea esimene osa sõnumist ja saada aadressile


tcdump -n -c5 -i ethø port 22
traceroute www.udacity.com
mtr uidacity.com

## koodi kirjutamisel alljärgnev kood 

<?php

header("Location: https://www.examplecom/", true, 302);

exit();

?>
