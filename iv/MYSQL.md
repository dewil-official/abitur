# 💾 Datenbanken

[Zurück zur Themenübersicht](THEMEN.md)

### 📋 Inhalt

1. **[Einführung](#einführung)**
2. **[ERDs](#erds)**
3. **[Transformation](#transformation)**
4. **[Normalisierung](#normalisierung)**

------

### 🔊 Einführung <a name="einführung"></a>

*Was sind Datenbanken?*

Eine Datenbank ist eine elektronisch generierte **Sammlung von Informationen**, die eine große Menge von Daten speichern und verarbeiten lässt.

*Wie funktioniert eine Datenbank?*

Grundsätzlich gibt es immer einen **Server**, mit dem sich **mehrere** Programme / Clients etc. verbinden können. In unserem Fall übernimmt das *xampp*. Mit diesem Server kann man sich dann verbinden, um Anfragen an die Datenbank zu stellen. Als Client nutzen wir *SQLyogCommunity*. Dort kann man sogenannte *Queries* erstellen, im Prinzip nur eine Abfolge von SQL-Befehlen, die auf die Datenbank zugreifen.

Die Datenbank kann aus mehreren Tabellen *"Tables"* bestehen, die untereinander Relationen / Beziehungen enthalten. In den Tabellen kann man verschiedene Spalten und Zeilen anlegen, um Daten zu speichern.

*Was ist SQL?*

SQL ist eine Datenbanksprache, also eine Sprache die Befehle zur Definition, Bearbeitung und Abfrage von Datenbeständen enthält. SQL zeichnet sich durch seine Standardisierung in vielen Bereichen aus und ist wohl die verbreitetste Sprache.

#### SQL-Sprachelemente

So trivial das auch sein mag, man unterscheidet bei den SQL-Befehlen je nach dem Zweck der Befehle.

- **Data Definition Language** (DDL) enthält Befehle zur Definition / Erstellung von Daten.
- **Data Control Language** (DCL) enthält Befehle die mit Zugriffsberechtigungen zu tun haben. Natürlich darf nicht jeder Client auf alle Daten zugreifen.
- **Data Manipulation Language** (DML) enthält Befehle zur Manipulation und Abfrage von Daten.

Ein paar Beispiele:

| DDL             | DCL      | DML    |
| --------------- | -------- | ------ |
| CREATE DATABASE | *GRANT*  | SELECT |
| CREATE TABLE    | *REVOKE* | DELETE |
| ALTER TABLE     |          | INSERT |
| DROP TABLE      |          | UPDATE |
| *RENAME*        |          |        |

#### Workflow

Bei der Arbeit mit Datenbanken, hier speziell mit MySQL, sollte man zunächst verstehen, wie Datenbanken zu handeln sind.

Generell gilt folgender Ablauf:

- Erstellung einer Datenbank (CREATE DATABASE)
- Auswahl der neuen Datenbank (USE)
- Erstellung einer Tabelle (CREATE TABLE)
  - Festlegung der Tabellenspalten
- Einfügen von Daten (INSERT)
- Weiteres Verarbeiten / Abrufen dieser Daten

Datenbanken sind aber **persistent**, das heißt nach dem Ausführen einer Query existiert die Datenbank noch weiter. Deswegen wurden in unseren Beispielaufgaben immer zuerst die alte Datenbank wieder gelöscht, um dieselbe neu wieder zu erstellen.

------

### 🎳 Datenbankmodellierung (ERDs) <a name="erds"></a>

Datenbanken bestimmen den Alltag. Genauso lassen sich Datenbanken als Abbilder realer Informationen und Relationen erstellen. 

In einem ERD (Entity-Relationship-Diagramm) wird nach den Vorgaben des ERM (Entity-Relationship-Modell) eine grafische Darstellung der Beziehungen erstellt.

![](http://www.datenbanken-verstehen.de/wordpress/dbv/uploads/elemente_entity-relationship-modell.jpg)

Grundsätzlich werden reale Objekte in einem ER-Diagramm als **Entität** bezeichnet. Eine Tabelle enthält eine Menge derselben Entitäten.

Die **Beziehung** zwischen Entitäten legt eine Zuordnung fest, die später abgespeichert werden kann.

**Attribute** sind einzelne Datenfelder dieser Entitäten.

![](http://www.datenbanken-verstehen.de/dbv/uploads/beispiel_entity-relationship-modell-465x124.jpg)

Beispielhaft könnte das dann so aussehen: Es gibt eine Tabelle für alle Mitarbeiter, jeder Mitarbeiter hat einen Namen.

Außerdem gibt es eine Tabelle für alle Projekte, jedes Projekt hat einen Namen, ein Datum und ein Budget.

Die Beziehung legt fest, dass jedes Projekt einen Mitarbeiter hat, der es leitet. Das heißt in den Projekten ist das jeweils abgespeichert.

#### Namenskonventionen

Die **Benennung** der Elemente eines ERDs kann je nach Projekt unterschiedlich erfolgen. Im Unterricht jedoch erfordert Herr Lam die folgenden Benennungen:

- Entitäten werden groß geschrieben: *Autos*
- Attribute enthalten noch den Anfangsb. der Entität und sind klein: *a_farbe*
- Beziehungen sind klein geschrieben: *leitet*
- Primärschlüssel werden als Attribut geschrieben und fett unterstrichen: *a_nr*
- Fremdschlüssel werden als Attribut einer anderen Entität geschrieben und gestrichelt unterstrichen: *h_nr*

Diese Benennungen sind stark an das angelehnt, was später in SQL programmiert wird.

#### Primär- und Fremdschlüssel

**Schlüssel** werden in Datenbanken für die **eindeutige** Identifikation der Entitäten benötigt.

Ein **Primärschlüssel** wird als erstes Attribut einer Entität festgelegt. Ein **Fremdschlüssel** enthält den Primärschlüssel einer fremden Entität, dies ist wichtig für Beziehungen zwischen den Entitäten. Ein Fremdschlüssel ist immer das letzte Attribut.

#### Beziehungen

Es ist einfach zu sagen, *dass* eine Beziehung besteht. Schwerer ist es dann, genau zu definieren, *welche* Beziehung besteht. Eine Beziehung legt fest, dass eine Entität irgendwie einer anderen Entität zugeordnet werden soll.

**Wie viele** Entitäten einer anderen zugeordnet werden, nennt man **Kardinalität**. Dadurch gibt es folgende Möglichkeiten:

| Art               | Erklärung                                                    |
| ----------------- | ------------------------------------------------------------ |
| **1:1** Beziehung | "Ein Mann heiratet eine Frau und umgekehrt."<br />Dabei wird ein Fremdschlüssel in der jeweils anderen Tabelle gespeichert.<br />Nur hilfreich, um Teile einer Tabelle in eine andere auszulagern. |
| **1:n** Beziehung | "Ein Hersteller produziert mehrere Autos, jedes Auto hat aber genau einen Hersteller."<br />Dabei erhält jede Entität der n-Seite den Fremdschlüssel der anderen Seite. |
| **m:n** Beziehung | "Viele Hersteller produzieren zusammen eine Reihe von Uhren."<br />Dabei wird eine Hilfstabelle verwendet, um alle Relationen festzuhalten. Auf beiden Seiten wird jeweils nur die Hilfstabelle als Fremdschlüssel angegeben. |

Im Diagramm werden diese Beziehungen wie folgt dargestellt:

![](https://i.postimg.cc/WbJc58fr/Anmerkung-2019-03-29-135454.jpg)

#### Umsetzung in Dia

Das Programm DiaPortable kann [hier](https://portableapps.com/de/apps/office/dia_portable) runtergeladen werden. Auf der linken Seite kann im Dropdown-Menü "Andere Objektbögen > ER" ausgewählt werden.

Dann erscheinen auf der linken Seite ein Entitäts-Objekt, ein Beziehungs-Objekt und ein Attributs-Objekt.

### 📅 Transformation <a name="transformation"></a>

**Transformation** ist die Umwandlung vom ER-Modell in eine Tabellenform. Das ist deswegen sinnvoll, da die Tabellen genau die spätere Datenbank widerspiegeln, sie sich in Tabellenform aber noch besser *ordnen* und *verbessern* lassen.

#### Transformationsregeln

- Jede Entität erhält eine eigene Tabelle
- m:n Beziehungen erhalten eigene Tabellen
  - Dort stehen Fremdschlüssel der beiden Entitäten
- 1:n und 1:1 Beziehungen **mit** eigenen Attributen erhalten eine eigene Tabelle
- Bei 1:n Beziehung **ohne** Attribute erhält die n-Seite einen Fremdschlüssel
- Bei 1:1 Beziehung **ohne** Attribute erhält eine Seite den Primärschlüssel der anderen Seite als eigenen Primär- und Fremdschlüssel gleichzeitig
- Lassen sich die letzten beiden Regeln nicht anwenden, z.B. wegen ungleichen Entitätsmengen, wird auch eine eigene Tabelle erstellt
- Alle Regeln sind gut [hier](http://www.oberstufeninformatik.de/Datenbanken/ERMTheorie.pdf) erklärt.

#### Tupelschreibweise

Die **Tupelschreibweise** versucht die Tabellen als Pseudo-Programmiercode zu schreiben.

- Tabellenname(Primärschlüssel, Attribut 1, Attribut 2, Fremdschlüssel, Fremdschlüssel);
- *Beispiel*: Lehrer(<u>l_nr</u>, l_name, l_telefonnummer, <u>f_nr</u>);
  - Semikolon nicht vergessen!
  - Fremdschlüssel gestrichelt unterstreichen (Dieses Textformat unterstützt das nicht...)!

### 💸 Normalisierung <a name="normalisierung"></a>

Bevor die Datenbanken in SQL umgesetzt werden, sollten sie **normalisiert** werden. Dazu gibt es drei Schritte bzw. drei Normalformen, die am Ende dann verhindern, dass Dopplungen und Redundanzen in der Datenbank auftreten.

#### Erste Normalform

