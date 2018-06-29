#!/bin/sh

echo "checking processes are running"
ps -ef | grep obj
ps -ef | grep nco_p
echo
echo "checking Object server is available"
setarch $(arch) --uname-2.6 /opt/IBM/tivoli/netcool/omnibus/bin/nco_ping NCOMS
echo
echo "checking rules file syntax"
setarch $(arch) --uname-2.6 /opt/IBM/tivoli/netcool/omnibus/probes/nco_p_syntax  -rulesfile /opt/IBM/tivoli/netcool/omnibus/probes/linux2x86/simnet.rules  -server NCOMS
setarch $(arch) --uname-2.6  /opt/IBM/tivoli/netcool/omnibus/bin/nco_id

exit 0
