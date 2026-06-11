CREATE DATABASE uber_analysis;
USE uber_analysis;

CREATE TABLE uber_rides (
    START_DATE DATETIME,
    END_DATE DATETIME,
    CATEGORY VARCHAR(50),
    START VARCHAR(100),
    STOP VARCHAR(100),
    MILES FLOAT,
    PURPOSE VARCHAR(100),
    Hour INT,
    Day VARCHAR(20),
    Month VARCHAR(20),
    Year INT,
    Duration_Minutes FLOAT
);

SELECT * FROM uber_rides LIMIT 5;

SHOW TABLES;
SELECT COUNT(*) FROM uber_rides;

-- Business vs Personal Rides
SELECT CATEGORY,
COUNT(*) AS Ride_Count
FROM uber_rides
GROUP BY CATEGORY;

-- Top Pickup Locations
SELECT START,
COUNT(*) AS Total_Rides
FROM uber_rides
GROUP BY START
ORDER BY Total_Rides DESC
LIMIT 10;

-- Top Drop Locations
SELECT STOP,
COUNT(*) AS Total_Rides
FROM uber_rides
GROUP BY STOP
ORDER BY Total_Rides DESC
LIMIT 10;

-- Trip Purpose Analysis
SELECT PURPOSE,
COUNT(*) AS Total_Rides
FROM uber_rides
GROUP BY PURPOSE
ORDER BY Total_Rides DESC;

-- Average Distance
SELECT ROUND(AVG(MILES),2) AS Avg_Distance
FROM uber_rides;

-- Total Rides
SELECT COUNT(*) AS Total_Rides
FROM uber_rides;
