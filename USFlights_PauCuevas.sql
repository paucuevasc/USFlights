USE usairlineflights;


SELECT COUNT(flightID) FROM usairlineflights.flights;


SELECT Origin, AVG(DepDelay), AVG(ArrDelay)  
FROM usairlineflights.flights
GROUP BY Origin
;


SELECT Origin,colYear,colMonth,AVG(ArrDelay) as retard 
FROM usairlineflights.flights 
GROUP BY colMonth,colYear,Origin
ORDER BY Origin, colYear, colMonth;


SELECT city,Origin,colYear,colMonth,AVG(flights.ArrDelay) as retard 
FROM usairlineflights.flights
INNER JOIN  usairlineflights.usairports  ON flights.Origin=usairports.IATA
group by colMonth,colYear,Origin;



SELECT UniqueCarrier, COUNT(Cancelled) as totalCancelled
FROM usairlineflights.flights
WHERE Cancelled=1
GROUP BY UniqueCarrier
ORDER BY totalCancelled DESC;

SELECT TailNum, SUM(Distance) as distanceTotal 
FROM usairlineflights.flights
GROUP BY TailNum
ORDER BY distanceTotal DESC
limit 10
;

SELECT UniqueCarrier, AVG(ArrDelay) as retard 
FROM usairlineflights.flights 
group by UniqueCarrier
HAVING retard>10;

SELECT carriers;

