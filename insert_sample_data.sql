-- Insert Vehicles
INSERT INTO Vehicles (VehicleType, Capacity, CurrentLocation, Status)
VALUES
('Bus', 50, POINT(35.6892, 51.3890), 'Active'),
('Taxi', 4, POINT(35.7078, 51.4100), 'Active'),
('Metro', 200, POINT(35.6892, 51.4000), 'Inactive');

-- Insert Stations
INSERT INTO Stations (StationName, Latitude, Longitude)
VALUES
('Central Station', 35.6892, 51.3890),
('North Station', 35.7078, 51.4100),
('East Station', 35.7000, 51.4200);

-- Insert Schedules
INSERT INTO Schedules (VehicleID, StationID, ArrivalTime, DepartureTime)
VALUES
(1, 1, '2024-12-10 08:00:00', '2024-12-10 08:15:00'),
(2, 2, '2024-12-10 09:00:00', '2024-12-10 09:10:00');

-- Insert Passengers
INSERT INTO Passengers (Name, PhoneNumber)
VALUES
('Ali Rezaei', '09121234567'),
('Sara Ahmadi', '09351234567');

-- Insert Bookings
INSERT INTO Bookings (PassengerID, VehicleID, StationID, BookingTime, Status)
VALUES
(1, 1, 1, '2024-12-09 18:00:00', 'Confirmed'),
(2, 2, 2, '2024-12-09 18:30:00', 'Canceled');
