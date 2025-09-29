![Links](https://github.com/JanHuberty/Sql-project-library/actions/workflows/links.yml/badge.svg)
![License](https://img.shields.io/github/license/JanHuberty/Sql-project-library)

# Public Library Database (MySQL)

Relational schema with 15+ tables, constraints, and reporting queries.  
**Stack:** MySQL, SQL Workbench

## Overview
- ER model & normalized schema
- Borrowing, membership, fines logic
- Reporting queries (utilisation, overdue, top borrowers)

## Quick Start
1) Create schema:
```sql
SOURCE sql/Schema.sql;
SOURCE sql/seed.sql;
SOURCE sql/reports.sql;

## 4.5 ER diagram (visual)
- Export or screenshot your ERD → upload as `docs/erd.png`
- Embed in README:
```md
## Schema
![ERD](docs/erd.png)
### Makefile (optional)
```bash
# set env vars if needed: USER, PASS, DB, HOST
make schema
make seed
make reports

---


