# 🎳 Steuern und Regeln

**Maschinen und Anlagen** werden mithilfe der **Steuerungs**- und **Anlagentechnik** automatisiert. Auf dieser Grundlage gibt es grundsätzlich zwei Möglichkeiten:

- Beim **Steuern** wird eine *feste Eingabe* getätigt, die dann von der Maschine umgesetzt werden soll.
- Beim **Regeln** wird ein *Soll-*Wert festgelegt und ein *Ist-*Wert gemessen, der dann automatisch korrigiert wird.

Der *große Unterschied* ist, dass beim Steuern *keine Fehlerkorrektur* stattfindet. Man dreht den Strom auf, aber ob er ankommt ist unklar. Ein *Regler* ist in der Lage die Funktionalität zu gewährleisten und kann teilweise sogar Fehler ausgeben.

> **⚠ Wichtig:** Die folgenden Abschnitte thematisieren alle die **Steuerungstechnik** und nicht die Regelungstechnik!

### Das EVA-Prinzip

- **Eingabe** von Signalen *z.B. durch Taster, Druckschalter und Sensoren*
- **Verarbeitung** der Signale *z.B. durch Verknüpfung in einem Relais*
- **Ausgabe** der Signale *z.B. an einem Antriebsmotor*

Dieses Prinzip lässt sich in der Steuerungstechnik fast immer anwenden, es findet sich aber auch in der Informatik wieder. Nützlich ist die Unterteilung vor allem für Planung und Analyse der Maschinen.

### Grundbegriffe

- Ein **Signal** kann *mechanisch* oder *elektr(on)isch* sein und ist der Kern einer Steuerung.
- Ein Signal**geber** erzeugt ein Signal *z.B. ein Knopf*
- Ein **Stellglied** entscheidet über die Veränderung *z.B. ein Steuergerät*
- Eine **Stellgröße** ist ein Wert, den das Stellglied zum steuern/regeln erzeugt *z.B. Spannung zwischen Steuergerät und Motor*
- Eine **Steuergröße** ist die gesteuerte Größe also *z.B. Wegstrecke eines Bohrers*
- Eine **Steuerstrecke** ist die Strecke zwischen Stellglied und dem zu steuernden Objekt - *z.B. Strecke zwischen Steuergerät und Bohrkopf*
- Eine **Steuerkette** bzw. ein Wirkungsablauf ist eine Gesamtübersicht, oft mit Pfeilen, über die Abläufe der Anlage

### Steuerungsarten

Die Einteilung kann entweder nach der Signalverarbeitung oder nach der Programmierung unterschieden werden.

##### Einteilung nach Art der Signalverarbeitung

- **Verknüpfungs**steuerungen schalten nur, wenn *logische Bedingungen* erfüllt sind

- **Ablauf**steuerungen schalten in einer bestimmten *Reihenfolge*

  - **Zeitabhängige** Ablaufsteuerungen werden *z.B. durch Nockenschaltwerke, Zeitrelais oder Taktgeber* bestimmt

  - **Prozessabhängige** Ablaufsteuerungen durchlaufen einen Abschnitt nach dem anderen. Ein Abschnitt beginnt erst, wenn der vorherige Abgeschlossen wurde.

    Wenn Arbeitsschritte wenn Abschnitte den Wegen der Maschinen entsprechen, *z.B. bei einem Maschinentisch*, dann nennt man das **Wegplansteuerung**

##### Einteilung nach Art der Programmierung

