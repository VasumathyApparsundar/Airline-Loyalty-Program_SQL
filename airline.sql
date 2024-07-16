USE airline;

SELECT *
FROM customer_flight_activity;

SELECT *
FROM customer_loyalty_history;

# 1. How many flights has each customer taken?
SELECT Loyalty_Number, SUM(Total_Flights) AS Flight_Count
FROM customer_flight_activity
GROUP BY Loyalty_Number
ORDER BY Flight_Count DESC;

# 2. What is the total distance traveled by each customer?
SELECT Loyalty_Number, SUM(Distance) AS Total_distance
FROM customer_flight_activity
GROUP BY Loyalty_Number
ORDER BY Total_distance DESC; 

# 3. what is the points accumulated by each customer?
SELECT Loyalty_Number, SUM(Points_Accumulated) AS Total_points
FROM customer_flight_activity
GROUP BY Loyalty_Number
ORDER BY Total_points DESC;

# 4. what is the total points redeemed by each customer?
SELECT Loyalty_Number, SUM(Points_Redeemed) AS Total_points_redeemed
FROM customer_flight_activity
GROUP BY Loyalty_Number
ORDER BY Total_points_redeemed DESC;

# 5. what is the total dollar cost points redeemed by each customer?
SELECT Loyalty_Number, SUM(Dollar_Cost_Points_Redeemed) AS Total_dollar_redeemed
FROM customer_flight_activity
GROUP BY Loyalty_Number
ORDER BY Total_dollar_redeemed DESC;

# 6. which year has the highest number of customers?
SELECT Year, COUNT( DISTINCT Loyalty_Number) AS Number_of_Cust
FROM customer_flight_activity
GROUP BY Year
ORDER BY Year;

# 7. which month has the highest number of customers?
SELECT Month, COUNT( DISTINCT Loyalty_Number) AS Number_of_Cust
FROM customer_flight_activity
GROUP BY Month
ORDER BY Number_of_Cust DESC;

# 8. which city has the highest number of customers?
SELECT City, COUNT(Loyalty_Number) AS Cust_Count
FROM customer_loyalty_history
GROUP BY City
ORDER BY Cust_Count DESC;

# 9. what is the break down of customers gender wise?
SELECT Gender, COUNT(Loyalty_Number) AS Cust_Count
FROM customer_loyalty_history
GROUP BY Gender
ORDER BY Cust_Count DESC;

# 10. what is the break down of customers education wise?
SELECT Education, COUNT(Loyalty_Number) AS Cust_Count
FROM customer_loyalty_history
GROUP BY Education
ORDER BY Cust_Count DESC;

# 11. what is the break down of customers marital status wise?
SELECT Marital_Status, COUNT(Loyalty_Number) AS Cust_Count
FROM customer_loyalty_history
GROUP BY Marital_Status
ORDER BY Cust_Count DESC;

# 12. what is the break down of customers Loyalty card wise?
SELECT Loyalty_Card, COUNT(Loyalty_Number) AS Cust_Count
FROM customer_loyalty_history
GROUP BY Loyalty_Card
ORDER BY Cust_Count DESC;

# 13. what is the break down of customers Enrollment type wise?
SELECT Enrollment_Type, COUNT(Loyalty_Number) AS Cust_Count
FROM customer_loyalty_history
GROUP BY Enrollment_Type
ORDER BY Cust_Count DESC;

# 14. what is the max salary of the customers?
SELECT Max(Salary) as Highest_Salary, MIN(Salary) AS Lowest_Salary
FROM  customer_loyalty_history;

# 15. what is the highest clv of customer?
SELECT MAX(CLV) as Highest_CLV, MIN(CLV) AS Lowest_CLV
FROM customer_loyalty_history;

# 16. How many customers enrolled in the loyalty program each year?
SELECT Enrollment_Year, COUNT(Loyalty_Number) as cust_count
FROM customer_loyalty_history
GROUP BY Enrollment_Year
ORDER BY cust_count DESC;

# 17. How many customers have canceled their loyalty memberships?
SELECT COUNT(Loyalty_Number) as total_cancellations
FROM customer_loyalty_history
WHERE Cancellation_Year IS NOT NULL;

# 18. Which customers have canceled their loyalty memberships, and what is their average Customer Lifetime Value (CLV)?
SELECT Loyalty_Number, AVG(CLV) AS avg_clv 
FROM customer_loyalty_history
WHERE Cancellation_Year IS NOT NULL
GROUP BY Loyalty_Number;

# 19. which customers have cancelled their loyalty membership and their cities?
SELECT City, COUNT(Loyalty_Number) as cust_count
FROM customer_loyalty_history
WHERE Cancellation_Year IS NOT NULL
GROUP BY City
ORDER BY cust_count DESC;

# 20. Loyal Customers by Longest Enrollment Duration
SELECT Loyalty_Number, Enrollment_Duration
FROM (
    SELECT Loyalty_Number, 
		(CASE 
			WHEN Cancellation_Year IS NOT NULL THEN Cancellation_Year
            ELSE year(current_date)
		END) - Enrollment_Year AS Enrollment_Duration
	FROM customer_loyalty_history
    ) as subquery
ORDER BY Enrollment_duration DESC;

# 21. which enrollment type has the highest cancellation?
SELECT Enrollment_Type, COUNT(*) as cancellation_count
FROM customer_loyalty_history
WHERE Cancellation_Year IS NOT NULL
GROUP BY Enrollment_Type
ORDER BY cancellation_count DESC;

# 22. which loyalty card has the highest cancellation?
SELECT Loyalty_Card, COUNT(*) as cancellation_count
FROM customer_loyalty_history
WHERE Cancellation_Year IS NOT NULL
GROUP BY Loyalty_Card
ORDER BY cancellation_count DESC;

# 23. High Valued customers
WITH TotalDistance AS (
SELECT DISTINCT 
	Loyalty_Number, 
	MAX(Points_Accumulated) OVER (partition by Loyalty_Number) as Points_Accumulated, 
	SUM(Distance) OVER (PARTITION BY Loyalty_Number) as Total_Distance
FROM customer_flight_activity
),
TotalPoints AS (
SELECT Loyalty_Number, CLV
FROM customer_Loyalty_History)
SELECT td.Loyalty_Number, td.Total_Distance, td.Points_Accumulated, tp.CLV
FROM TotalDistance td
JOIN TotalPoints tp ON td.Loyalty_Number = tp.Loyalty_Number
ORDER BY td.Points_Accumulated DESC, td.Total_Distance DESC;

# 24. average distance travelled per year
WITH YearlyDistance as (
SELECT  DISTINCT Loyalty_Number, Year,
	sum(Distance) OVER (PARTITION BY Loyalty_Number, year) as Total_Distance
FROM customer_flight_activity)
SELECT DISTINCT Loyalty_Number,
	avg(Total_Distance) OVER (PARTITION BY Loyalty_Number) as Avg_Dist_per_year
FROM YearlyDistance
ORDER BY Avg_Dist_per_year DESC;




