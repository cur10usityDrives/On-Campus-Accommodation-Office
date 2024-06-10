# On-Campus-Accommodation-Office

## University Housing System Database

This project implements a relational database schema using SQL to manage a university housing system. It provides functionalities for:

* **Student Management:** Tracks student information including matriculation number, name, contact details, date of birth, program details (course, year), and housing status (placed/waiting list).
* **Staff Management:** Stores staff details such as name, position, department, and contact information (optional) for advisors and residence hall managers.
* **Residence Halls:** Defines halls with attributes like name, address, phone number, and association with a staff member (manager).
* **Room Management:** (Optional) Can be further extended to include a table for rooms within each hall, specifying details like room number, capacity (single/shared), and rent. 
* **Course Management:** (Optional) Tracks courses offered by the university, potentially linked to student programs for filtering housing based on program requirements.
* **Relationships:** Establishes connections between tables,  e.g., students can be assigned to a specific hall (many-to-one), and halls are managed by a staff member (one-to-many).

## Project Structure

* **sql/schema.sql:** Contains SQL statements for creating the database schema, including table definitions with data types, primary and foreign keys for relationships, and any constraints (e.g., unique identifiers).
* **sql/data.sql:** Contains SQL statements for populating the database with sample data for testing purposes. This allows you to experiment with queries without a real-world dataset.
* **sql/test.sql:** Contains non-routine SQL statements that are semi-complex for testing the databse.
* **README.md:** This documentation file (you are currently reading it!).

## Usage

1. **Database Setup:**
    * Install a database management system like MySQL or PostgreSQL (MySQL was selected for this project) on your local machine. Refer to the official documentation for installation instructions. 
    * Use a graphical user interface (GUI) tool provided by your chosen database system (MySQL Workbench was used for this project) or a command-line interface (CLI) to create a new database.
    * Run the SQL statements in `sql/schema.sql` against your newly created database to set up the tables and relationships.

2. **Sample Data Loading (Optional):**
    * After creating the schema, run the SQL statements in `sql/data.sql` to populate your tables with sample data. 
    * Finally, run the SQL statements in `sql/test.sql` to test out the database with non-routing queries. This is useful for testing queries and exploring the functionality of the database.

## Additional Notes

* This project serves as a foundation for a university housing system database. It can be extend to include additional functionalities like:
    * Room assignment management: Track which students are assigned to specific rooms.
    * Meal plan management: Offer different meal plan options and associate them with students.
    * Application system: Implement a system for students to apply for housing and manage waitlists.
    * Reporting capabilities: Generate reports on occupancy rates, student demographics in housing, etc.


## Technologies Used

* SQL (Structured Query Language)

## Contributing

This project is currently intended for demonstration purposes. If you'd like to contribute by extending the functionality or improving the documentation, feel free to fork the repository and submit a pull request.

## Authors

* Natnael Haile (MSCS, SFBU)
* Prachi Sethi (MSCS, SFBU)
