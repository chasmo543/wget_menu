# wget_menu
Simplify wget invocation with shell-based menu.

If you need a small assist in remembering wget's many
parameters, this minimal shell-based dialog prints a
fully-formed wget command on stdout.

Example:

 chas@vinny $ ./wget_menu.sh 
1) --convert-links                5) --no-host-lookup              9) --timeout=8                  13) --wait=1
2) --level=1                      6) --no-parent                  10) --timestamping               14) Finished
3) --level=2                      7) --page-requisites            11) --tries=5
4) --no-host-directories          8) --recursive                  12) --user-agent='Mozilla/4.76'
#? 1
/usr/bin/wget  --convert-links 
#? 2
/usr/bin/wget  --convert-links --level=1 
#? 3
/usr/bin/wget  --convert-links --level=1 --level=2 
#? 14
 chas@vinny $

Author: Charles Polisher cpolish@surewest.net
Originally created: 2003-06-13
Tested: Gnu bash 4.3.42
