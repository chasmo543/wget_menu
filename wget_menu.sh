#! /bin/bash
# Charles Polisher 2003/06/13
#
# Shell-based menuing for wget
#
WGET=`which wget`
SED=`which sed`
CMDLINE="${WGET} "
PARMLIST=`cat <<EOF
--convert-links
--level=1
--level=2
--no-host-directories
--no-host-lookup
--no-parent
--page-requisites
--recursive
--timeout=8
--timestamping
--tries=5  
--user-agent='Mozilla/4.76'  
--wait=1 
Finished
EOF
`
select i in ${PARMLIST} ;
do
	if [ X${i} = XFinished ];
	then
		break ;
	fi
	CMDLINE="${CMDLINE} ${i}"
	echo "${CMDLINE} ${1}"
done
