# 🌐 Websites mit HTML & CSS

[Zurück zur Themenübersicht](THEMEN.md)

### 📋 Inhalt

1. **[Historie](#historie)**
2. **[HTML Syntax](#html_syntax)**
3. **[HTML Attribute](#attribute)**
4. **[HTML Dokumente](#dokumente)**
5. **[HTML Elemente](#elemente)**
6. **[CSS Grundlagen](#css_grund)**
7. **[CSS Eigenschaften](#css_eig)**
8. **[CSS Flexbox](#flexbox)**

------

### 📔 Historie <a name="historie"></a>

In jedem Fall ist das verfolgte Ziel bei unserem Thema, das **Erstellen einer Website**. Heutzutage ist völlig klar, was eine Website ist und wie sie funktioniert, jedoch sollte man sich kurz mit der Herkunft dieser Sprache beschäftigen, um zu verstehen, *warum* sie so aufgebaut ist, *wie* sie aufgebaut ist.

*Noch vor* der Entwicklung eines globalen Informationsnetzwerkes („World Wide Web“), als der Datenaustausch zum Beispiel nur innerhalb von Firmengebäuden verwendet wurde, benötigte man eine Möglichkeit um **digitale Informationen grafisch übersichtlich darzustellen**. Zu dem Zeitpunkt war der Informationsaustausch auf Zeichenketten („Strings“) oder gar Binärcode beschränkt, oder wahlweise mussten die Unternehmen ihre eigenen Lösungen entwickeln, um digitale Informationen grafisch darzustellen.

Um dieses Problem zu lösen, entstand **1989 am CERN** ein Projekt, das letztendlich am 3. November 1992 die erste Version des HTML Formates veröffentlichte. HTML steht dabei als Abkürzung für „***Hypertext Markup Language***“. Es ist allerdings *KEINE Programmiersprache*, sondern nur eine Sprache zur Darstellung von Hypertext, Layout und teilweise Formatierung. Hypertext ist die Bezeichnung für **dynamisch strukturierten Text**, der technisch quasi „veredelt“ wird. Man muss diesen Hypertext nicht in einer speziellen Reihenfolge lesen, sondern kann durch Querverweise („Links“) oder andere Techniken zu den Informationen gelangen, die man sucht.

Die ersten Websites könnten in etwa so ausgesehen haben:

```html
Willkommen auf Dillinger.io! <br>
Hier geht es zur Inhaltsuebersicht: <a href="inhalt.html">Link</a>
```

Schon ein Jahr später, 1993, gab es den ersten Vorschlag für für **Web-Stylesheets**. HTML-Dokumente hatten zwar die Möglichkeit geschaffen, Informationen darzustellen, es fehlte aber jegliche Möglichkeit, diese Darstellung zu personalisieren. Am 10. Oktober 1994 veröffentliche ein Mitarbeiter des CERN den ersten Vorschlag für „***Cascading HTML Style Sheets***“. Ab diesem Zeitpunkt arbeiteten mehrere Teams an dem gleichen Ziel, letztendlich setzte sich das CSS wie wir es heute kennen in einer frühen Version durch. CSS ist dabei genauso wenig eine Programmiersprache wie HTML. **Cascading Style Sheets**, zu deutsch „Mehrstufige Formatvorlagen“ ist eine Formatierungssprache, vor allem für HTML, aber auch für SVG und XML Dokumente.

------

### 💬 HTML Syntax <a name="html_syntax"></a>

> "Unter Syntax versteht man ein Regelsystem zur Kombination elementarer Zeichen zu zusammengesetzten Zeichen in natürlichen oder künstlichen Zeichensystemen."

Der Syntax ist die **Struktur des Codes**, jede Programmiersprache hat in der Regel ihre eigenen Syntax-Regeln, auch wenn viele Regeln auch in vielen Sprachen gleich sind.

#### Tags

```html
<tag>Inhalt</tag>
```

Jede *Website* ist in sogenannte **Elemente** gegliedert.

Jedes **Element** besteht aus einem *einleitenden Tag* `<name>` und einem *abschließenden Tag* `</name>`. 

Jeder **Tag** besteht immer aus *dreieckigen Klammern* ("< >"), dazwischen steht der *name* des Tags und dann ggf. noch [Attribute](#attribute).

Beispiel:

```html
<p>Ein Textabsatz.</p>
```

Hier ist ein *"Absatz"-Element*, festgelegt durch einen einleitenden *"p"-Tag* und einen abschließenden *"p"-Tag*. In diesem Element steht dann der Text, dessen Layout durch die Eigenschaften von "p" festgelegt wird.

**Ausnahme:** Einige Tags müssen nicht wieder geschlossen werden, sogenannte *"Self-Closing-Tags"*. Diese Elemente können dann keinen weiteren "Inhalt" haben, da sie ja nur aus einem Tag bestehen. Es gibt dabei zwei Möglichkeiten, diese Tags zu schreiben:

```
<br>
<br />
```

In diesem Beispiel wird der *"br"*-Tag verwendet, ein *Zeilenumbruch*. Es hängt also vom Typ ab, ob ein Tag selbstschließend ist.

Prinzipiell funktionieren beide Schreibweisen gleich, nur zeigt das **Slash optisch**, dass es sich um ein *"Self-Closing-Tag"* handelt. Allerdings empfehle ich das Weglassen, weil ältere Browser das `<br />` in `<br >>` konvertieren, was Fehler produziert.

#### Verschachtelung

Ein weiteres *grundlegendes* Konzept ist die Verschachtelung. Denn **zwischen** den beiden **Tags eines Elementes** können beliebig viele **weitere Elemente** stehen.

```html
<div> <p>Text.</p> </div>
```

Hier steht zum Beispiel ein *p*-Absatz in einem *div*-Abschnitt. Die Formatierung zwischen den Tags kann beliebig viele Leerzeichen, TABs oder Absätze haben. Außerdem können auch mehrere Elemente in einem einzigen Element stehen:

```html
<div>
    <h1>Abitur</h1>
    <p>Lernzettel over 9000</p>
</div>
```

Das Layout sieht auch genau so aus: Es gibt einen Abschnitt (div), in dem eine Überschrift (h1) und darunter ein kurzer Textabsatz (p) zu finden sind.

*Wichtig* ist hier aber auch die **gute Lesbarkeit** des Codes, vernünftiges Einrücken des Codes kann schon viel helfen.

------

### 🎚 HTML Attribute <a name="attribute"></a>

Die *Elemente* einer Seite können verschiedene **Eigenschaften** haben, diese nennt man *Attribute*. Die verschiedenen Elementarten haben festgelegte Attribute, die verändert werden können. Beispielsweise ein Bildobjekt könnte so aussehen:

```
<img src="datei.png" alt="läd..">
```

Dieses Beispiel ist ein *Self-Closing-Tag*, sonst stehen die Attribute immer im vorderen Tag. Hier sieht man als Beispiel das "source" (src) - Attribut, welches den Dateipfad für das Bild angibt, wie auch das "alternativ" (alt) - Attribut welches einen Text angibt, der angezeigt wird wenn das Bild nicht geladen ist.

Es gibt **allgemeingültige Attribute**, die in allen Elementtypen verwendet werden:

| Name    | Beschreibung                                                 |
| ------- | ------------------------------------------------------------ |
| `id`    | *Eindeutige Identifikation* eines Elements für die spätere Nutzung in CSS und Javascript. Eine ID kann nur einmal existieren. |
| `class` | *Wiederverwendbare Identifikation* von Elementen vor allem für CSS, aber auch für Javascript. Klassen müssen einmal definiert werden und können unbegrenzt oft wiederverwendet werden. |
| `style` | *Inline CSS Code*, also ein Stylesheet direkt innerhalb des Elementes. |

------

### 📰 HTML Dokumente <a name="dokumente"></a>

#### Doctype

Am Anfang eines Dokumentes sollte immer zuerst der **Dokumententyp** festgelegt werden, in unserem Fall *HTML*. Der Internet-Browser erhält nicht immer die gesamte .html Datei übertragen, sondern oft auch nur den Inhalt. Dadurch kann es sein, dass der Dateityp nicht klar ist, deshalb legt man ihn in .html Dokumenten immer zu Anfang fest.

```html
<!doctype HTML>
```

Diese Zeile sollte **immer am Anfang** eines *HTML-Dokumentes* stehen.

#### Head

Typischerweise *(trotzdem optional)* folgt nach dem Doctype der "Head", also der **Kopf** des Dokumentes. Der Kopf enthält normalerweise alle Informationen, die **unsichtbar** für den Nutzer sind, aber für den Browser wichtig. Diese Art von Informationen nennt man **Metadaten**.

So könnte ein Head aussehen:

```html
<!doctype html>
<head>
	<title>Titel</title>
	<link rel=“stylesheet“ href=“styles.css“>
	<script src=“script.js“></script>
	<meta name=“Meta Name“ content=“Meta Settings“>
</head>
```

| Element  | Erklärung                                                    |
| -------- | ------------------------------------------------------------ |
| `title`  | Der **Titel**, wird im Browsertab angezeigt.                 |
| `link`   | Ein **externes Stylesheet** für CSS Formatierung.<br />*Hier lässt sich nicht nur CSS Code einbinden, doch alles andere war nicht Teil unseres Unterrichts.* |
| `script` | Ein **Javascript**, muss aber nicht im Head eingebunden sein. |
| `meta`   | Weitere **Metadaten**, siehe unten.                          |

#### Metadaten

Der `<meta>`-Tag ist vielfältig, hier eine kleine Übersicht, was damit möglich ist:

- `<meta charset="UTF-8">` legt den **Zeichensatz** fest, damit Umlaute etc. möglich sind.
- `<meta name="description" content="Lernzettel">` legt eine **Seitenbeschreibung** fest, die z.B. in der Google-Suche angezeigt wird.
- `<meta name="keywords" content="IV, Klausur, Lernzettel">` legt **Stichwörter** fest,  die z.B. in der Google Suche genutzt werden.
- `<meta name="author" content="DeWil">` legt den **Autor** des Dokumentes fest.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">` legt **Anzeigeinformationen** fest zu Skalierung etc. für Responsive Designs.

#### Body

Im **Body** landet dann normalerweise der Content, den man sehen kann. Hier ein Beispiel für eine fertige Website:

```html
<!doctype html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="Lernzettel">
	<meta name="keywords" content="IV, Klausur, Lernzettel">
	<meta name="author" content="DeWil">
	<meta name="viewport" content="width=device-width, initialscale=1.0">
</head>
<body>
	<h1>Lernzettel für IV</h1>
	<p>Dies ist die finale Website.</p>
</body>
```

------

## 🗄 HTML Elemente <a name="elemente"></a>

#### `<a>`-Link

Das a-Element macht seinen Inhalt anklickbar und leitet an einen Link weiter, der mithilfe von dem Attribut *href* angegeben wird. Beispiel:

```html
Hier ist ein <a href="https://www.google.de">Link</a>
```

#### `<p>`-Absatz

Es bietet sich an, Fließtexte in Absätze (`<p>`) zu unterteilen, damit z.B. Abstände dazwischen entstehen. Beispiel:

```html
<p>Ein kurzer Textabsatz.</p>
```

Es gibt außerdem eine Reihe von Standartformatierungen, die auf Text angewendet werden können. Hier eine Liste davon:

- `<b>` - **Fetter** Text
- `<strong>` - **Wichtiger** Text
- `<i>` - **Schräger** Text
- `<em>` - **Hervorgehobener** Text
- `<mark>` - **Markierter** Text
- `<small>` - **Kleiner** Text
- `<del>` - **Gelöschter** Text
- `<ins>` - **Eingefügter** Text
- `<sub>` - **Subskript** Text
- `<sup>` - **Superskript** Text

#### `<h1>, <h2>...` - Überschrift

Um Textabschnitte zu gliedern, können Überschriften in den Größen 1 bis 6 verwendet werden:

```html
<h1>Große Überschrift</h1>
<h4>Kleinere Überschrift</h4>
```

#### `<img>` - Bilder

Um Bilder & Grafiken einzubinden, gibt es das img-Element. Beispiel:

```html
<img src=“bild.png“ alt=“Läd…“>
```

Bilder benötigen zunächst den Dateipfad mithilfe von „src“ und hier ist noch „alt“ als Alternativtext angegeben, falls das Bild noch nicht geladen hat.

Bilder haben prinzipiell Eigenschaften wie Breite und Höhe, diese können mithilfe von „height“ und „width“ Attributen innerhalb des Tags angegeben werden. Es empfiehlt sich allerdings, die Bildergrößen in CSS zu definieren, damit das Design auf allen Gerätegrößen gut funktioniert.

#### `<table>` - Tabellen

HTML unterstützt auch Tabellen, diese werden durch folgende Tags definiert:

- `<table>` Die gesamte Tabelle `</table>`
  - `<tr>` Eine Reihe / Zeile der Tabelle `</tr>`
    - `<td>` Ein einzelner Datensatz / Eine Zelle `</td>`
    - `<th>` Genau wie *td*, nur mit spezieller Formatierung für Kopfzeilen `</th>`

Eine Tabelle könnte in der Praxis also wie folgt aussehen:

```html
<table>
	<tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Age</th>
	</tr>
	<tr>
        <td>Jill</td>
        <td>Smith</td>
        <td>50</td>
	</tr>
	<tr>
        <td>Eve</td>
        <td>Jackson</td>
        <td>94</td>
	</tr>
</table>
```

Tabellen werden auch in derselben Reihenfolge geladen, in der sie im Code stehen. Also Zeile für Zeile und dann von links nach rechts. Das wird wichtig, sobald Zellen nicht mehr 1x1 groß sind:

Es ist möglich, einzelne Zellen (`<td>`) über mehrere Reihen oder Zeilen hinweg zu skalieren. Das passiert mithilfe der `rowspan` oder `colspan` Attribute. Beispiel:

```html
<table>
	<tr>
        <th>Firstname</th>
        <th colspan="2">Lastname</th>
	</tr>
	<tr>
        <td>Jill</td>
        <td>Smith</td>
        <td rowspan="2">50</td>
	</tr>
	<tr>
        <td>Eve</td>
        <td>Jackson</td>
	</tr>
</table>
```

#### `<ul>,<ol>` - Listen

Es gibt zwei Arten von Listen: *Ungeordnete* Listen und *Geordnete* Listen.

```html
<ul>
    <li>ASUS</li>
    <li>MSI</li>
    <li>EVGA</li>
    <li>ZOTAC</li>
</ul>
```

*ul* steht für *unordered List* und *ol* steht für *ordered List*. Dementsprechend muss man die Tags benennen. *li* steht für *list item*, also für die einzelnen Punkte.

Geordnete Liste können z.B. Zahlen am Anfang haben, während sie ungeordnet z.B. nur Punkte stehen haben.

Alle weiteren Einstellungen der Listen erfolgen durch CSS.

#### `<!-- Kommentare -->`

Jeder gut strukturierte Code sollte ab und zu Kommentare enthalten, um anderen Leuten die eigenen Ideen, die nicht aus dem Code hervorgehen, zu erklären. Kommentare sind aber keine Entschuldigung für schlechten Code!

```html
<!-- Dies ist ein Kommentar in HTML. -->
```

#### Loading Order

> Objekte werden in der Reihenfolge geladen, in der sie auf der Seite auftauchen!

Denke daran, wenn Du z.B. Skripte einbindest. Tust Du dies am Anfang deines Dokumentes, kann das Skript noch nicht auf ungeladene Elemente weiter unten in der HTML Datei zugreifen.

------

### 🦄 CSS Grundlagen <a name="css_grund"></a>

CSS beschreibt das Aussehen der HTML Elemente.

Um CSS Code einzubinden gibt es 3 Möglichkeiten:

```html
<link rel=“stylesheet“ href=“styles.css“>
```

```html
<style> CSS CODE </style>
```

```html
<div style=“CSS CODE“> HTML Element </div>
```

Das erste Beispiel ist mit Abstand das **eleganteste**: Man trennt HTML und CSS Code sauber, indem man eine **externe CSS Datei verlinkt**. Der große Vorteil außerdem: Man kann eine globale CSS Datei über **mehrere HTML Dateien** hinweg verwenden.

Das zweite Beispiel eignet sich vor allem für Tests und extrem kleine Websites. Man definiert einfach ein Style Element **innerhalb** des HTML Dokuments und schreibt dort den CSS Code hinein. Problem ist die **fehlende Wiederverwendbarkeit** über mehrere Dokumente hinweg. Nutzbar trotzdem, falls eine spezielle Seite sich z.B. von der globalen Norm unterscheidet.

Das dritte Beispiel sollte nie verwendet werden, da es **mitten im HTML Code** steht und diesen unnötig unübersichtlich macht. Im Zweifel sollte man, wenn man einzelne Elemente formatieren möchte, immer Klassen oder IDs verwenden. (Später mehr dazu).

#### Selektoren

Bevor man die Einstellungen eines Elements verändern kann, muss zunächst darauf zugegriffen werden. Dazu gibt es 3 Möglichkeiten.

- Per **Elementtyp**: `body { ... }` - Trifft dadurch auf *alle Elemente* des Typs zu, in diesem Fall auf den Body.
- Per **IDs**: `#nameId { ... }` - Trifft nur auf das *eine Element* zu, das die entsprechende Id trägt.
- Per **Klasse**: `.nameKlasse { ... }` - Trifft auf *alle Elemente mit dem Klassenname* zu.

Selektoren können außerdem **kombiniert** werden. So können Selektoren durch *Komma* getrennt werden, sodass mehrere Elemente gleichzeitig modifiziert werden können:

```css
p, #main-header {
	/* CSS Code */
}
```

Außerdem kann auf **verschachtelte Elemente** zugegriffen werden:

```html
<div id=“hauptartikel“>
 <h1>Überschrift</h1>
</div>
```

```css
#hauptartikel h1 {
	/* CSS Code */
}
```

Nützlich, um nicht jedem Subelement einzeln eine Klasse geben zu müssen.

#### Weitere Selektoren

Es gibt viele viele weitere Selektoren, die verwendet werden können, beispielsweise kann man HTML Elemente durch ihre Attribute auswählen oder durch die Mausposition. Eine Liste aller weiteren Selektoren gibt es [hier](https://www.w3schools.com/cssref/css_selectors.asp).

#### Kommentare

In CSS lassen sich ebenfalls sehr einfach Kommentare schreiben, genauso empfehlenswert wie in HTML.

```css
body {
 /* Kommentar */
}
```

In CSS, Kommentare stehen zwischen **/*** und ***/**.

------

### 🛒 CSS Eigenschaften <a name="css_eig"></a>

Wenn der Selektor festgelegt ist, lassen sich die Eigenschaften der Elemente ändern.

```css
p {
 font-size: 40px;
}
```

In diesem Beispiel wird die Schriftgröße verändert, aller Textabsätze auf der Seite.

Es hängt immer von dem gewählten Element ab, welche Eigenschaften veränderbar sind. Eine Liste aller wichtigen Eigenschaften folgt später.

#### Farben

Grundfarben gibt es in CSS vordefiniert, z.B. „red“ oder „black“ kennt jeder Browser. Außerdem können Farben wie folgt definiert werden:

- "HEX"-Werte, Bsp. `#ff6347` für Tomatenrot.
- "RGB"-Werte, Bsp. `rgb(60,179, 113)` für ein Hellgrün.
- "HSL"-Werte, Bsp. `hsl(300, 76%, 72%)` für ein helles Violett.

#### Maßeinheiten

Jegliche Abstände und Größen werden durch verschiedene Maßeinheiten definiert:

> **Absolute Größen:** Alle Größen, die ***nicht skalieren***, da sie immer gleich groß sind und dadurch auf verschieden großen Bildschirmen unterschiedlich sind.

| Einheit | Beschreibung                  |
| ------- | ----------------------------- |
| cm      | Centimeter                    |
| mm      | Millimeter                    |
| in      | Inch                          |
| px      | Pixel (Oft verwendet)         |
| pt      | Punkte (Maßeinheit für Druck) |
| pc      | Picas                         |

> **Relative Größen:** Alle Größen, die ***skalieren***, d.h. abhängig von anderen Faktoren sind.

| Einheit | Beschreibung                                              |
| ------- | --------------------------------------------------------- |
| em      | Relativ zu der Schriftgröße des Elementes                 |
| ex      | Relativ zu der x-Höhe der Schriftgröße des Elementes      |
| ch      | Relativ zur Breite von „0“                                |
| rem     | Relativ zur Schriftgröße der Wurzel des Dokumentes (Root) |
| vw      | Relativ zu 1% der Breite des Fensters                     |
| vh      | Relativ zu 1% der Höhe des Fensters                       |
| vmin    | Relativ zu 1% der kurzen Seite des Fensters               |
| vmax    | Relativ zu 1% der langen Seite des Fensters               |
| %       | Relativ zum übergeordneten Element                        |

> *Auch möglich: **"auto"** statt einer Größe, z.B. bei margin-right und margin-left, um ein Objekt zu zentrieren.*

#### Liste der wichtigsten Eigenschaften

| Name                | Beschreibung                                                 |
| ------------------- | ------------------------------------------------------------ |
| background-color    | Hintergrundfarbe                                             |
| background-image    | Hintergrundbild, wird als `url(„bild.png“)` angegeben.       |
| background-repeat   | Wiederholung des Hintergrunds: `repeat | repeat-x | repeat-y | no-repeat` |
| background-position | Position zum Fenster hin: `scroll | fixed | local | initial | inherit` |
| border-style        | Position des Dokumentes: [Link](https://www.w3schools.com/cssref/pr_background-position.asp) |
| border-width        | Rahmendicke                                                  |
| border-color        | Farbe des Rahmens                                            |
| margin              | Abstand nach außen                                           |
| margin-top [...]    | Abstand nach außen in eine Richtung *(margin-top, -bottom, -right, -left)* |
| padding             | Abstand nach innen                                           |
| padding-top [...]   | Abstand nach innen in eine Richtung *(padding-top, -bottom, -right, -left)* |
| height              | Höhe eines Elements                                          |
| width               | Breite eines Elements                                        |
| max-height          | Maximale Höhe eines Elements, begrenzt relative Höhe durch absolute Werte. Auch möglich: *min-height* |
| max-width           | Maximale Breite eines Elements, begrenzt relative Breite durch absolute Werte. Auch möglich: *min-width* |
| color               | Farbe z.B. von Text                                          |
| text-align          | Linksbündig, Zentriert… `left | right | center | justify`    |
| font-family         | Schriftart. Durch Kommata getrennt sollten immer mehrere Schriftarten definiert werden, falls der Browser die Schrift nicht kennt, probiert er die nächste. |
| list-style-type     | Aufzählungszeichen in einer Liste: `circle | square | none ...` |
| display             | Anzeigbarkeit eines Elements: `inline | block | flex | none ...` |
| position            | Position des Elements: `static | relative | fixed | absolute` |
| float               | Lässt ein Objekt z.B. rechts innerhalb des übergeordneten Objekts anliegen `right | left | none | inherit` |

------

### ♐ Flexbox <a name="flexbox"></a>

Flexbox ist eine Kurzform für *Flexible Box Module*, ein Layout-Modell zum einfachen Verteilen des Platzes zwischen HTML Elementen. Es ist eine Technologie, die heutzutage selbstverständlich in den meisten Seiten verwendet wird, um Websites auch für Mobilgeräte verfügbar zu machen.

Flexbox bestimmt immer das Verhalten verschiedener Elemente innerhalb eines Containers.

Um Flexbox zu aktivieren, gibt man dem Container-Element zunächst die Einstellung `display: flex;`. Dann gibt es eine Reihe von Einstellungen, die entweder bei dem Container oder bei den Flex-Items verwendet werden können:

![](http://jonibologna.com/content/images/2014/Oct/flexboxsheet.png)

