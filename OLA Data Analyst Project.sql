        
		--OLA Data Analyst Project--

--1.	Retrieve all successful bookings:

		CREATE VIEW SUCCESSFUL_BOOKINGS AS
		SELECT * FROM BOOKINGS WHERE BOOKING_STATUS = 'Success';

		SELECT * FROM SUCCESSFUL_BOOKINGS;

--2.	Find the average ride distance for each vehicle type:

		CREATE VIEW RIDE_DISTANCE_FOR_EACH_VEHICLE AS
		SELECT VEHICLE_TYPE, AVG(RIDE_DISTANCE) AS AVG_DISTANCE FROM BOOKINGS
		GROUP BY VEHICLE_TYPE;

		SELECT * FROM RIDE_DISTANCE_FOR_EACH_VEHICLE;

--3.	Get the total number of cancelled rides by customers:
		
		SELECT COUNT(*) FROM BOOKINGS WHERE BOOKING_STATUS = 'canceled by customer';
		
--4.	List the top 5 customers who booked the highest number of rides:
		
		SELECT TOP 10 CUSTOMER_ID, COUNT(Booking_ID) AS TOTAL_RIDES FROM Bookings GROUP BY Customer_ID ORDER BY TOTAL_RIDES DESC

--5.	Get the number of rides cancelled by drivers due to personal and car-related issues:
		SELECT COUNT( *) AS Rides_cancelled_by_drivers FROM BOOKINGS WHERE CANCELED_RIDES_BY_DRIVER = 'Personal & Car related issue';

--6.	Find the maximum and minimum driver ratings for Prime Sedan bookings:
		SELECT MAX(Driver_Ratings) AS MAX_RATING, MIN(Driver_Ratings) AS MIN_RATING FROM BOOKINGS
		WHERE Vehicle_Type ='PRIME SEDAN';

		
--7.	Retrieve all rides where payment was made using UPI:
		SELECT * FROM BOOKINGS WHERE Payment_Method= 'UPI';

--8.	Find the average customer rating per vehicle type:
		SELECT VEHICLE_TYPE, AVG(CUSTOMER_RATING) AS AVG_RATING FROM BOOKINGS
		GROUP BY Vehicle_Type

--9.	Calculate the total booking value of rides completed successfully:
		SELECT SUM(BOOKING_VALUE) AS Total_booking_value FROM Bookings WHERE Booking_Status = 'SUCCESS';

--10.	List all incomplete rides along with the reason:
		SELECT BOOKING_ID,Incomplete_Rides,Incomplete_Rides_Reason FROM Bookings WHERE Incomplete_Rides= 'YES';