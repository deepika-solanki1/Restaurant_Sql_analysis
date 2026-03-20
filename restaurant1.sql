CREATE DATABASE res;
USE res;

-- 1. SELECT ALL COLUMN FROM RESTAURANT TABLE

SELECT * FROM restaurants LIMIT 10;

-- 2. COUNT NUMBER OF RESTAURANTS

SELECT COUNT(*) AS num_of_res
FROM restaurants;

-- 3. SHOW ALL RESTAURANT LOCATED IN BANGALORE

SELECT COUNT(*) AS num_of_res_in_bangalore
FROM restaurants
WHERE city="Bangalore";

-- 4. SELECT NAME OF RESTAURANT WHERE RATING IS GREATER THAN 4   

SELECT name, rating FROM restaurants
WHERE rating>4;

-- 5. FIND RESTAURANT WHERE THE COST IS LESS THAN OR EQUAL TO 300

SELECT NAME, COST FROM restaurants
WHERE cost <=300;

-- 6. DISPLAY ALL DISTINCT CUISINE TYPES AVAILLABLE IN DATASET.

SELECT DISTINCT cuisine FROM restaurants;

-- 7. FIND ALL RESTAURANT WITH CUISINE BIRYANI.

SELECT * FROM restaurants
where cuisine = "Biryani";

-- 8. DISPLAY ALL TOP 5 RESTAURANT WITH HIGHEST RATING.

SELECT * FROM restaurants
ORDER BY rating desc
LIMIT 5;

-- 9. LIST RESTAURANTS WITH A RATING COUNT GREATER THAN 1000.

SELECT * FROM restaurants 
WHERE rating_count > 1000;

-- 10. COUNT THE TOTAL NUMBER OF RESTAURANTS AVAILLABLE IN THE DATASET.
 
SELECT COUNT(*) AS restaurants_count
FROM restaurants;

-- 11. FIND THE AVERAGE COST OF ALL RESTAURANTS.

SELECT AVG(cost) AS average_cost
FROM restaurants;

-- 12. DISPLAY RESTUARANTS NAMES AND COSTS ORDERED BY COST IN ASCENEDING ORDER. 

SELECT name, cost FROM restaurants
ORDER BY cost ASC;

-- 13. FIND THE AVERAGE RATING OF RESTAURANT FOR EACH CITY. 

SELECT city, AVG(rating) AS avg_rating
FROM restaurants
GROUP BY city ;

-- 14. COUNT THE NUMBER OF RESTAURANTS AVAILLABLE IN EACH CITY. 

SELECT city, COUNT(id) AS num_of_res
FROM restaurants
GROUP BY city;

-- 15. FIND THE MAX AND MIN COST OF RESTAURANT FOR EACH CUISINE.

SELECT cuisine, MAX(cost), MIN(cost) FROM restaurants
GROUP BY cuisine; 

-- 16. LIST CUISINE THAT HAVE MORE THAN 10 RESTAURANTS.

SELECT cuisine FROM restaurants
WHERE name>10
GROUP BY cuisine;

-- 17. FIND THE TOP 3 CITIES WITH THE HIGHEST NUMBER OF RESTAURANTS.

 SELECT city, COUNT(*) AS num_of_res FROM restaurants
 GROUP BY city
 ORDER BY num_of_res DESC
 LIMIT 3;

-- 18. Display the average cost of restaurants for each cuisine.

SELECT cuisine, AVG(cost) AS avg_cost FROM restaurants
GROUP BY cuisine;

-- 19. Find cities where the average restaurant rating is greater than 4.0.

SELECT city, AVG(rating) as avg_rating FROM restaurants
WHERE avg_rating > 4
GROUP BY city;

-- 20.List restaurants whose cost is higher than the average cost of all restaurants.

SELECT name, cost FROM restaurants
WHERE cost> (SELECT AVG (cost) FROM restaurants)
ORDER BY cost DESC;

-- 21. Find the total number of ratings (rating_count) for each city.

SELECT city, SUM(rating_count) AS total_ratings FROM restaurants
GROUP BY city;

-- 22. Display cuisines ordered by their average rating in descending order.

SELECT cuisine, AVG(rating) as avg_rating FROM restaurants
GROUP BY cuisine
ORDER BY avg_rating DESC;














