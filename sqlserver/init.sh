#!/bin/bash
set -x
echo "Starting the SQL Server..."
/opt/mssql/bin/sqlservr &
BACKGROUND_WORKER_PID=$!
wait $BACKGROUND_WORKER_PID
