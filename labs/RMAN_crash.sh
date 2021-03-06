#!/bin/sh
# use bash shell
#
# Updated by D. Keesling, April 2018
#

export NLS_DATE_FORMAT='DD-MM-YYYY HH:MI:SS'
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=fenagodb
PATH=$ORACLE_HOME/bin:$PATH; export PATH
$ORACLE_HOME/bin/sqlplus -s /nolog  <<EOF

CONNECT / as sysdba
ALTER SYSTEM SWITCH LOGFILE;
host rm /u02/oradata/FENAGODB1/system01.dbf
ALTER SYSTEM SWITCH LOGFILE;
ALTER DATABASE DATAFILE '/u02/oradata/FENAGODB1/system01.dbf' RESIZE 5M;
EXIT
EOF

