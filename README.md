# 🌊 SummerTides Festival Database

## Project Summary

This repository contains a complete SQLite-based relational database for the SummerTides Festival. It includes the schema, seed data, constraint validation, query exercises, views, and supporting documentation for the sprint project.

## What is Included

- Database creation and schema scripts in [database](database)
- Topic-based query exercises in [queries](queries)
- Data dictionary and ER diagram references in [docs](docs)
- Presentation notes in [presentation](presentation)

## Database Scope

The model covers:

- Attendees and ticket purchases
- Artists and scheduled performances
- Festival stages and sponsorships
- Vendors and sales records

## Run Instructions

From the project root, execute the SQL files in this order:

1. [database/01_create_database.sql](database/01_create_database.sql)
2. [database/02_create_tables.sql](database/02_create_tables.sql)
3. [database/03_insert_data.sql](database/03_insert_data.sql)
4. [database/04_constraints.sql](database/04_constraints.sql)
5. Continue through [queries](queries) from 05_select.sql onward

Example:

```bash
rm -f /tmp/summertides.db
sqlite3 /tmp/summertides.db < database/01_create_database.sql
sqlite3 /tmp/summertides.db < database/02_create_tables.sql
sqlite3 /tmp/summertides.db < database/03_insert_data.sql
sqlite3 /tmp/summertides.db < database/04_constraints.sql
```

## Verification

The full workflow was executed successfully against SQLite, and the resulting database contains the expected tables and views.

## Team Roles

- Database architect: schema design and table relationships
- SQL developer: query exercises and views
- QA tester: validation and error checking
- Documentation lead: README and data dictionary
