Mono-Repo, Multi-Release
========================

Anwendungsfall:

- Projekt verwendet ältere Version, z.B. master ist 1.2.x und Projekt verwendet 1.0.0.

- Hotfix soll in dias.core 1.0.0 eingespielt werden.

Plan:

- git subdirectory checkout von dias.core 1.0.0


Toolliste:

- Abhängigkeiten glattiehen (https://pypi.org/project/z3c.dependencychecker/)
- Auto-releases (https://pypi.org/project/zest.releaser/)
