#!/bin/sh
sqlite3 AdventureWorks.db <<EOF
.mode html
.output AdventureWorks_ListTables_TableInfo.html
.print List of Tables
.print ------------------------
.tables
.print *************************
.print Table Information of Each Tables
.print --------------------------------------
PRAGMA table_info('DimCurrency');
PRAGMA table_info('DimCustomer');
PRAGMA table_info('DimDate');
PRAGMA table_info('DimDepartmentGroup');

.quit
EOF
