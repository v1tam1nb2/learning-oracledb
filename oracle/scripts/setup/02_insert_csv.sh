#!/bin/bash

sqlldr pdbadmin/${ORACLE_PWD}@//localhost:1521/XEPDB1 /opt/oracle/scripts/setup/import.ctl
