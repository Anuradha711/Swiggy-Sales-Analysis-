-- Create Database

CREATE DATABASE Swiggy;
USE Swiggy;


-- select all column from table restaurants

SELECT * FROM restaurants;

SELECT COUNT(*) FROM  restaurants;

-- how many city
SELECT COUNT(DISTINCT city) AS City_Count FROM restaurants;

-- how many restaurants
SELECT COUNT(DISTINCT name) AS Unique_Restaurants FROM restaurants;

-- Which restaurants have maximum cost

SELECT MAX(cost) FROM restaurants;

SELECT name FROM restaurants
WHERE cost = '3000';

SELECT name FROM restaurants
where cost = (SELECT MAX(cost) FROM restaurants);

--  Which restaurant of abohar is visited by least number of people?

SELECT * FROM restaurants
WHERE city = 'abohar' and rating_count = ( SELECT MIN(rating_count) FROM restaurants 
										  WHERE city = 'abohar');
                                          
--  Which restaurant has generated maximum revenue all over india?

SELECT * FROM restaurants 
WHERE cost * rating_count = (SELECT MAX(cost * rating_count) FROM restaurants);  

--  How many restaurants are having rating more than the average rating?

SELECT COUNT(*) AS Best_Rating FROM restaurants 
WHERE rating > (SELECT AVG(rating) FROM restaurants);  

--  Which restaurant of Delhi has generated most revenue?

SELECT name FROM restaurants
WHERE city = 'delhi'
AND cost * rating_count = (SELECT MAX(cost * rating_count) FROM restaurants
												WHERE city = 'delhi');    
                                                
--  Which restaurant chain has maximum number of restaurants?

SELECT name, COUNT(name) AS No_of_Branch FROM restaurants
GROUP BY name
ORDER BY COUNT(name) DESC LIMIT 1;

--  Which restaurant chain has generated maximum revenue?

SELECT COUNT(name), MAX( cost * rating_count) FROM restaurants
GROUP BY name
ORDER BY MAX( cost * rating_count) DESC LIMIT 1;

--  Which city has maximum number of restaurants?

SELECT  city, COUNT(*) AS No_of_Restaurant FROM restaurants
GROUP BY city
ORDER BY COUNT(name) DESC LIMIT 1;

--  Which city has generated maximum revenue all over india?

SELECT  city, SUM(cost * rating_count) AS Total_Revanue FROM restaurants
GROUP BY city
ORDER BY Total_Revanue DESC LIMIT 1;

--  List 10 least expensive cuisines?

SELECT cuisine, AVG(cost) AS AVG_Cost FROM restaurants
GROUP BY cuisine
ORDER BY AVG_Cost ASC LIMIT 10;

-- 10. List 10 most expensive cuisines?

SELECT cuisine, AVG(cost) AS AVG_Cost FROM restaurants
GROUP BY cuisine
ORDER BY AVG_Cost DESC LIMIT 10;

-- 11. What is the city is having Biryani as most popular cuisine

SELECT city, cuisine, COUNT(*) AS Biryani_Restaurants FROM restaurants
WHERE cuisine = 'Biryani'
GROUP BY city
ORDER BY Biryani_Restaurants DESC LIMIT 1 ;

-- 12. List top 10 unique restaurants with unique name only thorughout the dataset as per generate maximum revenue (Single restaurant with that name)
                                            
SELECT name, cost * rating_count AS Revenue
FROM restaurants
GROUP BY name
HAVING COUNT(name) = 1
ORDER BY Revenue DESC
LIMIT 10;