# 💾 Datenbanken

[Zurück zur Themenübersicht](THEMEN.md)

### 📋 Inhalt

1. **[Einführung](#einführung)**
2. **[ERDs](#erds)**
3. **[Transformation](#transformation)**
4. **[Normalisierung](#normalisierung)**
5. **[MYSQL](#sql)**

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

------

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

------

### 💸 Normalisierung <a name="normalisierung"></a>

Bevor die Datenbanken in SQL umgesetzt werden, sollten sie **normalisiert** werden. Dazu gibt es drei Schritte bzw. drei Normalformen, die am Ende dann verhindern, dass Dopplungen und Redundanzen in der Datenbank auftreten.

#### Erste Normalform

> Jedes Attribut muss einen **eigenen** Wertebereich haben!

Beispiel:

![NF1-Verletzt](https://i.ibb.co/7t7LR4d/image.png)

Die Rot-markierten Zellen verletzen diese Regel. Man muss also den Künstler und das Album noch aufteilen, wie auch die einzelnen Titel.

Lösung:

![NF1-Lösung](https://i.postimg.cc/66Cgfd3D/Anmerkung-2019-03-30-110054.jpg)

Diese Lösung ist natürlich noch nicht optimal. Deswegen weiter zur nächsten Form:

#### Zweite Normalform

> *Zusätzlich zur ersten Normalform* müssen **nicht-primäre** Attribute ausgelagert werden.

Die Attribute sollen also jeweils nur von ihrer Entität abhängig sein. Innere Abhängigkeiten sollen also entfernt werden.

Beispiel:

![NF2-Verletzt](https://i.postimg.cc/hPsSpFvW/Anmerkung-2019-03-30-110742.jpg)

Die Rot-markierten Zeilen doppeln sich! Ganz einfach deshalb, weil die linken drei weißen Spalten unabhängig vom cd_track sind.

Lösung:

![NF2-Lösung](https://i.postimg.cc/pdxJxFxn/Anmerkung-2019-03-30-111039.jpg)

Hier wurden die cd_titel ausgelagert, die sowohl abhängig sind vom cd_track, wie auch vom cd_id. Es ergibt sich also ein zusammengesetzter Primärschlüssel.

#### Dritte Normalform

> *Zusätzlich zur zweiten Normalform* müssen **transitive** Abhängigkeiten entfernt werden, das heißt es dürfen keine Attribute von anderen Nicht-Schlüssel-Attributen abhängig sein.

Jetzt, wo in der zweiten Normalform die Abhängigkeiten von Schlüsselattributen entfernt wurden, sollen auch die Abhängigkeiten von Nicht-Schlüsseln entfernt werden. Dazu wird im Zweifel eine neue Tabelle erstellt.

Beispiel:

![NF3-Verletzt](https://i.postimg.cc/kGcL7mRx/Anmerkung-2019-03-30-112416.jpg)

Das Gründungsjahr des Interpreten hängt nur vom Interpreten ab. Daher entstehen Dopplungen. Also: Interpret auslagern!

Lösung:

![NF3-Lösung](https://i.postimg.cc/x1rL9zY3/Anmerkung-2019-03-30-112604.jpg)

*Künstler* haben also ihre eigene Tabelle erhalten und in der CDs-Tabelle werden die nur noch per Fremdschlüssel referenziert.

#### Zusammenfassung

Das **Ziel** ist es IMMER, **keine Dopplungen** mehr zu haben. Wenn jetzt also ein Künstler seinen Namen ändern möchte, dann muss sich der Datenbankverwalter keine Sorgen mehr machen, außer k_interpret einmal zu ändern.

Dazu die folgenden Schritte befolgen:

- Attribute aufteilen
- Innere Abhängigkeiten auslagern
  - Zuerst von Zweit-Schlüsseln
  - Dann von Nicht-Schlüsseln

------

### 💽 MySQL Umsetzung <a name="sql"></a>

In diesem Abschnitt werden die Befehle erklärt, die innerhalb der *Datenbank-Queries* verwendet werden können, um eine Datenbank in der Praxis zu erstellen.

In diesem Abschnitt wird sich **nur** auf die **Befehle** konzentriert und was sie bewirken, weil die ganze Theorie zu diesem Zeitpunkt klar sein sollte. Wie man die Programme einrichtet sieht man [hier](https://github.com/dewil-official/abitur/blob/master/iv/lehrerdocs/datenbanken_aktualisiert.pdf).

> **Syntax** für die folgenden Befehlserklärungen:
>
> z.B. "CREATE DATABASE <name>" => <name> muss ersetzt werden.
>
> z.B. "CREATE TABLE <name> ([entities])" => [entities] ist optional und KANN ersetzt werden.

#### Datenbank Handling

- `CREATE DATABASE <name>;` **Erstellung** einer Datenbank
- `DROP DATABASE <name>;` **Löschen** einer Datenbank
- `USE <name>;` **Auswahl** einer Datenbank (***Muss*** am Anfang einer Query gemacht werden)
  - Bleibt ausgewählt bis Query-Ende oder Neuauswahl!

> **Denk dran:** Datenbanken sind *persistent!* Das heißt, wenn Du einmal eine Datenbank erstellst, dein Programm schließt und es irgendwann wieder startest, ist die Datenbank noch da! In den Unterrichtsbeispielen wurde daher zunächst immer einmal die Datenbank gelöscht und dann wieder neu erstellt.

#### Tabellen Handling

- `CREATE TABLE <name> [spalten] ENGINE=INNODB;` **Erstellung** einer Tabelle
- `DROP TABLE <name>;` **Löschen** einer Tabelle

Da man vorher meistens schon die zu erstellenden Attribute / Spalten kennt, sollte man diese direkt mit-erstellen.

Dazu gibt es folgende Datentypen:

| Typ       | Erklärung                                                    |
| --------- | ------------------------------------------------------------ |
| `varchar` | Zeichenketten (Buchstaben, Zeichen und Zahlen)               |
| `int`     | Ganze Zahlen                                                 |
| `dec`     | Kommazahlen ( Bei der Definition: dec(Gesamtlänge, Nachkommastellen) z.B. dec(5,2) für 250,99 ) |
| `date`    | Daten                                                        |
| `year`    | Jahr                                                         |
| `time`    | Zeitangaben                                                  |

Außerdem weitere Argumente bei der Erstellung:

| Argument       | Erklärung                                                    |
| -------------- | ------------------------------------------------------------ |
| NOT NULL       | Spalte darf nicht leer sein. (z.B. bei Primärschlüsseln)     |
| AUTO_INCREMENT | Bei der Erstellung wird automatisch die nächst höhere Nummer generiert. (z.B. bei Primärschlüsseln) |

**Beispielsweise** könnte eine Tabellenerstellung so aussehen:

```mysql
CREATE TABLE Schueler (
	s_nr INT(6) NOT NULL AUTO_INCREMENT,
    s_nachname VARCHAR(40),
    s_vorname VARCHAR(40),
    s_str VARCHAR(60),
    s_plz INT(5),
    s_ort VARCHAR(40),
    s_tel VARCHAR(15),
    PRIMARY KEY(s_nr)
) ENGINE = INNODB;
```

Bedenke bei der Erstellung folgende Dinge:

- Es muss einen **Primärschlüssel** geben, der dann durch `PRIMARY KEY()` festgelegt wird.
- In Klammern der *Datentypen* steht die Länge der Daten. (max. Stellenanzahl)
- Das letzte Attribut (Hier: PRIMARY KEY) hat *kein Komma* mehr dahinter.
- `ENGINE = INNODB;` Notwendig, weil Baum.

#### Spalten Handling

Abseits der Spaltenerstellung im letzten Kurzabschnitt, lassen sich auch einzelne Spalten manipulieren:

- `ALTER TABLE <tabelle> ADD <name> <datentyp(länge)>;` **Erstellen** einer Spalte
- `ALTER TABLE <tabelle> DROP <spalte>;` **Löschen** einer Spalte
- `ALTER TABLE <tabelle> CHANGE <sname_alt> <sname_neu> <datentyp>;` **Umbenennen** / **Typänderung** einer Spalte

#### Daten Handling

Die eigentlichen Daten können wie folgt manipuliert / abgerufen werden:

- `INSERT INTO <tabelle> (<spalte1>[,spalte2 ...]) VALUES(<wert1>[,wert2 ...]);` **Füge** einen Datensatz **ein**. (Varchar muss in "" stehen), es geht auch *NULL* als Wert. Dezimalzahlen werden mit einem . getrennt
- `DELETE FROM <tabelle> WHERE <Bedingung>;` **Lösche** bestimmte Daten
- `UPDATE <tabelle> SET <spalte>=<wert>[, ..] WHERE <Bedingung>;` **Update** bestimmter Daten

##### Bedingungen

*Bedingungen* sind sehr wichtig, da sich mit ihnen gezielt Daten finden und manipulieren lassen.

- `WHERE <Bedingung> AND <Bedingung>` Mit **AND** lassen sich beliebig viele Bedingungen verknüpfen.
- `WHERE <Bedingung> OR <Bedingung>` Mit **OR** lassen sich beliebig viele Bedingungen verknüpfen.
- `WHERE <name>=<daten>` Einfache **Gleich**heitsüberprüfung
- `WHERE <name><=<daten>` Überprüfung mit *>=,<=,>,<*
- `WHERE <name> LIKE 1_` Alle Daten, die dem Muster 1_ entsprechen, während _ durch jede beliebige Zahl ersetzbar ist.
- `WHERE <name> LIKE '%a'` Alle Daten, die auf a enden. % steht für eine beliebige Anzahl von Zeichen davor.

#### Abfrage / Funktionen

- `SELECT <* oder Spalte(n) oder Funktion> FROM <tabelle>;` Normale **Abfrage**.
- `SELECT DISTINCT <spalte> FROM <tabelle>;` **Abfrage** unter Vermeidung von Dopplungen.
- `SELECT <Funktion> FROM <tabelle>;` **Abfrage** mit einer Funktion
  - `avg(spalte)` Berechne den **Durchschnitt**
  - `sum(spalte)` Berechne die **Summe**
  - `max(spalte)` Berechne das **Maximum**
  - `min(spalte)` Berechne das **Minimum**
  - `count(spalte)` Berechne die **Anzahl** der Datenfelder

- `SELECT <auswahl> FROM <tabelle> ORDER BY <spalte>;` **Ordne** die Ausgabe
- `SELECT <auswahl> FROM <tabelle> ORDER BY <spalte> DESC;`**Ordne** die Ausgabe **absteigend**.

#### Abfragen über mehrere Tabellen

Es gibt prinzipiell zwei Möglichkeiten, Abfragen über mehrere Tabellen hinweg zu erstellen.

##### WHERE-Verknüpfung

Wenn die WHERE-Abfrage über mehrere Tabellen hinweg gestartet wird, dann meistens mit einer Verknüpfung zwischen den Tabellen. Das kann dann so aussehen:

- `SELECT spalte1, spalte2 from tabelle1, tabelle2 WHERE tabelle1.pk=tabelle2.fk;`

Zum einen werden sowohl die beiden Spalten, als auch die beiden Tabellen einfach *mit Komma getrennt*. Zum anderen gibt es die *WHERE* Bedingung, die eine Verbindung zwischen den Tabellen herstellt.

##### JOINs

![](http://www.datenbanken-verstehen.de/dbv/uploads/sql_joins.png)



> **Diese Links werden noch in diesen Lernzettel umgesetzt:**
>
> - [GROUP BY](http://www.datenbanken-verstehen.de/sql-tutorial/sql-group_by-befehl/)
> - [HAVING](http://www.datenbanken-verstehen.de/sql-tutorial/sql-having-befehl/)
> - [JOINS](http://www.datenbanken-verstehen.de/sql-tutorial/sql-joins/)

