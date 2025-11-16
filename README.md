# Oscar Database Design & SQL Analysis Project

This project presents a complete relational database design and SQL implementation for an Oscar Awards management system.  
It includes ERD modeling, table creation, data population, and analytical SQL queries.  
All scripts are written for SQL Server (T-SQL).

---

## Project Files

- **create_tables.sql** – Contains all DDL commands for creating the database structure  
- **insert_data.sql** – Inserts all sample records into the tables (DML)  
- **queries.sql** – Includes all analytical SQL queries with English explanations  
- **ERD/ERD.png** – The Entity Relationship Diagram of the database  

---

## Entity Relationship Diagram (ERD)

The ERD below represents the full logical and physical structure of the Oscar Awards database:

![ERD](ERD/ERD.png)

The diagram includes:
- Primary Keys  
- Foreign Keys  
- Table relationships  
- Data types  
- Full system structure  

---

## Schema Overview (Entities & Attributes)

Below is a structured summary of all entities in the database, including their key fields and relationships.

### 1. MembershipCategory  
Stores membership types and pricing.

| Column | Type | Description |
|--------|--------|-------------|
| Number (PK) | Int | Unique identifier of the membership type |
| Category | Varchar(50) | Name of the membership type (VIP / Regular) |
| Cost | Float | Cost of the membership |

---

### 2. Membership  
Stores member details and links each member to a membership category.

| Column | Type | Description |
|--------|------|-------------|
| MembershipID (PK) | Char(9) | Unique member ID |
| Number (FK) | Int | MembershipCategory.Number |
| FirstName | Varchar(50) | Member first name |
| LastName | Varchar(50) | Member last name |
| Address | Varchar(50) | Member address |
| JoinDate | Datetime | Date the member joined |
| Email | Varchar(50) | Email address |

---

### 3. CompetitionJudge  
Represents judges participating in movie judging events.

| Column | Type | Description |
|--------|--------|-------------|
| MembershipID (PK, FK) | Char(9) | Membership.MembershipID |
| Grade | Int | Judge's rating (1–5) |
| WorkPlaceID (FK) | Int | WorkPlace.WorkPlaceID |
| JudgeDate | Datetime | Date of judging |
| MovieID (FK) | Int | Movie.MovieID |

---

### 4. WorkPlace  
Represents places of employment for producers and judges.

| Column | Type | Description |
|--------|--------|-------------|
| WorkPlaceID (PK) | Int | Workplace identifier |
| WorkPlaceName | Varchar(40) | Name of workplace |
| WorkPlaceAddress | Varchar(50) | Address |

---

### 5. Producer  
Represents movie producers and the workplaces they belong to.

| Column | Type | Description |
|--------|--------|-------------|
| ProducerID (PK) | Char(9) | Unique producer ID |
| WorkPlaceID (FK) | Int | WorkPlace.WorkPlaceID |
| FirstName | Varchar(50) | Producer first name |
| LastName | Varchar(50) | Producer last name |
| Address | Varchar(50) | Producer address |

---

### 6. Oscar  
Represents Oscar events.

| Column | Type | Description |
|--------|--------|-------------|
| OscarID (PK) | Int | Unique Oscar ID |
| DateOfOscar | Datetime | Date of the Oscar event |

---

### 7. OscarJudges  
Represents the link between judges and Oscar events (many-to-many).

| Column | Type | Description |
|--------|--------|-------------|
| MembershipID (FK) | Char(9) | CompetitionJudge.MembershipID |
| OscarID (FK) | Int | Oscar.OscarID |

---

### 8. Movie  
Represents movies in the competition.

| Column | Type | Description |
|--------|--------|-------------|
| MovieID (PK) | Int | Unique movie ID |
| MovieName | Varchar(50) | Name of the movie |
| DateOfMovie | Datetime | Release date |
| ProducerID (FK) | Char(9) | Producer.ProducerID |

---

### 9. Customer  
Represents which movies are associated with which Oscar event.

| Column | Type | Description |
|--------|--------|-------------|
| MovieID (FK) | Int | Movie.MovieID |
| OscarID (FK) | Int | Oscar.OscarID |

---

## SQL Queries Summary

All queries are documented inside `queries.sql`.  
Below is a summary of the analytical queries included:

### Query 1 – Year with the highest number of Oscar wins  
Counts Oscars per year and returns the year with the highest number of wins.

### Query 2 – VIP members who joined in the last 10 years  
Filters VIP members (category = 1) based on JoinDate and DATEADD.

### Query 3 – Number of Oscar events per year  
Groups Oscar events by date and counts occurrences.

### Query 4 – Number of Oscars per producer  
Joins Producer → Movie → Oscar and counts Oscars per producer.

### Query 5 – Movies submitted by producers who also served as judges  
Returns movies where the producer also served as a competition judge in the same year.

---

## How to Run the Project

1. Run `create_tables.sql` to create all tables  
2. Run `insert_data.sql` to populate the database  
3. Run `queries.sql` to execute the analytical queries  

This project was designed and tested on SQL Server.

---

## Project Purpose

This project demonstrates:

- SQL querying skills  
- Understanding of relational database modeling  
- Ability to build a complete schema from an ERD  
- Working with JOINs, GROUP BY, PK/FK constraints, and realistic data structures  
- Analytical thinking and database design best practices  
