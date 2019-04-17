# 👨🏽‍💻 Informatik

Auf dieser Seite soll eine **Übersicht aller Themen**, die in der IT-Abiturprüfung an unserer Schule stattfinden wird, erstellt werden. Von hier wird dann auf kleinere **Lernzettel** für die jeweiligen Themengebiete ***weitergeleitet***. Außerdem funktioniert diese Datei als eine Art *ToDo-Liste* für die Erstellung dieses Lernzettels.

📌 Ganz unten auf dieser Seite sind **Übungsaufgaben**

### 📋 Lernzettel

Hier findest Du die drei Haupt-Lernzettel für die jeweiligen Fächer:

- [Java](pages/JAVA.md) *100%*
- [Steuerungstechnik](pages/STEUERUNG.md) *85%*
- [Netzwerktechnik](pages/NETZWERKE.md) *85%*
  - [Filius](pages/FILIUS.md) *85%*

------

### 📰 Dokumente

In diesem Abschnitt findest Du eine **Übersicht aller [Dokumente](docs) aus dem Unterricht**, die ich hier auf GitHub hoste!

##### 🏝 Java

- [Java - Wiederholung](docs/java_wdh.pdf) *von Lam* 

##### 🎚 Steuerungstechnik

| Lehrer (PDFs)                                                | Eigenes (Word)                                            |
| ------------------------------------------------------------ | --------------------------------------------------------- |
| 1. ["Steuern und Regeln"](docs/steuerung/01_Steuern_und_Regeln.pdf) | 4.3 "Codes" [Meine Lösung](docs/steuerung/4.3_Codes.docx) |
| 2. ["Pneumatik"](docs/steuerung/02_Pneumatik.pdf)            | 4.4 "Signalarten" [Meine Lösung](docs/steuerung/4.4.docx) |
| 3. ["Steuerungsarten"](docs/steuerung/03_Steuerungsarten.pdf) |                                                           |
| 4. ["Pneumatik"](docs/steuerung/04_Pneumatik.pdf)            |                                                           |
| 5. ["Signalarten"](docs/steuerung/05_Signalarten.pdf)        |                                                           |
| 8. ["Automatisierungstechnik"](docs/steuerung/08_Automatisierungstechnik.pdf) |                                                           |

##### 🔌 Netzwerke

Hier gibt es viele Dokumente, daher verlinke ich hier nur die **Themen-Ordner**:

- [OSI & Grundlagen](docs/netzwerke/osi_u_grundlagen)
- [Subnetting](docs/netzwerke/subnetting)
- [Referate (Protokolle)](docs/netzwerke/referate)
- [Firewall & Routing](docs/netzwerke/advanced)

------

### ☑ ToDo Liste

Hier ist meine persönliche ToDo-Liste für die Erstellung dieses Lernzettels:
*Du kannst diesen Abschnitt gerne als eigene To-Learn Liste nutzen. ^^*

- [x] Allgemeines

  - [x] Einfügen aller Dokumente

- [x] Java-Programmierung
  - [x] [Java Lernzettel](pages/JAVA.md) (Langzeit-Teil überarbeiten)
  - [x] Erstellen von mehr Übungsaufgaben

- [x] Steuerungstechnik (Kleinere Lernzettel für die Themen)

  - [x] Zahlensysteme
    - [x] Überarbeitung mit Watermanns PDF
  - [x] Codes
  - [x] Steuern & Regeln
  - [x] Begriffe der IT
  - [ ] Erstellen von Übungsaufgaben

- [x] Netzwerktechnik

  - [x] OSI-Modell
  - [x] Netzwerkgeräte (Hardware)
  - [x] Protokolle
    - [x] Ergänzung mit Referatsthemen
  - [x] Subnetting
  - [x] Filius Ergänzung (Routing / Firewalls)
  - [ ] Erstellen von Übungsaufgaben

  

  Ziel ist es, zu jedem dieser Themen einen eigenen Lernzettel zu erstellen.

------

## 📌 Übungsaufgaben

### 🏝 Java-Aufgaben

##### 1. "Die magische Konsole" 📋 - [Lösung](java/lösungen/Aufgabe 1 - Magische Konsole.gfar)

- Erstelle ein neues Greenfoot-Projekt und benenne die Welt um.
- Erstelle in dieser Welt eine neue Methode, die die Konsole starten soll.
- Diese Methode soll im Konstruktor der Welt ausgeführt werden.
- Nutze den Befehl `System.out.println()`, um 30x abwechselnd "a" und "b" in die Konsole auszugeben.

##### 2. "Ninja-Baby" 🐱‍👤 - [Lösung](java/lösungen/Aufgabe 2 - Ninja Baby.gfar)

- Importiere die Vorlage aus dem [/java/vorlagen](java/vorlagen) - Ordner!
- Lasse das Baby vorwärts laufen.
- Wenn das Baby die rechte Kante erreicht, soll es automatisch wieder nach links teleportiert werden. Du kannst die Positionen mit `getX()` oder `getY()` erhalten und die Position mit `setLocation(x, y)` setzen.
- Anstatt sich zu teleportieren, soll sich das Baby jetzt mit `turn(180)` gedreht werden und denselben Weg wieder an die linke Bildschirmkante zurück laufen. Dort soll es sich wieder drehen und normal laufen etc.
- Wenn das Baby von rechts nach links läuft, soll die Geschwindigkeit stark erhört werden.

##### 3. "Synchronität" 🔢 - [Lösung](java/lösungen/Aufgabe 3 - Synchronität.gfar)

- Erstelle ein neues Greenfoot-Projekt und einen neuen Actor.

- Diese Actorklasse soll später mehrfach als Objekt platziert werden. Die verschiedenen Objekte sollen später auch verschiedene Dinge tun, aber in einem Muster. Als erstes soll sich dazu dein Actor in einem Rechteck bewegen: Er soll sich bei jedem Act mithilfe von `move(x)` bewegen und alle 30 act()'s die Richtung um 90° mithilfe von `turn(90)` ändern.

- Platziere den Actor 4x in der Mitte deiner Welt und speichere die Welt mit einem Rechtsklick ins Fenster.

- Für jede der 4 Richtungen, in die sich der Actor bewegt, soll er eine andere Textur erhalten. Nutze dafür 

  ```java
  GreenfootImage textureObj = new GreenfootImage(  dateiname.png  );
  setImage(textureObj);
  ```

##### 4. "Finde die Fehler" 📍 - [Lösung](java/lösungen/Aufgabe 4 - Finde den Fehler.md)

```java
/*
	Generate Pyramid For a Given Number Example
	This Java example shows how to generate a pyramid of numbers for given
	number using for loop example.
*/
 
import java.io.BufferedReader;
import java.io.InputStreamReader;
 
public class GeneratePyramidExample {
	
	public static void main (String[] args) throws Exception{
		
		BufferedReader keyboard = new BufferedReader (new InputStreamReader (System.in));
		
		System.out.println("Enter Number:");
		int as = Integer.parseInt (kejboard.readLine());
		System.out.println("Enter X:");
		int x = Integer.parseInt (keyboard.readLine());
		 
		
		for(var i=0; i<= as ;i++){
			
			for(j=1; j <= i){
				System.out.print(y + "t");
				y = y + x;
			}
			
			System.out.print ln("");
		}
        
		int y = 0;
        
	}
}
```

### 🎛 Steuerungstechnik-Aufgaben

##### 1.

*[Mehr Aufgaben folgen]*

