-- 1. View all active vehicles
SELECT * FROM Vehicles WHERE Status = 'Active';

-- 2. Display all schedules for a specific station
SELECT Stations.StationName, Vehicles.VehicleType, Schedules.ArrivalTime, Schedules.DepartureTime
FROM Schedules
JOIN Stations ON Schedules.StationID = Stations.StationID
JOIN Vehicles ON Schedules.VehicleID = Vehicles.VehicleID
WHERE Stations.StationID = 1;

-- 3. Count bookings per vehicle
SELECT VehicleID, COUNT(*) AS TotalBookings
FROM Bookings
GROUP BY VehicleID;

-- 4. Retrieve all confirmed bookings
SELECT Passengers.Name, Vehicles.VehicleType, Stations.StationName, Bookings.BookingTime
FROM Bookings
JOIN Passengers ON Bookings.PassengerID = Passengers.PassengerID
JOIN Vehicles ON Bookings.VehicleID = Vehicles.VehicleID
JOIN Stations ON Bookings.StationID = Stations.StationID
WHERE Bookings.Status = 'Confirmed';
