/*
--1111111 Province, pop och huvudstad sorterat på pop
SELECT Name, Population, Capital FROM Province WHERE Country = 'S' ORDER BY Population DESC;

--22222
SELECT Name, Established FROM Organization WHERE (Name LIKE '%Nuclear%') AND Established IS NULL;

--3333333333

SELECT Name, Height FROM 
(SELECT DISTINCT Name, Continent, Height FROM Encompasses, mountain, geo_mountain 
		WHERE Encompasses.country= geo_mountain.country AND geo_mountain.mountain=mountain.name ORDER BY Height) AS T ,

		(SELECT Continent, MAX(m.Height) Mhi
			FROM (SELECT Name,Country,Height FROM geo_mountain, mountain WHERE geo_mountain.mountain = mountain.name) 
					AS M, Encompasses WHERE M.Country = Encompasses.Country GROUP BY Continent) AS S 

WHERE S.Mhi = T.Height AND S.Continent = T.Continent;
asd
----4444444444

SELECT Name, ratio 
	FROM country, 
		(SELECT S.Country1, blength/NumNeigh AS Ratio FROM 
		(SELECT Country1, SUM(length) AS blength, COUNT(Country2) AS NumNeigh FROM borders GROUP BY Country1)
	AS S)
AS M WHERE M.country1 = country.code ORDER BY Ratio DESC;




--------666666

SELECT Name FROM 
	Country,
	((SELECT country2 AS ctr FROM borders WHERE 
		(country1 IN (SELECT country FROM isMember WHERE organization = 'NATO') AND Country2 NOT IN (SELECT country FROM isMember WHERE organization = 'NATO'))
	)
	UNION
	(SELECT country1 AS ctr FROM borders WHERE 
		(country2 IN (SELECT country FROM isMember WHERE organization = 'NATO') AND Country1 NOT IN (SELECT country FROM isMember WHERE organization = 'NATO'))
	)) AS Q
	WHERE Country.code = Q.ctr;
*/
----------5555555555555
/*
SELECT    Name, Population*POWER(1+(population_growth/100),10) AS Popin10,
				Population*POWER(1+(population_growth/100),25) AS Popin25,  
				Population*POWER(1+(population_growth/100),50) AS Popin50,  
				Population*POWER(1+(population_growth/100),100) AS Popin100    

FROM Country, population WHERE Country.code = population.country AND NOT population.population_growth IS NULL;
*/

---------777777777



----88888888888888




----------999999999999




