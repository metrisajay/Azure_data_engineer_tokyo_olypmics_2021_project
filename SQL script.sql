--Count the number of atheletes from each country 
SELECT NOC,
COUNT(*) AS total_athletes
FROM athletes
GROUP BY NOC
ORDER BY total_athletes DESC

--Calculate the total medals won by each country
SELECT Team,
SUM(Gold) AS GOld_medals,
SUM(Silver) AS silver_medals,
SUM(Bronze) AS bronze_medals
FROM medal
GROUP BY Team
ORDER BY GOld_medals DESC

--Calculate the average number of enteries by gender for each discipline
SELECT Discipline,
AVG(Female) AS female,
AVG(male) AS male
from gender 
GROUP BY Discipline;


