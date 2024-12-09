import mysql.connector
from mysql.connector import Error

def create_connection():
    """
    Establishes a connection to the MySQL database.
    """
    try:
        connection = mysql.connector.connect(
            host="localhost",  # Change if your MySQL server is remote
            user="your_username",  # Replace with your MySQL username
            password="your_password",  # Replace with your MySQL password
            database="SmartTransportSystem"
        )
        if connection.is_connected():
            print("Connected to the database!")
            return connection
    except Error as e:
        print(f"Error: {e}")
        return None
