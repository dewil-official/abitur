# 🌐 Websites mit HTML & CSS

[Zurück zur Themenübersicht](THEMEN.md)

### 📋 Inhalt

1. **[Historie](#historie)**
2. **[HTML Syntax](#html_syntax)**
3. **[HTML Attribute](#attribute)**
4. **[HTML Dokumente](#dokumente)**

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

