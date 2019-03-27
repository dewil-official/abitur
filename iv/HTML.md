# 🌐 Websites mit HTML & CSS

[Zurück zur Themenübersicht](THEMEN.md)

### 📋 Inhalt

1. **[Historie](#historie)**
2. **[HTML Syntax](#html_syntax)**

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

Ein weiteres *grundlegendes* Konzept

