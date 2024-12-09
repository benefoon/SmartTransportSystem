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
برای ادامه‌ی درست و بدون نقص، از همان بخش ادامه می‌دهم و توضیحات کامل را ارائه می‌کنم.  

---

### **Steps (ادامه)**

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

### **How to Test the Project**
1. Open a database tool (e.g., MySQL Workbench).
2. Import and execute the scripts (`database_schema.sql`, `insert_sample_data.sql`).
3. Run sample queries from `queries.sql` to validate the database functionality.
4. Check foreign key constraints by trying to insert or delete data that violates them. 

---

### **Expected Results**
- Successfully retrieve vehicle data, schedules, and booking information.
- Accurate relationships between tables, such as:
  - Each `VehicleID` in `Schedules` exists in `Vehicles`.
  - Each `PassengerID` in `Bookings` exists in `Passengers`.

---

### **Common Issues and Fixes**
1. **Foreign Key Constraint Errors**  
   Ensure the referenced rows exist in parent tables before inserting data in child tables.
   
2. **Syntax Errors**  
   Double-check SQL syntax, especially if using a different SQL engine (like PostgreSQL or SQLite).

---

### **Next Steps (Optional Enhancements)**
- Add user-friendly frontend tools (e.g., a web interface) to interact with the database.
- Integrate real-time tracking using a simulation or IoT data sources.

---

### **Support**
For any issues, feel free to [open an issue](https://github.com/your-username/SmartTransportDatabase/issues) in this repository, and I'll get back to you as soon as possible!

---

