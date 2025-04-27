# cursor-llm-weiter-loop-ahk-script

# AutoHotkey-Skript für Cursor IDE Automatisierung

Dieses Skript automatisiert die Eingabe von "weiter" in der Cursor IDE, sobald das LLM bereit ist, und drückt anschließend Enter. Es sorgt dafür, dass nach jedem LLM-Turn automatisch eine neue Eingabe ausgelöst wird.

## Funktionsweise
- Das Skript prüft regelmäßig (alle 0,5 Sekunden) die Helligkeit eines bestimmten Pixels am Button in der Cursor IDE.
- Erkennt es, dass der Button wieder "dunkel" ist (Textfeld leer, LLM bereit), klickt es ins Texteingabefeld, schreibt "weiter", drückt Enter und klickt anschließend auf eine definierte Position außerhalb des Textfelds, um den Fokus zu entfernen.
- Das Skript verhindert, dass mehrfach ausgelöst wird, solange der Button noch dunkel ist.

## Voraussetzungen
- **AutoHotkey v2** muss installiert sein: [https://www.autohotkey.com/](https://www.autohotkey.com/)
- Das Skript ist für Multi-Monitor-Setups geeignet. Die Koordinaten müssen ggf. an deine Bildschirmkonfiguration angepasst werden.

## Verwendung
1. **Skript starten:**
   - Doppelklicke auf `tmp.ahk` (nachdem AutoHotkey v2 installiert ist).
2. **Automatisierung starten:**
   - Drücke `F8` auf deiner Tastatur.
3. **Automatisierung stoppen:**
   - Drücke `F9` auf deiner Tastatur.

## Anpassung
- **Pixel- und Mausklick-Koordinaten** können im Skript angepasst werden, falls sich deine Fenster- oder Monitoranordnung ändert.
- Die Helligkeitsschwelle kann bei Bedarf verändert werden (Standard: 80).

## Hinweise
- Das Skript ist für die Cursor IDE optimiert, funktioniert aber auch mit anderen Anwendungen, wenn die Koordinaten entsprechend angepasst werden.
- Bei Problemen mit dem Fokus oder der Automatisierung kann ein zusätzlicher Klick auf eine freie Stelle auf einem anderen Bildschirm helfen.

