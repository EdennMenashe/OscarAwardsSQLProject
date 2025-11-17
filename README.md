# Oscar Database Design & SQL Analysis Project

This project showcases the full design and implementation of a relational database for managing Oscar Awards information.  
It includes ERD modeling, table creation (DDL), data population (DML), and analytical SQL queries (DQL).  
All scripts are written for SQL Server.

---

## Project Files
- create_tables.sql – DDL script for creating all tables and relationships  
- insert_data.sql – DML script containing sample data inserts  
- queries.sql – Analytical SQL queries with explanations  
- ERD/ERD.png – Entity Relationship Diagram representing the full schema  

---

## Entity Relationship Diagram (ERD)

![ERD](ERD/ERD.png)

The ERD includes:
- Primary and foreign keys  
- Table relationships  
- Cardinalities  
- Data types  
- Logical and physical database structure  

---

## Schema Overview (Entities and Attributes)

### 1. MembershipCategory
Stores membership types and pricing.

| Column | Type | Description |
|--------|--------|-------------|
| Number (PK) | Int | Membership type ID |
| Category | Varchar(50) | Membership name (VIP / Regular) |
| Cost | Float | Membership price |

---

### 2. Membership
Stores member details and links each member to a membership category.

| Column | Type | Description |
|--------|--------|-------------|
| MembershipID (PK) | Char(9) | Unique member ID |
| Number (FK) | Int | MembershipCategory.Number |
| FirstName | Varchar(50) | First name |
| LastName | Varchar(50) | Last name |
| Address | Varchar(50) | Address |
| JoinDate | Datetime | Joining date |
| Email | Varchar(50) | Email address |

---

### 3. CompetitionJudge
Represents judges in movie competitions.

| Column | Type | Description |
|--------|--------|-------------|
| MembershipID (PK, FK) | Char(9) | Membership reference |
| Grade | Int | Judge rating (1–5) |
| WorkPlaceID (FK) | Int | Workplace reference |
| JudgeDate | Datetime | Date of judging |
| MovieID (FK) | Int | Movie reference |

---

### 4. WorkPlace

| Column | Type | Description |
|--------|--------|-------------|
| WorkPlaceID (PK) | Int | Workplace ID |
| WorkPlaceName | Varchar(40) | Name of workplace |
| WorkPlaceAddress | Varchar(50) | Address |

---

### 5. Producer

| Column | Type | Description |
|--------|--------|-------------|
| ProducerID (PK) | Char(9) | Producer ID |
| WorkPlaceID (FK) | Int | Workplace reference |
| FirstName | Varchar(50) | First name |
| LastName | Varchar(50) | Last name |
| Address | Varchar(50) | Address |

---

### 6. Oscar
Represents Oscar events.

| Column | Type | Description |
|--------|--------|-------------|
| OscarID (PK) | Int | Oscar event ID |
| DateOfOscar | Datetime | Event date |

---

### 7. OscarJudges
Many-to-many link between judges and Oscar events.

| Column | Type | Description |
|--------|--------|-------------|
| MembershipID (FK) | Char(9) | Judge reference |
| OscarID (FK) | Int | Oscar reference |

---

### 8. Movie

| Column | Type | Description |
|--------|--------|-------------|
| MovieID (PK) | Int | Movie ID |
| MovieName | Varchar(50) | Title |
| DateOfMovie | Datetime | Release date |
| ProducerID (FK) | Char(9) | Producer reference |

---

### 9. MovieInOscar
Links movies to the Oscar events they participate in.  
(Note: previously incorrect name “Customer” was fixed.)

| Column | Type | Description |
|--------|--------|-------------|
| MovieID (FK) | Int | Movie reference |
| OscarID (FK) | Int | Oscar event reference |

---

## SQL Queries Summary

The queries in `queries.sql` include:

### Query 1 – Year with the highest number of Oscar wins
Returns the year with the highest number of Oscar events.

### Query 2 – VIP members who joined in the last 10 years
Filters members categorized as VIP based on JoinDate.

### Query 3 – Number of Oscar events per year
Counts Oscar events grouped by year.

### Query 4 – Number of Oscars per producer
Joins Producer → Movie → MovieInOscar → Oscar and counts wins per producer.

### Query 5 – Movies submitted by producers who were also judges
Identifies producers who submitted movies and served as judges in the same year.

---

## How to Run the Project
1. Run `create_tables.sql`  
2. Run `insert_data.sql`  
3. Run `queries.sql`  

Designed and tested on SQL Server.

---

## Project Purpose
This project demonstrates:
- Relational database design and normalization  
- Creating a schema from an ERD  
- Use of primary and foreign keys  
- Handling many-to-many relationships  
- Writing analytical SQL queries  
- Data modeling and structured problem-solving skills
