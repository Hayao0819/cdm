CDM: The Console Display Manager
================================

New version 0.8:

	- added support for Wayland
	- moved the rc file path to `.config/cdm/rc`
	- fixed a bug that made `dialog` bork when TTY permissions were bogus
	- replaced every `/bin/bash` occurence with `/usr/bin/env bash`, making it easier to make it work on BSDs.

Version 0.7:

	- removed consolekit support
	- removed xtty
	- removed altstartx
	- cdmrc edited for new version
	- cdm-xlaunch removed

Invocation
----------

To run cdm, use

    $ cdm [RCFILE]

cdm tries to source configuration files in this order, and uses the first
existing one:

    [RCFILE specified on command line]
    $HOME/.config/cdm/rc
    $HOME/.cdmrc
    /etc/cdmrc

To autostart cdm when you log in your account, copy the content of
/usr/share/doc/cdm/zzz-cdm.sh to the tail of your shell profile (~/.profile,
etc.).


Customisation
-------------

See /etc/cdmrc for examples.


Copying
-------

Copyright (C) 2009-2012, Daniel J Griffiths <dgriffiths@ghost1227.com>
Thanks to:

    Andrwe          beta-testing and submitting the fix for the all
                    important X incrementation function
    brisbin33       code cleanup
    tigrmesh        finding a critical issue with the gnome-session handler
    Profjim         several incredibly useful patches
    lambchops468    consolekit and hibernation patches
    CasperVector    Massive rearchitecturing and code sanitation
    pale3           Forking to remove some shit not needed anymore
    PoroCYon        Forking once more to add proper Wayland support,
                    moved cdmrc to .config, fixed a bug concerning the
                    --stdout flag of `dialog`, replaced every /bin/bash
                    occurence with /usr/bin/env bash so it works for BSDs, too

Licensed under GPLv2+

