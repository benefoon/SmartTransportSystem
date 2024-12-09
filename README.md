# Smart Transport System Database Project

This project is a SQL-based database designed to manage a **Smart Public Transportation System**. It leverages structured data to optimize vehicle operations, manage passenger bookings, and enhance public transportation services.

---

## 📖 Project Overview
The main purpose of this database project is to:
- Track public transportation vehicles (buses, taxis, metros, etc.).
- Manage schedules and monitor live vehicle locations.
- Facilitate passenger bookings and improve user satisfaction.

### **Features**
- **Vehicle Management**: Stores information about vehicles, their capacity, and current status.
- **Schedule Management**: Tracks schedules, arrival/departure times, and station data.
- **Passenger and Booking Records**: Captures passenger details and booking statuses.
- **Scalable Design**: Handles high volumes of vehicle and passenger data.

---

## 📂 Files in the Repository

| File Name              | Description                                                     |
|------------------------|-----------------------------------------------------------------|
| `database_schema.sql`  | SQL script to create the database schema and define relations. |
| `insert_sample_data.sql` | SQL script to insert sample data for testing and demonstration. |
| `queries.sql`          | SQL queries for interacting with the database.                |
| `docs/` (optional)     | Contains additional diagrams like ERD and project documentation.|

---

## 🔧 Setup Instructions

Follow these steps to set up and run the project:

### **Prerequisites**
- Install a database management system such as **MySQL**.
- Optionally, use a GUI tool like **MySQL Workbench** or **phpMyAdmin**.

### **Steps**
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/SmartTransportDatabase.git
   cd SmartTransportDatabase

2. Open the SQL scripts in your database management tool.

3. **Import SQL Scripts**  
   Open your database management tool (e.g., MySQL Workbench or phpMyAdmin) and run the SQL scripts in the following order:
   - `database_schema.sql`: Creates the database structure and defines relationships.
   - `insert_sample_data.sql`: Inserts sample data into the tables.

4. **Verify Data**  
   After running the scripts, confirm that:
   - All tables (`Vehicles`, `Stations`, `Schedules`, `Passengers`, `Bookings`) have been created successfully.
   - The sample data has been populated correctly in the tables.

5. **Run Example Queries**  
   Use the queries in the `queries.sql` file to interact with the database and test functionality. For example:
   - Retrieve active vehicles:
     ```sql
     SELECT * FROM Vehicles WHERE Status = 'Active';
     ```
   - Count bookings for each vehicle:
     ```sql
     SELECT VehicleID, COUNT(*) AS TotalBookings
     FROM Bookings
     GROUP BY VehicleID;
     ```

---

### **Database Details**

#### **Tables Overview**
| Table Name    | Description                                              |
|---------------|----------------------------------------------------------|
| `Vehicles`    | Stores information about vehicles like type and status.  |
| `Stations`    | Contains details about transportation stations.          |
| `Schedules`   | Manages arrival and departure schedules for vehicles.    |
| `Passengers`  | Records passenger information.                           |
| `Bookings`    | Tracks reservations and their statuses.                  |

#### **Key Relationships**
- `Schedules` links `Vehicles` and `Stations` to manage timetables.
- `Bookings` links `Passengers`, `Vehicles`, and `Stations` to track reservations.

---

## 🚀 Example Queries

Here are some examples of queries you can run from the `queries.sql` file:

- **View all active vehicles**:
  ```sql
  SELECT * FROM Vehicles WHERE Status = 'Active';
  ```

- **List schedules for a specific station**:
  ```sql
  SELECT Stations.StationName, Vehicles.VehicleType, Schedules.ArrivalTime, Schedules.DepartureTime
  FROM Schedules
  JOIN Stations ON Schedules.StationID = Stations.StationID
  JOIN Vehicles ON Schedules.VehicleID = Vehicles.VehicleID
  WHERE Stations.StationID = 1;
  ```

- **Count bookings for each vehicle**:
  ```sql
  SELECT VehicleID, COUNT(*) AS TotalBookings
  FROM Bookings
  GROUP BY VehicleID;
  ```

---

## 🐍 Python Integration 🚀

This project includes Python scripts to interact with the database. These scripts are located in the `python_scripts/` directory.

### **Python Scripts** 📂

1. **`db_connector.py`** 🔌:
   - Manages the connection to the MySQL database.
   - Replace `your_username` and `your_password` with your MySQL credentials.
   
2. **`run_queries.py`** 🔍:
   - Contains example queries for retrieving data.
   - Example: Fetching active vehicles from the `Vehicles` table.
   
3. **`insert_data.py`** ➕:
   - Demonstrates how to insert new records into the database.

### **How to Run** 🏃‍♂️

1. Install the required dependencies:
   ```bash
   pip install mysql-connector-python
   ```

2. Execute the scripts:
   - To fetch active vehicles:
     ```bash
     python python_scripts/run_queries.py
     ```
   - To insert a new vehicle:
     ```bash
     python python_scripts/insert_data.py
     ```

### **Examples** 📊

- **Fetch Active Vehicles Output:**
  ```bash
  Active Vehicles:
  (1, 'Bus', 50, POINT(35.6892, 51.3890), 'Active')
  ```

- **Insert Vehicle Success Message:**
  ```bash
  Vehicle Bus added successfully.
  ```

---

---

## 📊 Entity-Relationship Diagram (ERD)

The ERD for this database illustrates the relationships between tables like `Vehicles`, `Stations`, `Schedules`, `Passengers`, and `Bookings`. You can find the diagram in the `docs/` folder.

---

## ✅ Testing the Project
- After running the scripts, use the queries provided in `queries.sql` to test various scenarios.
- Validate that data relationships (e.g., foreign keys) work correctly and enforce integrity.

---

## 📃 License
***

---

## 👩‍💻 Author
- Sam, Eef, Arsh
  A computer science student passionate about database systems and transportation technology.

---

## 🙌 Contributions
Contributions, issues, and feature requests are welcome! Feel free to fork this repository and submit a pull request.

---

## 📞 Support
If you encounter any issues, feel free to [open an issue](https://github.com/your-username/SmartTransportDatabase/issues) in this repository.
