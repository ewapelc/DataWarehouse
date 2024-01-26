# Data Warehouse / Business Intelligence System Repository

## Project Overview

**Description:**
This repository houses a comprehensive Business Intelligence (BI) system composed of three key elements:

1. **ETL Process for Data Loading:**
   - Creation of a fact table and dimension tables.
   - Implementation of Slowly Changing Dimensions (SCD) mechanism, allowing data updates in the database when source files change.

2. **Analytical Queries in SQL:**
   - Analytical queries written in SQL to extract valuable insights from the data.
   - Utilization of window functions such as `RANK()` and analytical functions like `PERCENT_RANK()` in three SQL queries.

3. **PowerBI Report:**
   - The PowerBI report features filtering options by date, supplier company, and includes a line chart illustrating sales over time.
   - Integration of a calculated measure using a supplier-related filter.

## Tools Used

- **SQL Server Management Studio (SSMS):**
  - Used for database management and administration.

- **SQL Server Integration Services (SSIS):**
  - Utilized for designing and implementing the ETL process.

- **PowerBI:**
  - Employed for creating dynamic and insightful reports.

## Data Samples

- Sample data files include information on customers, suppliers, and sales transactions.

## Repository Contents

1. **`project/DIM[Carrier/Customer/Date].sql`**: creation of dimension tables in production database

2. **`project/FactSales.sql`**: creation of facts table in production database

3. **`project/create_databases.sql`**: creation of staging and production databases

4. **`project/populate_DIMdate.sql`**: populating date dimension

5. **`project/rank_[carriers/customers/days].sql`**: window / analytical functions

6. **`project/Package.dtsx`**: SSIS package, which contains ETL process

7. **`project/project_data_warehouse.pbix`**: file containing the PowerBI report

---

Thank you for your interest in this Business Intelligence system!
