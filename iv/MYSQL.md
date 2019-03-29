# 💾 Datenbanken

[Zurück zur Themenübersicht](THEMEN.md)

### 📋 Inhalt

1. **[Einführung](#einführung)**
2. **[ERDs](#erds)**

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

