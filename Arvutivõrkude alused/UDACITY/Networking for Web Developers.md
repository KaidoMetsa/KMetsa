# KMetsa :desktop_computer:

# [Networking for Web Developers](https://learn.udacity.com/courses/ud256)


 ## HTTP LINUXI KÄSUREAL / From Ping to HTTP :keyboard:
 
 [Konspekti kirjutamisel kasuta formaate ja käske](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
 
 6/10/22
 
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

Käsud cloudshelli alustamisel :

 > sudo apt-get update && sudo apt-get upgrade alustuseks (&& käivitab esimese ning seejärel teise käsu)
 > sudo apt-get install netcat-openbsd tcpdump traceroute mtr 

Või 

>sudo apt-get update && sudo apt-get install netcat-openbsd tcpdump traceroute mtr iputils-ping lsof -y 


Käsud :

1. > ip addrs show ethø   
- ip aadressi hankimine
       - Ethernet seadme nimi on harilikult eth0, eth1, eth2, jne.
IP aliased on lisa interfeisid füüsilisel interfeisil: eth0:1, eth0:2, eth2:1, jne
- Ethernet on juhtmetega kohtvõrgu tehnoloogia, mis vastab Elektri- ja Elektroonikainseneride Instituudi standardile
- ip route show
- 
1. > ping −c3 8.8.8.8 
- google üks aadressidest
- ping on cmd võrguühenduse testimiseks
- -c3 saadab kolm paketti testimiseks
- sudo apt-get install iputils-ping kui ping ei tööta
- internetis liiguvad käsud ja info nn pakkidena/sõnumitena
- pingida saab kõiki arvuteid/servereid mis kasutavad  op süsteeme mis toetavad interneti (Windows,linux,mac jne)
- ping -c3 kmetsa.webhosting.tptlive.ee

2. > host -t aaaa google.com
3. > host -t mx udacity.com
4. > ## printf 'HEAD / HTTP/1.1\r\nHOST: www.udacity.com \r\n\r\n' \ |ne www.udacity.com 8ø
5. > printf 'HEAD / HTTP/1.1\r\nHost: en.wikipedia.org\r\n\r\n' | nc en.wikipedia.org 80
- nagu echo 
- nc on netcat tööriist
- en.wikipedia.org 80 on wikipedia server
- | toru mis ütleb ,et vöta rea esimene osa sõnumist ja saada aadressile
- nc wikipedia ees ütleb mis aadressile ühendada

## Printf ja NC

**"printf" is the name of one of the main C output functions, and stands for "print formatted". printf format strings are complementary to scanf format strings, which provide formatted input**

6. > tcdump -n -c5 -i ethø port 22
7. > traceroute www.udacity.com
8. > mtr uidacity.com

![LCP](https://github.com/KaidoMetsa/TPT/blob/main/Pildid/LayerProtocolConcepts.png?raw=true)

| Layer | Protocol | Concepts |
| ------------- | ------------- | ------------- |
| Application | HTTP, SSH  | URLs,Paroolid |
|             |    DNS     |               |
| Transport | TCP,UDP  | Pordi numbrid,seansid\sessioonid |
|             |    ICMP    |               |
| Internet  | IP, IP aadressid, routes|
|             |    ARP     |               |
|Hardware| Wifi,Ethernet,DSL| Signal strenth,access points |


terminali 1 - nc -l -p 1299 
terminali 2 nc localhost 1299
omavahel suhtlevad ühes pordis


# koodi kirjutamisel alljärgnev kood 

?php

header("Location: https://www.examplecom/", true, 302);

exit();

?

## Pordi kuulamine
- gcloud cloud-shell ssh cloudshelli käsk ,et sisse minna kuulama
- Man nc
- localhost rääkimine nc localhost (pordi number)
- kõrgem port mida saab kuulata on 6556. madalaim 0
-  65536, but only ports numbers 0 to 1024 are reserved 

## sudo lsof -i  näitab mis programmid antud hetkel seal pordis kuulavad


#IP AADRESSID 20/10/22

Cloudshellis 
sudo apt-get update && sudo apt-get install netcat-openbsd tcpdump traceroute mtr iputils-ping lsof -y

  - Kill %% kustutab ja peatab kogu ettevõtmise
  - Control + z - paus
  - fg toob tagasi esiplaanile
  - bg - viib taustale
  - Control + c katkestab 

 - ssh kasutamine
 - Github

Avalik & salajane võti
 - Autentimine
 - Autoriseerimine
 - Krüpteerimine
 - Avaliku võtmega krüpteerime andmed (avalikuga enam avada ei saa).
 - salajasega saame avada
 - X.509 - public key krüpteerimine (PKI)
 - SSH võti - kahe osaline 

Webhostingus tee public key -manage-accept
ava ssh
Vaata oma kasutajanime ja shared local ip paremalt
ava Git cmd 
webhostingus ava terminal ja paste kood ,et näha koodi
Putty tööriist

[Softoban SSH Juhend](https://et.softoban.com/ssh-key-setup-github)

SSH -võtme lisamine GitHubi kontole
Logige oma terminali sisse SSH kaudu.

Looge võtmepaar, käivitades järgmise käsu, asendades oma GitHubi e -posti aadressi hinnapakkumiste vahel:

> #ssh-keygen -trsa-b 4096 -Csinu email@domeen.com
Kui teil palutakse sisestada fail, kuhu võti salvestada, vajutage Sisenema selle vaikimisi salvestamiseks. Kui soovite kasutada mõnda muud asukohta, saate siin ka kasutatava tee esitada.

Sisestage viipale turvaline parool, mida kasutatakse võtme autentimisel, ja kinnitage see. Te ei saa seda parooli isegi seadistada, kui te ei vaja täiendavat kinnitust. Nüüd olete loonud SSH võtmepaari. Märkige kindlasti üles näiteks avaliku võtme ja privaatvõtme failid.

Ssh võtme lisamiseks GitHubisse peate võtma avaliku võtme koopia ja selle tegemiseks võite kasutada allolevat käsku ssh.

#kass /Kodu/kasutaja/.ssh/id_rsa.pub
Kui olete lõikepuhvrisse või mõnda kohalikku tekstifaili sisu kopeerinud, saame võtme Githubi kontole lisamiseks kasutada järgmisi samme.

Peate oma kasutaja/pääsme abil Githubi kontole sisse logima
Klõpsake profiilipildil ja valige rippmenüüst Seaded.
Valige vasakpoolses menüüs SSH ja GPG võtmed
Esimese või mõne muu võtme lisamiseks klõpsake nuppu Uus SSH -võti

Väljale Pealkiri peate lisama sildi, mida mäletate. (Ma kasutasin Sumeshi MacBook Airi).

Võite kasutada mis tahes sõna ja ainus asi, mille eest peate hoolitsema, peate veenduma, et see aitab teil tuvastada masina, millel see võti on loodud.

Võtmeväljale lisage ülaltoodud võti, mille saate käsuga cat /home/user/.ssh/id_rsa.pub, mis algab sõnaga ssh-rsa

Klõpsake nuppu Lisa SSH -võti.
Kui küsitakse, kinnitage oma GitHubi parool, mida kasutatakse kinnitamiseks.

Nüüd näete loetletud võtit, mille olete lisanud pealkirja nimesse. Ja peate tegema sama protseduuri iga arvuti, reaalajas serverite arendaja/lavastusserveri jaoks, mis peab teie hoidlatesse juurde pääsema.

Kontrollige oma ühendust kohaliku masina ja Githubi vahel
Avage uus ssh -terminal ja veenduge, et lülitate selle kasutaja juurde, kelle jaoks olete ssh -võtmepaari loonud. Githubi kontoga ühenduse loomiseks ssh -klahvi kaudu peate sisestama alloleva ja vajutama sisestusklahvi # ssh -T[e -post kaitstud]

Kui ühendate selle seadmega esmakordselt, näete tulemust nagu allpool ja peate sel juhul sisestama Jah:

Hosti „github.com (192.30.1.1)” autentsust ei saa kindlaks teha.
RSA võtme sõrmejälg on SHA256: asdnasd871321312kjaksjdasdijsaidjsad1Rk3ndm.
Kas olete kindel, et soovite jätkata ühendamist (jah/ei)? jah
Hoiatus: 'Github.com, 192.30.30.1' (RSA) on jäädavalt lisatud teadaolevate hostide loendisse.
Sisestage jah
Vajutage sisestusklahvi
Näete väljundit järgmiselt:

Tere kasutaja! Olete edukalt autentinud, kuid GitHub ei anna juurdepääsu shellile.
Kui ülaltoodud kasutaja on õige ja kuvatakse sama kasutajana, mida proovisite lisada, on kõik korras ja olete lõpetanud sith -võtme seadistamise Githubiga! Kui loa saamisest keeldutakse, peame ülaltoodud sammud ristkontrollima ja veenduma, et olete teinud kõik ülaltoodud dokumendi kohaselt. Kui vajate sel juhul abi, võite minuga alati ühendust võtta.



 ## IP aadress

Kuna internetis liigub info nn pakkidena on igal pakil aadressiks IP aadress ning sihtpunktis kuhu ta jõudma peab on IP aadress.
ping "aadress" terminalis annab pingitava IP aadressi ning iseenda aadressi.

The Domain Name System (DNS) On süsteem kus DNS haldab registrit ning annab aadressi veebilehtedele.
Külastaja enda IP aadress on sisestatud arvutis by default juba.

Host command 
> host "Aadress"  
Annab registrist info antud aadressi kohta

![CS Host cmd www.neti.ee](https://github.com/KaidoMetsa/TPT/blob/main/Pildid/Host%20cmd.png?raw=true)

Täpsem info DNSi regsitrist
> dig www.neti.ee

- CNAME - Alias/nickname domeenile mis on tema õige nimi. Kasutatakse aliast peitmiseks ja kui on dmoneeil mitu aadressi aga 1 IP.

- DNS AAAA record -  DNS AAAA records match a domain name to an IPv6 address. DNS AAAA records are exactly like DNS A records, except that they store a domain's IPv6 address instead of its IPv4 address. IPv6 is the latest version of the Internet Protocol (IP).

- An NS record (or nameserver record) is a DNS record that contains the name of the authoritative name server within a domain or DNS zone. When a client queries for an IP address, it can find the IP address of their intended destination from an NS record via a DNS lookup.

CACHE Server - küsib erinevatelt allikatest IP aadressi

www.aadress.ee (on all domeen aadress.ee)

IPv4 vs Ipv6
IPv4 255.0.255.0
4 osaline biti ahel kus maximum ja vähim nr saab olla 0-255.
IP aadressi väärtus on 32 biti (4baiti)

## IP network blocks

> Reserved IP addresses
An IPv4 address is actually a 32-bit numeric value. We usually write it as a dotted quad — four decimal numbers, separated by dots, like 206.190.36.45 or 180.149.132.47. Each of the four numbers written down like this represents one octet or 8-bit value.

> But writing an IP address as four decimal numbers is just a convention to make it easier to read. When it’s used between computers, an address is transmitted in binary, just like all the other data sent over the network.

> However, not all of the possible 32-bit values are used for real addresses. Some of them are used for special applications that use addresses differently. Some of them are reserved for internal private networks. Some of them are for testing or documentation.

> Here's a visualization of the entire IPv4 address space. Each square represents one possible value of the first octet of an address. For instance, the square on the top right, labeled 15, represents all the IPv4 addresses that start with 15 as their first octet.

![IPV4 aadress kaart](https://github.com/KaidoMetsa/TPT/blob/main/Pildid/Adressmap.png?raw=true)

> The light-green squares (0, 10, and 127) are blocks that are entirely reserved.
The dark-green squares are blocks that are partly reserved. For instance, not all of the 192 block is reserved, but some of it is.
The entire cyan row (starting at 224) is set aside for IP multicast.
And the entire orange bottom row (starting at 240) was originally set aside for "future use" but was effectively lost due to being blocked as invalid. No, really. We lost 1/16th of all IPv4 addresses due to mistaken planning.
In fact, just over one-eighth of all possible IPv4 addresses are set aside for something other than addressing public hosts. But as you'll see, even if we did use all 32-bit addresses to represent public hosts, that still wouldn’t really be enough.

## Ruuterid Network 

## Aadress translation
