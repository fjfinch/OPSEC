# JSCU Summerschool
## Inhoud
Email:
* Email achterhalen

Projecten:
* Grep
* Firmware encryptie
* Password dump
* Yara
* Trololo
* Emoji
* ICMP

Extra:
* JavaScript bestand
* JavaScript tags
* HTTP headers (JSCU-Flag & PHPSESSID)
* robots.txt
* CSS
* DNS

----------------
## Email achterhalen
De webpagina heeft een div genaamd *winnerwinner*. Op de webpagina staat een stuk met *Hier klikken* die een melding geeft als je er op drukt:

> Stuur je CV en write-up naar ROT13(fhzzrefpubby@zvaomx.ay)

Dit te decoderen:

```bash
echo -n "fhzzrefpubby@zvaomx.ay" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

Geeft het emailadres: summerschool@minbzk.nl. Wat klopt, want dit emailadres wordt beheert door SSC-ICT van rijksoverheid.

----------------
## Grep
Een eigen statisch gecompileerd *grep* programma is gegeven. Om te kijken of er belangrijke tekst in het programma zit, gebruik ik *strings* en zoek ik naar *JSCU*:

```bash
strings grep | /usr/bin/grep -i jscu
```

Dit geeft de flag: JSCU{y0u_can_gRep_wHat3v3r_y0u_l1k3}

----------------
## Firmware encryptie
x

----------------
## Password dump
Een bestand met hashes. Het lijkt op NTLM hashes. (In hindsight:) eerst gebruikte ik de *rockyou.txt* lijst, die erop duidde dat elke hash 1 charakter is. Dus maakte ik een password bestand aan met alle charakters van ascii:

> ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ \` a b c d e f g h i j k l m n o p q r s t u v w x y z { | } ~

Te kraken:

```bash
hashcat -m 1000 hashes charlist --potfile-disable
```

Geeft de waardes:

|Hash|Password|
|--|--|
|011EB952E10EB5CA1D3DFF9C74D36F5C|-|
|E3EA28F20242275E2B67BC042776D9B7|J|                                             
|A2BC7FF665D2DD44F08DEFE1D2007EE9|S|
|6E66A0AEA87D174A435DEE9106A0A052|C|
|E13A473448119D45B179E43C957AFD48|U|
|6649B8967545E5E86EC5A980184E2F73|{|
|2468C466F4666005A06B2792513D98E8|p|
|C5DD1C2BC8719C01B25B4EB2692C9FEE|A|
|C3F541BAF5C46E5169E95691975D12BC|s|
|C3F541BAF5C46E5169E95691975D12BC|s|
|6C259F1003FAAD896EAD94418585C9E1|\_|
|7E864D8195B263B4D6AEE4E041C0193F|m|
|5F18A8499CDD4F43D89424AD39CE9AF7|3|
|6C259F1003FAAD896EAD94418585C9E1|\_|
|6237795E56D95C5BC0B6F7405B31EDF9|t|
|0A9195A4BF04D808D098CF44A165186E|h|
|5F18A8499CDD4F43D89424AD39CE9AF7|3|
|6C259F1003FAAD896EAD94418585C9E1|\_|
|0A9195A4BF04D808D098CF44A165186E|h|
|E30F7B55215AA69B2920E3715E0392A0|4|
|C3F541BAF5C46E5169E95691975D12BC|s|
|0A9195A4BF04D808D098CF44A165186E|h|
|0165B3D4BCC42E2883323B72AEAE32E2|}|

En dat geeft de flag: JSCU{pAss_m3_th3_h4sh}

P.S. het eerste wachtwoord was niet gekraakt. Als je het LM hash online op crackstation gooit krijg je ww: *asdjfkl*

----------------
## Yara
Hier zie je een yara regel met 3 variabelen in hex. Decoded key2 geeft met

```bash
xxd -p -r key2
```

De flag: JSCU{hEx_eNc0d1nG_rULeSSS}

----------------
## Trololo
Benieuwd of dit een standaard audio CTF is. Open het audio bestand in *audacity*, en zie in spectrogram niks geks. Echter als ik het nummer luister hoor ik na 1 minuut gekke hoge pitch geluiden. Als ik in de spectogram settings de max frequenties verhoog, verschijnt de flag in beeld:

![[Pasted image 20210611021036.png]]

De flag: JSCU{BEST_SONG_EVER}

----------------
## Emoji
Na een lange tijd research gedaan te hebben, vond ik een website voor emoji cyphers:

> https://emoji-cypher.netlify.app/

Alle emojis van het bestand gaven hiermee het volende in hex:

> \\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x67\\x67\\x4d\\x7a\\x49\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x6b\\x67\\x4e\\x44\\x67\\x67\\x4e\\x44\\x6b\\x3d

Deze string van hex naar ascii geeft een base64 string weer:
> NDggNDkgNDggNDggNDkgNDggNDkgNDggMzIgNDggNDkgNDggNDkgNDggNDggNDkgNDkgMzIgNDggNDkgNDggNDggNDggNDggNDkgNDkgMzIgNDggNDkgNDggNDkgNDggNDkgNDggNDkgMzIgNDggNDkgNDkgNDkgNDkgNDggNDkgNDkgMzIgNDggNDkgNDggNDkgNDggNDggNDkgNDkgMzIgNDggNDkgNDggNDggNDkgNDkgNDkgNDkgMzIgNDggNDkgNDggNDkgNDkgNDkgNDkgNDkgMzIgNDggNDkgNDggNDggNDggNDkgNDggNDkgMzIgNDggNDkgNDggNDggNDkgNDkgNDggNDkgMzIgNDggNDkgNDggNDggNDkgNDkgNDkgNDkgMzIgNDggNDkgNDggNDggNDkgNDggNDkgNDggMzIgNDggNDkgNDggNDggNDkgNDggNDggNDkgMzIgNDggNDkgNDggNDggNDkgNDkgNDkgNDkgMzIgNDggNDkgNDggNDggNDkgNDkgNDkgNDggMzIgNDggNDkgNDggNDggNDggNDggNDggNDkgMzIgNDggNDkgNDggNDggNDkgNDkgNDggNDggMzIgNDggNDkgNDkgNDkgNDkgNDkgNDggNDk=

Deze base64 string decoded geeft weer hex:
> 48 49 48 48 49 48 49 48 32 48 49 48 49 48 48 49 49 32 48 49 48 48 48 48 49 49 32 48 49 48 49 48 49 48 49 32 48 49 49 49 49 48 49 49 32 48 49 48 49 48 48 49 49 32 48 49 48 48 49 49 49 49 32 48 49 48 49 49 49 49 49 32 48 49 48 48 48 49 48 49 32 48 49 48 48 49 49 48 49 32 48 49 48 48 49 49 49 49 32 48 49 48 48 49 48 49 48 32 48 49 48 48 49 48 48 49 32 48 49 48 48 49 49 49 49 32 48 49 48 48 49 49 49 48 32 48 49 48 48 48 48 48 49 32 48 49 48 48 49 49 48 48 32 48 49 49 49 49 49 48 49

Dit decoded geeft(?):
> HIHHIHIH2HIHIHHII2HIHHHHII2HIHIHIHI2HIIIIHII2HIHIHHII2HIHHIIII2HIHIIIII2HIHHHIHI2HIHHIIHI2HIHHIIII2HIHHIHIH2HIHHIHHI2HIHHIIII2HIHHIIIH2HIHHHHHI2HIHHIIHH2HIIIIIHI

Per toeval zag ik dat er telkens 8 charackters tussen de 2'en zitten, wat hint naar een byte van 8 bits. En de I leek op een 1. Dus laat ik die charakters omzetten naar bytes en dan naar ascii:

```bash
sed 's|2||g ; s|H|0|g ; s|I|1|g' hii
```

Dit geeft:
> 010010100101001101000011010101010111101101010011010011110101111101000101010011010100111101001010010010010100111101001110010000010100110001111101

Wat binair staat voor: JSCU{SO_EMOJIONAL}

----------------
## ICMP
In *Wireshark* zie ik alleen ICMP packets. Deze hebben echter veel data hebben, en is volgens mij niet standaard. Hier zit vast iets geks in. Om deze data te zien en om er mee te spelen gebruik ik *tshark* met *xxd -p -r* om deze data van hex naar ascii te veranderen. Dit geeft een base64. Dit decoded laat zien met de eerste signature/magic bytes dat het om een PNG bestand gaat. Alle commands:

```bash
tshark -r icmp.pcap -T fields -e data | xxd -p -r | base64 -d -i > file.png
```

Het plaatje geeft de flag weer: JSCU{NO_PLACE_LIKE_LOCALHOST}

----------------
## JavaScript bestand
Tijdens het bekijken van de source code viel me op dat er javacript code tussen script tags zit. Echter heeft het ook een src=javascript attribute. Bij het bekijken van het javascript bestand zit er nog wat extras:

> var f14g_rev = "\==QfzMzcfV3T591RuFDa0NjclZVZfR3U1JFdfRHMu9FMktXVDNlS";
   var f14g = f14g_rev.split().reverse().join()
 
 ```bash
 echo -n "==QfzMzcfV3T591RuFDa0NjclZVZfR3U1JFdfRHMu9FMktXVDNlS" | rev | base64 -d
 ```

Dit geeft de flag: JSCU{d0_n0t_tRuSt_eVer3th1nG_yOu_s33}

----------------
## JavaScript tags
Om er niet te diep op in te gaan, de source code had twee plekken met script tags waar veel werd gewerkt met functions, variabelen en base64. Het meest opvallende was de script tag die gebruikt werkt bij de div *winnerwinner*, die eerder al besproken is. Hierin zit een try catch block, waarbij de try de gegeven message weergeeft, en de catch block niet wordt gebruikt. 

In deze catch block zit een base64 string die, als je de omliggende variabelen en functies niet gebruikt, niet te decoden valt.

Lang verhaal kort: Door deze functies worden bepaalde charakters van de base64 string veranderd. Deze worden veranderd door de javascript replaceAll. Aangepaste chars:

|Old|New|
|-|-|
|{|r|
|(|t|
|)|y|
|\[|u|
|}|i|

Om dit weer terug te zetten, gooi ik de base64 string in het bestand *base*:

```bash
sed 's|{|r|g ; s|(|t|g ; s|)|y|g ; s|\[|u|g ; s|}|i|g' base | base64 -d > changed_base
```

Dit *changed_base* bestand geeft een nieuwe base64 string en een uitleg:

> // find some library to gunzip this image
// var gunzipped = gunzip(data)
// PNG.open(gunzipped)

Ik weet nu dat de decoded base64 een gunzip bestand is. Om het simpel te houden pipe ik het naar een nieuw bestand (zonder de uitleg) en noem ik het *weird.gz*:

```bash
base64 -d changed_base > weird.gz
```

Unpack dit bestand:

```bash
gzip -d weird.gz
```

Dit geeft een PNG bestand *weird* met de tekst: JSCU{IS_NFT_ASCII_ART_A_THING}

----------------
## HTTP headers (JSCU-Flag & PHPSESSID)
De website en andere benodigde bestanden worden opgevraagd en meegegeven met de volgende response headers:

JSCU-Flag: SlNDVXtuMWNlX0gzNGQzUnNfZHVkM30=
PHPSESSID: U2xORFZYdGtNRjl1TUhSZlpqQnlaek4wWDAweklTRWhmUT09

Deze geven met:

```bash
echo -n "SlNDVXtuMWNlX0gzNGQzUnNfZHVkM30=" | base64 -d
echo -n "U2xORFZYdGtNRjl1TUhSZlpqQnlaek4wWDAweklTRWhmUT09" | base64 -d | base64 -d
```

JSCU-Flag: JSCU{n1ce_H34d3Rs_dud3}
PHPSESSID: JSCU{d0_n0t_f0rg3t_M3!!!}

----------------
## robots.txt
De website heeft een /robots.txt bestand. Deze geeft:

> User-agent: *
Disallow: /plz_do_not_index_me.txt

De gegeven txt bestand geeft de flag: JSCU{i_h4s_b33n_iNd3x3d}

----------------
## CSS
Er bleek ook iets verstopt te zitten in het CSS betand:

![[Pasted image 20210612155620.png]]

Dit decoded:

```bash
echo -n "JJJUGVL3MNZXG43TONZXG43INBUGQX3IGFSGS3THL4YW4X3TKR4WYM35" | base32 -d
```

Geeft de flag: JSCU{csssssssshhhh_h1ding_1n_sTyl3}

----------------
## DNS
Bij het bekijken van DNS van *summerschool.sh* vond ik aardig wat queries, waaronder een txt type:

Command:

```bash
dig summerschool.sh ANY
```

TXT type in de output: 

> summerschool.sh.        86400   IN      TXT     "SlNDVXtqdXN0X2QxZ19tM30="

Dit decoded:

```bash
echo -n "SlNDVXtqdXN0X2QxZ19tM30=" | base64 -d
```

Geeft de flag: JSCU{just_d1g_m3}

----------------
## VRAAG
Is het mogelijk om de antwoorden van alle flags te krijgen? Ook leuk om te zien of ik iets heb gemist. Wat waarschijnlijk zo is :)