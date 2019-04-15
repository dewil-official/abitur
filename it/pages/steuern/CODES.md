# 🧩 CODES

In der Informationstechnik werden, wie auch in der zwischenmenschlichen Kommunikation, gewisse Konventionen bzw. Systeme bestehend aus Zeichensätzen verwendet.

> Ein **Code** ist eine Vorschrift für die eindeutige Zuordnung der Zeichen eines Zeichensatzes zu den Zeichen eines anderen Zeichensatzes.

### Code-Arten

![](https://i.postimg.cc/ncYHYX7b/image.png)

- **Numerische Codes** stellen Zahlen dar.
  *Verwendung z.B. bei Postleitzahlen, Artikelnummern o.ä.*
- **Alphanumerische Codes** stellen Zahlen, Buchstaben und Steuerzeichen dar.
  *Verwendung z.B. innerhalb von Websites, Programmen, Betriebssystemen, etc.*
- **Leitungscodes** stellen binäre Signale als Digitalsignale dar.
  *Verwendung z.B. in Kupferleitung, Glasfaser etc.*

### Barcodes

![](https://i.postimg.cc/85KyVBqQ/image.png)

Barcodes sind **binäre Zeichencodes**, die vor allem der *Kennzeichnung von Waren* im Handel oder Lager dienen. In diesem Dokument wird der **EAN**-Code verwendet, (kurz European-Article-Numbering,) der aus 2 Hälften mit je 6 Dezimalziffern besteht.

- Eingegrenzt wird der Code durch jeweils ein **Randzeichen** (101), die vor allem der Kalibrierung des Scanners dienen
- In der Mitte gibt es ein **Trennzeichen** (01010) mit demselben Zweck, außerdem unterteilt es die beiden unterschiedlichen Hälften des Codes
- Die Dezimalzahlen sind jedoch nicht wie normale Binärzahlen kodiert, sondern werden durch drei Zeichensätze dargestellt. (siehe Tabelle b)
  *Die linke Hälfte besteht aus den Codes ABAABB und die rechte aus C*

### 2D-Codes

![](https://i.postimg.cc/Dyx6Rg32/image.png)

Ein Barcode ist ja im Prinzip ein Eindimensionaler Code. Passend dazu gibt es auch **zweidimensionale Codes**. In diesem Beispiel wird der **Data-Matrix-Code** (DMC) verwendet.

In der aktuellsten Version gibt es eine eingebaute Fehlerkorrektur *(ECC - Error Checking Correction)*, dazu wird wie im Bild zu sehen die unterste Reihe für **Prüfsummen** verwendet. Mit den Prüfsummen lässt sich mathematisch die Korrektheit der oberen Ziffern bestimmen und ggf. lassen sich sogar Teile Rekonstruieren (bis zu 25%).

- Es gibt ein **Identifikationsmuster**, sprich einen Rahmen, anhand dessen sich die Ausrichtung und Größe des Codes erkennen lässt.
- Ein DMC besteht aus **mehreren Datenregionen**, welche je nach Symbolauswahl z.B. 88 numerische oder 64 alphanumerische Zeichen speichern können. Im Bild zu sehen ist eine dieser Datenregionen, z.B. auf Briefumschlägen sind 4 davon, die zusammen ein größeres DMC bilden.

### RFID

###### ![](https://i.postimg.cc/NG9NV06K/image.png)

> RFID (Radio Frequency Identification) ist eine Technik zur **berührlosen Identifikation**.

Ein RFID-System funktioniert, indem ein **Funksignal** vom Lesegerät aus gesendet wird, durch das Prinzip der Induktion wird in der Antenne des Transponders eine sehr geringe Spannung erzeugt, die aber ausreicht, um den Zahlencode im Chip abzufragen und zurück zu senden.

Es gibt allerdings auch Transponder, wie z.B. in manchen Modekaufhäusern, die eine kleine Batterie besitzen, da die Sendeleistung sonst nicht für größere Distanzen ausreichen würde.

