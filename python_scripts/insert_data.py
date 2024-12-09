from db_connector import create_connection

def insert_vehicle(vehicle_type, capacity, latitude, longitude, status):
    """
    Inserts a new vehicle into the Vehicles table.
    """
    connection = create_connection()
    if connection:
        try:
            cursor = connection.cursor()
            sql = "INSERT INTO Vehicles (VehicleType, Capacity, CurrentLocation, Status) VALUES (%s, %s, POINT(%s, %s), %s);"
            values = (vehicle_type, capacity, latitude, longitude, status)
            cursor.execute(sql, values)
            connection.commit()
            print(f"Vehicle {vehicle_type} added successfully.")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            connection.close()

if __name__ == "__main__":
    insert_vehicle("Bus", 60, 35.6892, 51.3890, "Active")
