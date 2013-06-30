
#LaTeX Template For Scientific Papers
*Version 1.0.1, 30.06.2013*

**English version follows.**

---

*Diese Vorlage basiert auf einer Vorlage von [Stefan Macke](http://blog.stefan-macke.com/2009/04/24/latex-vorlage-fuer-meine-masterarbeit-an-der-ohm-hochschule-nuernberg/), erstmalig erweitert von Felix Rupp. Vielen Dank für grandiose Arbeit!*

Diese Version der LaTeX-Vorlage für wissenschaftliche Arbeiten basiert auf einer erweiterten Version (1.2) von [Felix Rupp](https://github.com/felixrupp/LaTeX-Vorlage-Wissenschaftliche-Arbeit) vom 21.05.2013. Es wurden folgende Features von ihm hinzugefügt:

* Umstellung auf UTF-8
* Anpassung an die Vorgaben des Referenten (u.a. Verzeichnisse ans Ende)
* Möglichkeit zum parsen des Glossars mit Hilfe des Skripts `makemyindex`
* Anpassungen der `natdin.bst`
* Hinzufügen einer InDesign/PDF Vorlage zum selbst falten einer CD-Hülle
* Definition verschiedener Befehle zum Zitieren mit dem Paket `nomenclature`


Die vorliegende Version der Vorlage wurde dahingehend verändert, dass Glossar und Abkürzungsverzeichnis nicht mehr gemeinsam mit dem Paket `nomenclature`, sondern das Glossar mit dem Paket `glossaries` und das Abkürzungsverzeichnis mit dem Paket `acronym` verwaltet werden. Daher wurden die Befehle von Felix entfernt, sowie das Skript `makemyindex`.

Da ich an der [Dualen Hochschule Baden-Württemberg Stuttgart](http://www.dhbw-stuttgart.de) studiere und in jedem Semester Praxisarbeiten geschrieben werden müssen, wurde diese Vorlage an die Anforderungen der DHBW angepasst. Die Verzeichnisse wurden erneut an den Anfang gestellt und das Deckblatt angepasst. Anstatt `bibtex`wird `biblatex`zur Erzeugung des Bibliographiverzeichnises verwendet. Als Bibliographie-Stil wird der Stil `authoryear` verwendet. In den Metadefinitionen kann die Überschrift des Bibliographiverzeichnisses festgelegt werden.

###Hinweise:


Nutze die Bibliographie-Verwaltung! 

Die ursprünglichen Vorlagen von Stefan und Felix (in Version 1.2 vom 21.05.2013) liegen im Ordner `Resourcen` als ZIP-Dateien bei.

Bei Frage kannst du dich gerne an mich wenden: [moritz.rupp@gmail.com](mailto:morit.zrupp@gmail.com)

---
##English version

*This template is based on a version by [Stefan Macke](http://blog.stefan-macke.com/2009/04/24/latex-vorlage-fuer-meine-masterarbeit-an-der-ohm-hochschule-nuernberg/), for the first time expanded by Felix Rupp. Thank you a lot for this magnificent work!*

This version of the LaTeX template for scientific papers is based on an expanded version (1.2) by Felix Rupp from the 21/05/2013. He added the following features:

* switch to UTF-8
* customisation to comply with the requirements of the referee
* possibility for a glossary with the aid of the script `makemyindex`
* customisation of the `natdin.bst`
* additional template for a self-bended jewel case (InDesign and PDF)
* definition of custom commands for citation with the package `nomenclature`

In this template the glossary and list of abbreviations aren't done with the package `nomenclature` anymore. Instead the package `glossaries` is used for the glossary and the package `acronym` is used for the list of abbrevations. Now they can be used seperately. Therefore the custom commands by Felix and the script `makemyindex` are removed.

Because I'm studying at the [Baden-Wuerttemberg Cooperative State University Stuttgart](http://www.dhbw-stuttgart.de/service/english/about-us.html) and the students have to write a thesis every practical term, the template fits the requirements of the uni. The listings are moved to the front again and the titlepage is customised. For the bibliography the package `biblatex` is now used. The bibliography style is `authoryear`. You can easily define the heading of the bibliography in the meta definitions.

###Notes

Use the bibliography management with great benefits!

The original templates of Stefan and Felix (in version 1.2 from the 21/05/2013) can be found in the `Resources` folder.

In case of questions don't hesitate to send me an email: [moritz.rupp@gmail.com](mailto:moritz.rupp@gmail.com)

---

###Licence:

[![Creative Commons Lizenzvertrag](http://i.creativecommons.org/l/by-sa/3.0/de/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/de/)

This work respectively the content is plubicised under the [Creative Commons Namensnennung-Weitergabe unter gleichen Bedingungen 3.0 Deutschland Lizenz](http://creativecommons.org/licenses/by-sa/3.0/de/) ([Creative Commons Attribution-ShareAlike 3.0 Unported](http://creativecommons.org/licenses/by-sa/3.0/)).