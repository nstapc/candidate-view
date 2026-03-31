# Candidate View

A PHP web application that displays election data from a MySQL database in an interactive, sortable table.

## Features

- Fetches data from a MySQL database and renders it as an HTML table
- Interactive sorting, searching, and pagination via [DataTables](https://datatables.net/)
- Database credentials managed via environment variables (no hardcoded secrets)

## Requirements

- PHP 7.4+ with `mysqli` extension
- MySQL database

## Setup

1. Clone the repo:
   ```bash
   git clone https://github.com/nstapc/candidate-view.git
   cd candidate-view
   ```

2. Install MySQL (if not already installed):
   ```bash
   sudo apt install mysql-server
   sudo systemctl start mysql
   sudo mysql_secure_installation
   ```

3. Create the database and user:
   ```bash
   sudo mysql
   ```
   Then in the MySQL shell:
   ```sql
   CREATE DATABASE 2012_election;
    CREATE USER 'username'@'localhost' IDENTIFIED BY 'your_password';
    GRANT ALL PRIVILEGES ON 2012_election.* TO 'username'@'localhost';
   FLUSH PRIVILEGES;
   EXIT;
   ```

4. Import the `GOP_primary` table (if you have a SQL dump):
   ```bash
   mysql -u username -p 2012_election < GOP_primary.sql
   ```

5. Set environment variables for your database connection:
   ```bash
   export DB_HOST=localhost
   export DB_USER=username
   export DB_PASS=your_password
   export DB_NAME=2012_election
   ```

6. Serve with PHP's built-in server:
   ```bash
   php -S localhost:8000
   ```

7. Open `http://localhost:8000` in your browser.

## Project Structure

```
index.php      - Main application page
config.php     - Database configuration (reads from environment variables)
.gitignore     - Files excluded from version control