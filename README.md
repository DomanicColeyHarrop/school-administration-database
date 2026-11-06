# School Administration Database

A university coursework project using SQL and SQLite to model students, staff, courses, enrolments, payments and certificates.

All names, contact details and other records in the sample data are fictional.

## Files

- `L39983293_DomColeyHarrop_Script1.sql` creates the 11 database tables, keys and relationships.
- `L39983293_DomColeyHarrop_Script2.sql` populates the tables with fictional sample data.
- `L39983293_DomColeyHarrop_Assessment_2.drawio.png` shows the database diagram.

## How to run

You will need SQLiteStudio or another SQLite-compatible tool.

1. Download the repository using **Code → Download ZIP**, then extract the files.
2. Open SQLiteStudio and select **Database → Add a database**.
3. Choose a location and a new filename, such as `school.db`, then confirm to create an empty database.
4. Open the SQL editor and select the new database.
5. Open or paste the contents of `L39983293_DomColeyHarrop_Script1.sql` and execute the entire script.
6. Open or paste the contents of `L39983293_DomColeyHarrop_Script2.sql` and execute the entire script.
7. Refresh the database structure to explore the tables and sample records.

Run Script1 before Script2. These scripts are intended for a fresh database; running them again against an already populated database can produce errors.

## Example query

Run this query to view the sample students:

```sql
SELECT StudentID, FirstName, LastName, EnrolmentDate
FROM Student;
```

## Scope and limitations

This project demonstrates relational database design and sample-data population. It does not include a user-facing application or login system.

The roles and permissions tables model access relationships; they do not themselves enforce application access controls.
