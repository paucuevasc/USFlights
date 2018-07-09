USE usairlineflights;
SHOW COLUMNS FROM usairlineflights.flights;
SELECT flightID FROM usairlineflights.flights;

SELECT COUNT(flightID) FROM usairlineflights.flights;

SELECT AVG(DepDelay) FROM usairlineflights.flights;
SELECT AVG(ArrDelay) FROM usairlineflights.flights;

SELECT Origin,colYear,colMonth,AVG(ArrDelay) as retard FROM usairlineflights.flights 
group by colMonth,colYear,Origin;

SELECT colYear,colMonth FROM usairlineflights.flights;

SELECT city,Origin,colYear,colMonth,AVG(flights.ArrDelay) as retard FROM usairlineflights.flights,usairlineflights.usairports 
WHERE usairlineflights.flights.Origin=usairlineflights.usairports.IATA
group by colMonth,colYear,Origin;


SELECT UniqueCarrier, SUM(Cancelled) FROM usairlineflights.flights
group by UniqueCarrier;

SELECT TailNum,SUM(Distance)  FROM usairlineflights.flights
group by TailNum LIMIT 0,10;

SELECT UniqueCarrier, AVG(ArrDelay) as retard 
FROM usairlineflights.flights 
group by UniqueCarrier
HAVING retard>10;



