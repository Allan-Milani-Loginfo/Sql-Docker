#!/bin/bash

cd /tmp/

for arq in *;     
    do         
        echo "Importing: $arq"; /opt/mssql-tools/bin/sqlcmd -S sqlserver -U sa -P $SA_PASSWORD -d master -i $arq;
    done;

exec “$@”
