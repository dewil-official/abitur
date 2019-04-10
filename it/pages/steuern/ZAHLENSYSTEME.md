# 🔢 Zahlensysteme

**Zahlensysteme** bilden die Grundlage der IT, aber auch außerhalb dieses Themas sind Zahlensysteme sehr wichtig.

> Ein Zahlensystem ist ein festgelegtes System, das numerische Werte mithilfe von uns bekannten Symbolen darzustellen versucht.

Ein **kleiner Überblick** über die Zahlensysteme:

| Name         | Symbole     | Basis<br />*(Werte pro Ziffer)* |
| ------------ | ----------- | ------------------------------- |
| Dual / Binär | `0-1`       | 2                               |
| Dezimal      | `0-9`       | 10                              |
| Hexadezimal  | `0-9`,`A-F` | 16                              |

Das **Dezimalsystem** ist das für uns Menschen normale System. Die 10 lässt sich an beiden Händen abzählen, deshalb ist es für uns Menschen so praktisch.

Das **Binärsystem** ist für Maschinen normal und praktisch. Ganz einfach weil der Strom dann entweder AN oder AUS sein kann.

Das **Hexadezimalsystem** wird beispielsweise gerne auf einer höheren Protokollebene verwendet, um z.B. Bandbreite zu sparen.

### Begriffe

Es ist wirklich wichtig, sich im Rahmen dieser Systematiken **klar auszudrücken**.

- Eine **Ziffer** ist eine Stelle einer evtl. größeren Zahl. z.B. bei `312`, sind sowohl `3,2,1` Ziffern.

- Eine **Zahl** besteht aus mehreren (oder einer) Ziffer(n).

- Ein **Wert** lässt sich in verschiedenen Zahlensystemen unterschiedlich ausdrücken. Im Zweifel wird der Wert im Dezimalsystem angegeben.

  🍉🍉🍉 könnte im Dezimalsystem 3 oder im Binärsystem 11 bedeuten.

### Systematik

Jedes (hier behandelte) Zahlensystem hat ein paar gleiche grundlegende Regeln:

- Wenn sich ein Wert *nicht mehr durch die aktuelle Ziffernmenge ausdrücken lässt*, **fügt man** links **eine Stelle hinzu**.

- Die **Wertigkeit** aller hinzugefügten Ziffern lässt sich wie folgt berechnen: 
  $$
  Basis^s
  $$
  *s = Stelle [z.B. bei 4028 wäre die 2 auf Stelle 1 und die 4 auf Stelle 3]*

  *Die Basis hängt vom System ab.*

### Berechnung

Um Zahlenwerte **ins Dezimalsystem umzurechnen**, geht man so vor:
$$
11011011 => 2^7+2^6+2^4+2^3+2^1+1 = 219
$$
**Rückwärts** subtrahiert man nach und nach die größtmöglichen Ziffern von der Dezimalzahl und notiert sich das entsprechend:
$$
219 - 128 = 91 - 64 = 27 - 16 = 11 - 8 = 3 - 2 = 1 - 1 = 0 => 11011011
$$
128, 64, 16,8,2 sind jeweils die 2er Potenzen. Dementsprechend wird hier in dar Binärsystem umgerechnet.

### TDLR;

*("Too long, didn't read")*

Nutze einfach den Windows-Taschenrechner (Kategorie "Programmierer") in der Klausur!

