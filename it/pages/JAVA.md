# Java Lernzettel 📌

Dies ist der Lernzettel für die IT Klausur - Basierend auf dem herausgegebenen Lernzettel von Herrn Lam und mit vielen Ergänzungen, Übungsaufgaben und Empfehlungen von Dennis.

## Inhalt

1. [🏐 Objektorientierte Programmierung](#kap1)
2. [🎫 Konzepte von Greenfoot](#kap2)
3. [🎢 Java Grundlagen](#kap3)
4. [🎰 Datentypen](#kap4)
5. [👨‍💻 Rechnen mit Variablen](#kap5)
6. [🔩 Klassen und Objekte](#kap6)
7. [🔗 Bedingungen](#kap7)
8. [🌠 Schleifen](#kap8)
9. [🐫 Ausgaben](#kap9)
10. [✨ Sauberen Code schreiben!](#kap10)

### Legende

| Markierung | Bedeutung                                                    |
| ---------- | ------------------------------------------------------------ |
| ❕          | Besonders *wichtiger* Abschnitt.                             |
| 🔁          | Kurze *Zusammenfassung*.                                     |
| 🌟          | *Zusatzinfos*, die beim Verständnis helfen können, aber nicht notwendig sind. |

## 🏐 Objektorientierte Programmierung <a name="kap1"></a>

**Java** ist eine der größten sogenannten *Objektorientierten Programmiersprachen* und Greenfoot verwendet Java als Programmiersprache. Deshalb ist es wichtig, überhaupt zu verstehen, womit wir arbeiten.

### Was ist das überhaupt?

In der klassischen Programmierung geht es darum, einen *Ablaufplan* zu erstellen, dessen Befehle einfach chronologisch vom jeweiligen Gerät abgearbeitet werden.

Im Gegensatz dazu versucht die *Objektorientierte Programmierung* so viele Programmteile wie möglich zu **Modularisieren**, dadurch kann der Code sehr viel kürzer werden, da Wiederverwendungen vermieden werden. Dieser kürzere Code ist im Zweifel auch leichter zu verstehen, zu testen und zu warten.

### Konzepte der Modularisierung

Um einen modularen Code zu erreichen, werden Codeabschnitte in **Objekte** unterteilt. Diese Objekte können mehrfach erzeugt werden und bleiben gespeichert, solange das Programm läuft (Oder bis sie im Programm gelöscht werden). Objekte können festgelegte Eigenschaften haben (**Attribute** genannt) und eigene Funktionen besitzen (**Methoden** genannt). Um ein Objekt zu erzeugen, muss zuvor eine Art Bauplan erstellt werden, der alle verfügbaren Attribute und Methoden eines Objektes festlegen kann. Ein solcher Bauplan heißt **Klasse**.

Um dieses Konzept besser zu verstehen, hier ein **Beispiel**:

Es gibt eine Klasse namens *Auto*. In der Klasse ist festgelegt, dass alle Autos eine *Marke* haben. Außerdem kann jedes Auto *fahren*, Autos haben also eine Funktion namens *fahren()*.

Dann wird das Programm ausgeführt und ein *Auto* wird erzeugt. Dieses spezielle *Auto* ist jetzt also gebaut worden und existiert jetzt als *Objekt*. Dieses Auto bekommt die *Marke* "Lada" zugewiesen und es soll drei Mal *fahren*, diese Funktion wird also 3 Mal ausgeführt.

### 🌟 Advanced Stuff

Viele Programmiersprachen unterstützen außerdem das Konzept der *Vererbung*. So kann man in Java Beispielsweise eine Klasse "Auto" erstellen und die Klasse "VW" erbt dann alle **Eigenschaften und Funktionen** der "Auto"-Klasse, wird aber z.B. um die Eigenschaften "Modell" und "PS" erweitert.

Objekte sind grundsätzlich von der Außenwelt *abgekapselt* und können nicht ohne weiteres von außen beeinflusst werden (es sei denn, man will das). Objekte entscheiden grundsätzlich selbst über ihr Verhalten. Mehr dazu im Kapitel [Klassen und Objekte](#kap6).

------

## 🎫 Konzepte von Greenfoot <a name="kap2"></a>

Greenfoot ist eine sogenannte **IDE** (Integrated Development Environment). Zu Deutsch, es handelt sich um eine Entwicklungsumgebung, also ein Programm, in dem man Programmiercode schreiben kann. Deshalb nimmt Greenfoot dem Entwickler etwas Arbeit ab, indem dieser den Code nicht selbst zu Maschinencode umwandeln muss. Was Greenfoot außerdem tut, ließt Du hier:

### Actor und World

In Greenfoot gibt es sogenannte **Actors**. Im Prinzip ist das nur eine festgelegte Oberklasse, aus der all deine selbst-erstellten Actors erben. Alle Actors können *act()* ausführen, das passiert in Greenfoot bei jedem Tick / Frame. Außerdem haben sie ein Anzeigebild, das man in Greenfoot vereinfacht durch Rechtsklick auf den Actor verändern kann.

Außerdem gibt es **World**s, dies sind auch nur festgelegte Klassen, in denen Objekte generiert und platziert werden können. Jede World wird also beim Ausführen auch nur als ein Objekt erstellt, das dann die anderen (Actor-)Objekte erstellt und dadurch weiterhin auf diese zugreifen kann.

## Oberfläche

Die **Oberfläche** von Greenfoot enhält ein großes Fenster, in dem live (als Vorschau) eine Welt geladen werden kann, außerdem können *act()* Zyklen simuliert werden. Ein Klick auf "Run" simuliert diese Zyklen im Loop.

An der rechten Leiste sind alle Klassen des Spiels aufgelistet. Dort können neue Actors und Worlds erstellt werden.

------

## 🎢 Java Grundlagen <a name="kap3"></a>

Java ist eine *Objektorientierte Programmiersprache*, die auf vielen Geräten und Systemen ausführbar ist. Java-Code wird als Programm in einen **Zwischencode** umgewandelt ("compiled"), der dann von je nach System / Gerät in den jeweiligen Maschinencode **interpretiert** wird. Dies übernimmt der *Java Interpreter*. Der große Vorteil von Java ist, dass es auf so vielen Systemen funktioniert. Der Nachteil ist, dass solcher *interpretierter Code* etwas langsamer ist, Spiele laufen in Java generell langsamer als z.B. in C++.

### Die main()-Methode

Da Java zu 100% Objektorientiert ist, ist selbst das Programm nur ein Objekt. Jedes Programm hat eine *main()*-Funktion, die als Einstiegspunkt dient, damit der *Interpreter* weiß, was zu tun ist.

Um das zu veranschaulichen, hier das bekannte "Hello-World!" Beispiel:

```java
public class HelloWorld
{
    public static void main(String[] args)
    {
        System.out.println("Hello World!");
    }
}
```

- Die Hauptklasse des Programms heißt *HelloWorld*.
- Diese Klasse besitzt die Funktion *main()* mit folgenden Eigenschaften:
  - Sie ist *public*, kann also von einem anderen Objekt ausgeführt werden.
  - Sie ist *static*, d.h. existiert pro Klasse nur einmal.
  - Sie ist *void*, d.h. sie gibt keinen Wert zurück, bzw. hat kein festes Ergebnis.
  - Sie heißt *"main"*
  - Der *"(String[] args)"*-Parameter kann weitere Argumente beim Ausführen an die Funktion weitergeben, d.h. wenn das Programm in der Konsole mit "helloworld.exe -f -j" gestartet wird, ist die Variable "args" gleich ['-f','-j'], also ein Array aus mehreren Strings.
  - In der Funktion wird der Befehl *System.out.println("Hello World!");* ausgeführt, der einfach *Hello World* in der Konsole ausgibt.

### Syntax

Der **Syntax**, also wie Code in Java strukturiert und artikuliert werden muss, ist recht eindeutig:

- Befehle werden immer als *befehl();* geschrieben, also mit Klammern und einem Semikolon.
- Funktionsblöcke werden immer in *{}* gefasst.
- Arrays stehen in *[ ]* Klammern.
- Es kann eingerückt und verschoben werden, wie nur möglich, aber die {} und ; Zeichen müssen gesetzt werden.
- Einzeilige Kommentare werden mit // und mehrzeilige mit /* und */ geschrieben.

### Alles weitere

...wird in den folgenden Abschnitten detailliert erklärt.

------

## 🎰 Datentypen <a name="kap4"></a>

Wann immer etwas neues im **Speicher** abgelegt werden soll, müssen dessen Zugriffsrechte und der Datentyp festgelegt werden.

### Zugriffsrechte

Bei der Erstellung muss mithilfe eines **Zugriffsmodifikators** festgelegt werden, von wo auf die Daten zugegriffen werden kann. Sie können festgelegt werden für *Klassen, Variablen & Methoden* - Folgendes ist Möglich:

| Code           | Beschreibung                                        |
| -------------- | --------------------------------------------------- |
| *Standardwert* | Sichtbar für das Programmpaket.                     |
| `public`       | Sichtbar für alle.                                  |
| `private`      | Sichtbar innerhalb der eigenen Klasse.              |
| `protected`    | Sichtbar für das Programmpaket und alle Subklassen. |

### 🌟 Modifikatoren

Abseits der Zugriffsmodifikatoren können sogenannte **Nicht-Zugriffs Modifikatoren** festgelegt werden.

| Code       | Gilt für                        | Beschreibung                                                 |
| ---------- | ------------------------------- | ------------------------------------------------------------ |
| `static`   | *Klassen, Methoden*             | Begrenzt die Erstellung auf ein Exemplar pro Klasse          |
| `final`    | *Klassen, Methoden & Variablen* | Verhindert eine Änderung nach der Erstellung.                |
| `abstract` | *Klassen, Methoden*             | Verhindert Initialisierung (Erstellung) als Objekt, Subklassen können aber noch initialisiert werden. |

### Datentypen

Bei der Erstellung von **Variablen** muss der Typ festgelegt werden, also was gespeichert werden soll.

| Code          | Wertebereich                                       | Beschreibung                                                 |
| ------------- | -------------------------------------------------- | ------------------------------------------------------------ |
| ❕`boolean`    | `true` oder `false`                                | Ist wie ein Schalter - kann nur aktiviert oder deaktiviert werden. |
| `byte`        | `-128` bis `127`                                   | Speichern von kleineren ganzen Zahlen.                       |
| `short`       | `-32768` bis `32767`                               | Speichern von etwas größeren Ganzzahlen.                     |
| ❕`int`        | `-2147483648` bis `2147483647`                     | Speichern von großen Ganzzahlen, wird am häufigsten verwendet. |
| `long`        | `-9223372036854775808` bis `9223372036854775808`   | Speichern von sehr großen Ganzzahlen.                        |
| ❕`float`      | `3.4e−038` bis `3.4e+038`                          | Speichern von Kommazahlen.                                   |
| `double`      | `1.7e−308` bis `1.7e+038`                          | Speichern von sehr kleinen Kommazahlen. *(Genauer / Besser als `float`, verbraucht aber 64 statt 32 Bits im RAM)* |
| 🌟`BigDecimal` | ± `2240*10232`                                     | Speichern von großen Zahlen mit Kommaanteil *(z.B. Währungen)* |
| `char`        | Buchstabe / Zeichen                                | Speichern einzelner Buchstaben / Zeichen.                    |
| ❕`String`     | Sequenz mehrerer `char`'s                          | Speichern von längeren Sätzen oder Wörtern.                  |
| `[]`          | `Array` enthält *Variablen, Objekte, Arrays, etc.* | Speichern beliebiger Daten an einem Ort. Kann gut durch Loops erstellt und abgerufen werden. |

### Arrays

Ein Array ist eine **Liste von Objekten** (Also auch Variablen). Man nutzt dabei die `[ ]` wie folgt:

```java
// Erstelle eine Liste von Integers
int zahlen[] = {128,1,29,-69};

// Zugriff auf die 2. Zahl im Array:
// WICHTIG: Der Array-Index startet bei 0. Also ist das 0te Item das erste, das 1te ist das zweite etc.
System.out.println(zahlen[1]); // Gibt "1" aus.
```

### Funktionen / Methoden

Eine **Funktion** ist ein Codeabschnitt, der separat abgespeichert wird, damit er einfacher mehrmals ausgeführt werden kann. Eine Funktion erfüllt normalerweise immer <u>einen</u> bestimmten Zweck.

Beispiel: Überprüfe etwas. Oder setze mehrere Variablen zurück.

```java
// Eine Variable
int eineZahl = 16;

// Funktion definieren
public void neueZahl() {
    eineZahl = 10;
}

// Funktion ausführen
neueZahl();
```

Funktionen werden in Java **Methoden** genannt und gehören immer zu *der Klasse / dem Objekt* in dem sie definiert wurden.

### Rückgabetypen

Am einfachsten lassen sich **Rückgabetypen** anhand einer Funktion erklären:

```java
boolean isValid = checkValid(3);
```

Hier soll überprüft werden, ob die Zahl 3 "valide" ist (was immer das hier heißen mag). Dazu wird die Funktion `checkValid()` mit dem Parameter *3* ausgeführt, diese **gibt dann etwas zurück**.

Die Funktion `checkValid()` könnte so aussehen:

```java
public boolean checkValid(int input) {
    if (input >= 2) {
        return true;
    } else {
        return false;
    }
}
```

Lässt man sich das Ergebnis von `checkValid(3)` ausgeben, so gibt die Konsole `true` aus.

Statt `boolean` lassen sich auch beliebige andere Datentypen verwenden. Gibt es keinen Rückgabetyp, muss `void` verwendet werden. Gibt es einen, muss `return` dann eine Antwort zurückgeben. Jeder Parameter muss in der Klammer mit Datentyp angegeben werden. Argumente werden per Komma getrennt.

### 🌟 Scope

Der **Scope** legt fest, zu welchem Objekt bzw. welcher Klasse die *Variablen und Methoden* gehören. Das wird festgelegt, je nach dem wo der Code geschrieben steht.  Beispiel:

```java
public world() {
    int globalCounter = 0;
    
    public void starteLevel() {
        // Erstelle die Variable "gestartet" und setze sie auf "true"
        boolean gestartet = true;
        globalCounter++;
    }
    
    public void beendeLevel() {
        globalCounter++;
    }
}
```

- Die Variable `globalCounter` gehört zu `world()` und ist außerhalb nicht verfügbar.
- Sowohl `starteLevel()` als auch `beendeLevel()` können auf `globalCounter` zugreifen und diesen erhöhen.
- `gestartet` gehört zu `starteLevel()` und ist außerhalb nicht verfügbar. `beendeLevel()` kennt die Variable nicht.

🔁 **Zusammenfassend** gibt es eine klare Hierarchie und erstellte *Objekte, Methoden und Variablen* können immer nur in derselben oder einer tieferen Ebene genutzt werden.

### Beispiel

```java
// Erstelle zwei Integers, die gleich einem Wert zugewiesen werden.
int posX = 89;
int posY = -1200;

// Erstelle einen Boolean und setzte ihn danach auf true.
boolean schalter1;
schalter1 = true;

// Erstelle eine Kommazahl, die noch keinen Wert hat.
double preis = 0.93127;

// Erstelle einen String, der festgelegt wird.
String name = "Abigall";

// Gebe alle Daten in der Konsole aus, zum Testen:
System.out.println("posX: " + posX);
System.out.println("poxY: " + posY);
System.out.println("schalter1: " + schalter1);
System.out.println("preis: " + preis);
System.out.println("name: " + name);

```

*Kopiere diesen Code ruhig in Greenfoot und führe ihn aus! z.B. könntest Du ihn in den Konstruktur (nach dem super(); ) der aktuellen Welt einfügen und dann per*`Rechtsklick > new MyWorld()` *auf die Welt den Code ausführen.*

------

## 👨‍💻 Rechnen mit Variablen <a name="kap5"></a>

Mithilfe des `=` Operators lässt sich eine **Variable zuweisen**. Das lässt sich nutzen. Auf der rechten Seite kann deshalb auch eine Rechnung stehen, die wird vom Programm dann zuerst ausgerechnet und dann ganz normal zugewiesen. Normale Rechenoperatoren wie `+ - * / ()` werden ganz normal verstanden.

Außerdem lassen sich spezielle Mathe-Funktionen zur Berechnung nutzen.

### Beispiel

```java
// Erstelle eine Variable
int ergebnis;

// Berechnung irgendeiner Formel
// Das Ergebnis wird der Variable zugewiesen
ergebnis = (6+3)*2-1;

// Gebe das Ergebnis aus:
// Erwartungswert: 6+3 = 9 und 9*2 = 18 und 18-1 = 17.
System.out.println("Ergebnis: " + ergebnis);

// Eine weitere Rechnung:
double einViertel = 1.00/4; // Die Zahl der Nachkommestellen muss hier schon festgelegt werden.
double zweiViertel = 1*0.5;

// Ausgabe:
System.out.println("einViertel: " + einViertel + " zweiViertel: " + zweiViertel);

// Wiederverwendung einer alten Variable:
ergebnis = ergebnis + 18;
System.out.println("Neues Ergebnis: " + ergebnis);

// Direktes Rechnen in der Ausgabe:
System.out.print("Drittes Ergebnis: ");
System.out.println(ergebnis * 123);
```

### Output

In der **Konsole**, die dann aufgeht, steht dafür folgendes:

```
Ergebnis: 17
einViertel: 0.25 zweiViertel: 0.5
Neues Ergebnis: 35
Drittes Ergebnis: 4305
```

------

## 🔩 Klassen und Objekte <a name="kap6"></a>

Wie im Kapitel [Objektorientierte Programmierung](#kap1) erklärt, gibt es in Java sogenannte **Klassen und Objekte**, wie diese Konzepte in Java umzusetzen sind, lässt sich wieder anhand eines Beispiels anschaulich erklären:

### Beispiel

```java
import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

public class ExampleWorld extends World
{
    // Variable:
    int zufall = 0;
    
    // Konstruktor für ExampleWorld:
    public ExampleWorld()
    {
        // Setze die Weltgröße für Greenfoot>World
        super(600, 400, 1); 
        
        // Setze "zufall" auf irgendwas
        zufall++;
        
        // Die Methode wird ausgeführt:
        outputLol();
    }
    
    // Zusätzliche Methode:
    public void outputLol() {
        System.out.println("Lol.");
    }
}
```

- *Importiere* alle verfügbaren Klassen von Greenfoot, in diesem Fall wird vor allem die *Welt*-Klasse gebraucht
- `public class ExampleWorld extends World` erstellt eine neue Welt, die aus der Oberklasse `World` erbt. Die Oberklasse stammt aus dem importierten Greenfoot-Paket.
- Die Variable `zufall` wird in der Klasse erstellt, aber sobald aus der Klasse ein Objekt erstellt wird (Sobald der Bauplan gebaut wird), wird die Variable erhöht:
- Der **Konstruktor** `public ExampleWorld()` wird ausgeführt, sobald ein `ExampleWorld()`-Objekt erstellt wird.
- Die Methode `outputLol()` wird ohne [Rückgabetyp](#kap4) erstellt und im Konstruktor ausgeführt.

------

## 🔗 Bedingungen <a name="kap7"></a>

In der Programmierung ist es wichtig, **entscheiden zu können**, was passieren soll. Zum Beispiel innerhalb von *If-Blöcken* kann einfach die Ausführung eines Blocks an eine **Bedingung** geknüpft werden.

### Bedingungen

Das Ergebnis einer Bedingung muss immer `wahr` oder `falsch` sein. Eine Funktion kann nicht zu 50% ausgeführt werden - Entweder sie wird ausgeführt oder nicht.

Die einfachste Bedingung lautet daher: `(true)` oder `(false)`. Beispiel:

```java
while (true) {
    // Code
}
```

Dies ist ein einfacher, unendlicher Loop. Jedes etwas ältere Spiel hat einen solchen Loop.

Um solche Entscheidungen auch Dynamisch zu treffen, kann eine Reihe von Überprüfungen angewandt werden. Das Ergebnis ist immer `true` oder `falsch`:

| Operator | Funktionsweise          |
| -------- | ----------------------- |
| `<`      | `A` Kleiner als `B`     |
| `>`      | `A` Größer als `B`             |
| `<=`     | `A` Kleiner oder Gleich als `B` |
| `>=`     | `A` Größer oder Gleich als `B`  |
| `==`     | `A` Genau gleich wie `B`        |
| `!=`     | `A` Nicht gleich wie `B`        |

Das kann beispielsweise so aussehen:

```java
if (a < 15) {
    // Mache etwas
}
```

Man kann auch mehrere Bedingungen miteinander verknüpfen:

- `||` ist gleich *oder*, es wird aktiv wenn eine der Bedingungen wahr ist.
- `&&` ist gleich *und*, es wird aktiv wenn beide Bedingungen wahr sind.
- 🌟 `!` kann jede Bedingung invertieren.

Das kann dann so aussehen:

```java
if (3 <= 18 && true) {
    // Bedingung ergibt "wahr" -> Code wird ausgeführt
}

if(((7 > 5) && (8 > 5)) || (5 < 3)) {
    // Bedingung ergibt auch "wahr" -> Code wird ausgeführt
    // Bedingungen können mit () eingegrenzt werden,
    // sonst wird von vorne nach hinten geprüft.
}
```

### If, Else und Switches

**Verzweigungen** erlauben nach der Prüfung einer Bedingung, zu entscheiden, ob Code ausgeführt werden soll. Es gibt dazu folgende Befehle:

| Code             | Beschreibung                                                 |
| ---------------- | ------------------------------------------------------------ |
| `if (Bedingung)` | Wenn die Bedingung zutrifft wird der nachfolgende Code ausgeführt.<br />Der Code kann entweder danach in derselben Zeile stehen, oder zwischen `{ }` |
| `else`           | Kann nach den `{ }` eines `if`-Blocks stehen und wird ausgeführt,<br />wenn dieser nicht ausgeführt wurde. |
| `else if`        | Wird ausgeführt, wenn der vorherige `if`-Block nicht ausgeführt wurde.<br />Besonders hilfreich in einer Verkettung aus mehreren Bedingungen. |
| 🌟`switch (var)`  | Kann viele Möglichkeiten für die Variable in Klammern durchgehen.<br />Format: `switch (var) { case 1: code1(); case 2: code2(); }`<br />Wenn `var == 1` dann wird `code1()` ausgeführt. |

Das kann so aussehen:

```java
// Einzeilige If-Bedingung
if (schalter == true) schalteEsAb();

// Mehrzeilige If-Bedingung
if (a > 1 || a < 0) {
    b++;
}

// Mehrere Möglichkeiten durch If / Else
if (unterkurs.vorhanden >= 1) {
    sammleUnterkurse();
} else if (unterkurs.vorhanden == 0) {
    glueckwunsch();
} else {
    System.out.println("Error!");
}

// Viele Möglichkeiten einer Variable
switch (monat) {
    case 1: monatName = "Januar";
    case 2: monatName = "Februar";
    case 3: monatName = "März";
    // Und so weiter...
}
```

------

## 🌠 Schleifen <a name="kap8"></a>

Ein weiterer wichtiger Bestandteil der Programmierung ist es, Codeabfolgen wiederholen zu können. Das spart Code und ermöglicht u.a. erst Spiele.

### Arten von Schleifen

##### While-Schleife

```java
while ( Bedingung ) {
    // Ausführbarer Code
}
```

Die *While-Schleife* ist im Grunde nur ein If-Block, der am Ende wieder zum Anfang springt und die Bedingung prüft etc...

##### For-Schleife

```java
for(a = 0; a<= 60; a++) {
	// Ausführbarer Code
} 
```

Die *For-Schleife* ist wie eine While-Schleife, die automatisch zwei Code-Blöcke ausführt. Das sieht so aus:

`(Start-Code; Bedingung; End-Code)`

- Der `Start-Code` wird einmal als erstes beim Erreichen der Schleife ausgeführt.
- Die `Bedingung` funktioniert wie bei der *If-Schleife*.
- Der `End-Code` wird nach jedem Durchlauf des *Ausführbaren Codes* ausgeführt.

In der Praxis wird das meistens verwendet, um einen **Counter** zu haben, der den Code eine bestimmte Häufigkeit lang ausführt.

------

## 🐫 Ausgaben <a name="kap9"></a>

##### Konsolenausgabe

- `System.out.println()` gibt den Text in Klammern in die Konsole aus und erstellt dann eine neue Zeile.
- `System.out.print()` gibt den Text in Klammern in die Konsole aus, ohne neue Zeile.

##### 🌟 Systempakete

In Java werden Programme in sogenannte **Pakete** unterteilt. Einige Pakete gibt es immer wie `System` und `Java`. In Greenfoot wird auch z.B. das Paket `Greenfoot` importiert.

Deshalb heißt auch der Befehl zur Konsolenausgabe `System.out.print()`, er gehört zum `System`-Paket, in diesem Paket gibt es ein `out`-Paket, das wiederum für Ausgaben zuständig ist.

Pakete sind übrigens auch nichts anderes als **Objekte**. Man kann auf Objekt-Eigenschaften genauso zugreifen: `Objekt.Eigenschaft = 0;`

------

## ✨ Sauberen Code schreiben! <a name="kap10"></a>

`🌟 Dieses Kapitel ist zu 100% optional!`

**Sauberen** Code zu schreiben ist wichtig!

**Sauber** ist der Code dann, wenn er einfach zu lesen ist. Außerdem sollte er keine Logikfehler und Bugs haben.

Man sollte Code möglichst **sauber** halten, damit er einfacher zu verstehen, dadurch weniger Fehleranfällig und im Zweifel auch performanter ist. Mit gutem Code lässt sich auch einfacher arbeiten. Deswegen gibt es in diesem Kapitel ein paar Beispiele und Ideen, wie guter Code zu schreiben ist.

### Namen sinnvoll wählen!

Ein Beispiel: Eine Variable, die speichern soll, **ob** das Programm **aktiv** ist, könnte `akt` heißen. Aber jemand, der das Programm nicht geschrieben hat, wüsste nicht auf Anhieb, was diese Variable enthält.

Stattdessen könnte man diese Variable `isActive` nennen. Die `is`-Vorsilbe zeigt sofort, dass es sich um ein `boolean` handelt und `Active` ist eindeutig zu verstehen.

Zweites Beispiel: Eine **Klasse**, die allen *dämonischen* Welten übergeordnet ist, heißt `DämonenKlasse`.

Aber aus diesem Namen geht nicht hervor, dass es sich um Welten handelt. Außerdem sollte *Klasse*, also der Datentyp, nicht direkt in den Namen. Zuletzt programmiert man immer auf *Englisch*, Java lässt also einen Klassennamen mit einem `ä` gar nicht zu, das sollte generell vermieden werden.

Besser wäre hier: `UnterWelten` oder `DaemonWorlds`

### Gute Formattierung!

Folgende Regeln könnten dir helfen:

- Rücke Inhalte in geschweiften Klammern immer ein!
- Halte auch mal einen Absatz Freiraum zwischen den Zeilen für bessere Struktur.
- Halte dich an deine eigenen Regeln! Wenn Du z.B. gerne `( a > b )` schreibst statt `(a>b)`, dann zieh das durch! Bleibe konsequent.
- Fasse dich kurz. Der eigentliche Code sollte immer kurz und übersichtlich sein.

##### Beispiel für schlechten Code

```java
if (  a==32)
{
lol(); raaaad(25)}
			System.out.println("Fertig!");
```

##### Beispiel für guten Code

```java
if ( a >= 3 ) {
    resetValues();
} else {
    System.out.println("A ist kleiner als 3!");
}
```

### Kommentare

```java
// Einzeiliger Kommentar

/*
	Mehrzeiliger Kommentar
*/
```

**Nutze sie!** Nicht jede Zeile muss kommentiert werden, aber zu beschreiben, wie Du ein bestimmtes Problem gelöst hast, ist wichtig! Du selbst wirst diesen Code dadurch sehr viel einfacher lesen können, genauso wie alle anderen Leute, die deinen Code lesen.

