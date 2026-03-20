USE res;

-- 1. Which restaurant of abohar is visited by least number of people?

SELECT * FROM restaurants
WHERE city = "Abohar" 
AND rating_count = (SELECT MIN(rating_count) FROM restaurants WHERE city = "Abohar");


-- 2. Which restaurant has generated maximum revenue all over india?

SELECT name, rating_count*cost AS revenue
FROM restaurants
WHERE rating_count*cost = (SELECT MAX(rating_count*cost) FROM restaurants);
 
-- 3. How many restaurants are having rating more than the average rating?

SELECT COUNT(*) FROM restaurants 
WHERE rating> (SELECT AVG(rating) FROM restaurants);

-- 4. Which restaurant of Delhi has generated most revenue?

SELECT * FROM restaurants
WHERE city ="Delhi" 
AND rating_count*cost = (SELECT MAX(rating_count*cost) FROM restaurants WHERE city ="Delhi");

-- 5. Which restaurant chain has maximum number of restaurants?

SELECT name, COUNT(*) AS num_of_rest FROM restaurants
GROUP BY name
ORDER BY num_of_rest DESC
LIMIT 1;

-- 6. Which restaurant chain has generated maximum revenue?

SELECT name, COUNT(*) AS num_of_rest, SUM(rating_count*cost) AS total_revenue
FROM restaurants
GROUP BY name 
ORDER BY total_revenue DESC
LIMIT 1;

-- 7. Which city has maximum number of restaurants?

SELECT city, COUNT(*) AS no_of_res FROM restaurants
GROUP BY city
ORDER BY no_of_res DESC
LIMIT 1;

-- 8. Which city has generated maximum revenue all over india?

SELECT city, SUM(rating_count*cost) as revenue FROM restaurants
GROUP BY city
ORDER BY revenue DESC
LIMIT 1;

-- 9. List 10 least expensive cuisines?

SELECT cuisine, AVG(cost) AS avg_cost FROM restaurantS
GROUP BY cuisine 
ORDER BY avg_cost ASC 
LIMIT 10;

-- 10.  List 10 most expensive cuisines?

SELECT cuisine, AVG(cost) AS avg_cost FROM restaurants
GROUP BY cuisine
ORDER BY avg_cost DESC
LIMIT 10;


-- 11. What is the city is having Biryani as most popular cuisine

SELECT city, COUNT(*) as biryani_count FROM restaurants
WHERE cuisine = "Biryani"
GROUP BY city
ORDER BY biryani_count desc
LIMIT 1;

-- 12. List top 10 restaurants thorughout the dataset as per generate maximum revenue 

SELECT name, SUM(rating_count * cost) AS total_revenue
FROM restaurants
GROUP BY name
ORDER BY total_revenue DESC
LIMIT 10;









