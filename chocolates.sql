create database chocolates;

use chocolates;
select * from candy_data;


--Most popular Halloween Candy
SELECT competitorname, winpercent
FROM candy_data
ORDER BY winpercent DESC
LIMIT 10;


  --Least popular Halloween Candy
  
    SELECT  competitorname, winpercent
  FROM candy_data
  ORDER BY winpercent 
  LIMIT 10
  
    --Most popular Halloween Candy that containss chocolate:
    
SELECT  competitorname, winpercent
FROM candy_data
WHERE chocolate = '1'
ORDER BY winpercent DESC
LIMIT 10

-- On the least popular candy, all of the bottom 10 candies didn't contain chocolate.

 SELECT  competitorname, winpercent
  FROM candy_data
  WHERE chocolate = '0'
  ORDER BY winpercent 
  LIMIT 10
  
  
  --Analyzing other ingredients against top 10 most popular candies:
SELECT competitorname, winpercent
FROM candy_data
WHERE caramel = '1'
ORDER BY winpercent DESC
LIMIT 10

 *Twix, Snickers and Milkyway were on top 10*
  
  -Fruity:
  SELECT  competitorname, winpercent
  FROM candy_data
  WHERE fruity = '1'
  ORDER BY winpercent DESC
  LIMIT 10
  
  --Top costly candies:
  
    SELECT  competitorname, pricepercent, winpercent
  FROM candy_data
  ORDER BY pricepercent DESC, winpercent DESC
  LIMIT 10
  
 --HardCandies vs soft candies:


    SELECT  competitorname, winpercent
  FROM candy_data
  WHERE hard = '1'
  ORDER BY winpercent DESC
  LIMIT 10
  
  SELECT  competitorname, winpercent
  FROM candy_data
  WHERE hard = '0'
  ORDER BY winpercent DESC
  LIMIT 10
  

