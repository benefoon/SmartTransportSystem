-- Create the database
CREATE DATABASE SmartTransportSystem;
USE SmartTransportSystem;

-- Vehicles Table
CREATE TABLE Vehicles (
    VehicleID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleType VARCHAR(50) NOT NULL,
    Capacity INT NOT NULL,
    CurrentLocation POINT,
    Status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

-- Stations Table
CREATE TABLE Stations (
    StationID INT AUTO_INCREMENT PRIMARY KEY,
    StationName VARCHAR(100) NOT NULL,
    Latitude FLOAT NOT NULL,
    Longitude FLOAT NOT NULL
);

-- Schedules Table
CREATE TABLE Schedules (
    ScheduleID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT NOT NULL,
    StationID INT NOT NULL,
    ArrivalTime DATETIME NOT NULL,
    DepartureTime DATETIME NOT NULL,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID),
    FOREIGN KEY (StationID) REFERENCES Stations(StationID)
);

-- Passengers Table
CREATE TABLE Passengers (
    PassengerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20)
);

-- Bookings Table
CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    PassengerID INT NOT NULL,
    VehicleID INT NOT NULL,
    StationID INT NOT NULL,
    BookingTime DATETIME NOT NULL,
    Status ENUM('Confirmed', 'Canceled') DEFAULT 'Confirmed',
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID),
    FOREIGN KEY (StationID) REFERENCES Stations(StationID)
);
