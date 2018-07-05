USE usairlineflights;
SHOW COLUMNS FROM usairlineflights.flights;
SELECT flightID FROM usairlineflights.flights;

SELECT COUNT(flightID) FROM usairlineflights.flights;

SELECT AVG(DepDelay) FROM usairlineflights.flights;
SELECT AVG(ArrDelay) FROM usairlineflights.flights;

