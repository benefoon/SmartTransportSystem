from db_connector import create_connection

def fetch_active_vehicles():
    """
    Fetches all active vehicles from the database.
    """
    connection = create_connection()
    if connection:
        try:
            cursor = connection.cursor()
            cursor.execute("SELECT * FROM Vehicles WHERE Status = 'Active';")
            result = cursor.fetchall()
            print("Active Vehicles:")
            for row in result:
                print(row)
        except Exception as e:
            print(f"Error: {e}")
        finally:
            connection.close()

if __name__ == "__main__":
    fetch_active_vehicles()
