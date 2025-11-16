# Oscar Database Design & SQL Analysis Project

This project presents a full relational database design and SQL implementation for an Oscar Awards management system.  
It includes ERD modeling, table creation, data population, and analytical SQL queries.  
The scripts are written for SQL Server (T-SQL).

---

## Project Files

- create_tables.sql – Contains all DDL commands for creating the database structure  
- insert_data.sql – Inserts all sample records into the tables (DML)  
- queries.sql – Includes all analytical SQL queries with English explanations  
- ERD/ERD.png – The Entity Relationship Diagram of the database  

---

## Entity Relationship Diagram (ERD)

The following diagram represents the complete logical and physical structure of the Oscar Awards database:

![ERD](ERD/ERD.png)

The ERD includes:

- Primary keys  
- Foreign keys  
- Table relationships  
- Data types  
- Full system structure  

---

## Technologies Used

- SQL Server (T-SQL)  
- Relational Database Modeling  
- ERD Design  
- DDL / DML / DQL  
- Joins, Grouping, Aggregation, Filtering  

---

## SQL Queries Included

All queries are inside `queries.sql`.  
Summary of the analytical queries:

### Query 1 – Year with the highest number of Oscar wins  
Counts Oscars per year and returns the year with the highest count.

### Query 2 – VIP members who joined in the last 10 years  
Filters VIP members (category = 1) using JoinDate with DATEADD.

### Query 3 – Number of Oscar events per year  
Groups Oscar events by year and counts occurrences.

### Query 4 – Number of Oscars per producer  
Joins Producer → Movie → Oscar to calculate the number of Oscars per producer.

### Query 5 – Movies submitted by producers who also served as judges  
Returns movies where the producer was also a competition judge in the same year.

---

## How to Run the Project

1. Run `create_tables.sql` to create all tables  
2. Run `insert_data.sql` to populate the database  
3. Run `queries.sql` to execute all analytical queries  

Designed and tested for SQL Server.

---

## Project Purpose

This repository demonstrates:

- SQL querying skills  
- Relational database modeling  
- Ability to design and implement a complete schema from an ERD  
- Use of JOINs, GROUP BY, PK/FK, and structured data  
- Analytical thinking and database logic  
