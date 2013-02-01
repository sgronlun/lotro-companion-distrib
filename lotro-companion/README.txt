This is the readme/install/faq document for LOTRO Companion.

Note:
English is not my mother-tongue, so I apologize if this document contains some weird/meaningless sentences! Let me know so that I can fix this document in future releases.

0. INSTALLATION
===============
Unzip the lotro-companion-N.P.zip to somewhere on your hard-drive.

1. RUNNING LOTRO COMPANION
==========================
You'll need a Java Runtime Environment for Java 6.
LOTRO Companion shall run on Windows and Linux.
Mac OS has not been tested but hopefully it will work since its pure Java code.

1.1 Windows
-----------
Run the "LotroCompanion.exe" file.
It will check if you have a suitable Java Runtime Environment and link you to the Oracle site to download/install one if needed.

1.2 Linux
---------
Set the executable flag on the LotroCompanion.sh file.
Run the companion.sh file to launch LOTRO Companion.

1.3 Internet connection
-----------------------
LOTRO Companion accesses the my.lotro.com web site. Your firewall shall be configured to cope with that.
The current version cannot use a proxy, except if it's transparent for applications.

2. UPGRADING FROM A PREVIOUS VERSION
====================================

2.1 FROM LOTRO COMPANION 1.0
----------------------------
Install the new version in its own directory.
Copy or move all the files/directories in the data/characters of the old installation to the data/characters directory in the new installation.

Then run LOTRO Companion. You'll get back all the toons you had previously.
The first time you'll load a toon, it will get the description and icon of each piece of equipment from Internet, so that it may take a little more time to load.

You shall now perform the fix described in 2.2 on your favorite toons.

2.2 "Completed a deed" / "Completed a quest"
--------------------------------------------
As of 2012/11/17:
my.lotro.com has been updated with the release of "Riders of Rohan". As a side effects, some character log items that were corrupted ("completed a deed", "completed a quest") and thus unuseable in LOTRO Companion are now fixed.
The problem is that when performing a character log update, LOTRO Companion only updates the items of the last activity day. So that these corrupted log items that were recorded months ago are still corrupted in the LOTRO Companion managed log files.
The "Fix" button in the character log window fixes those entries.
Note that my.lotro.com is still not completely right and still produces corrupted items (but only a few, compared to the previous situation). So even after a fix, it is possible that there will be some corrupted items left.

3. MISC/FAQ
===========
3.1 Accessible game servers
---------------------------
LOTRO Companion shall be able to handle toons from all the game servers.
It has been reported to work with Elendilmir (the author's server...), Nimrodel and Landroval.
Let me know if it does work or not on other servers.

The list of games servers is in the data/config/servers.txt file (one line per server).
So if a server is missing, you can add it (and don't forget to tell me so that it will appear in the next version...).

4. LICENSE
==========
See the LICENSE.TXT file in the doc directory of the distribution.
The licenses of the distributed libraries can be found in doc/licenses.

5. CONTACTING THE AUTHOR
========================
You can contact the author of this software at: lotrocompanion@gmail.com
