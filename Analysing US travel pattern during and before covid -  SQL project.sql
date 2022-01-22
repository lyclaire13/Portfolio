--DATA CLEANING
--changed datatype of date, PopulationNotStayingatHome, PopulationStayingatHome, NumberofTrips to integer
-- update StatePostalCode to full state name from State_trips
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'AL','Alabama');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'AK','Alaska');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'AZ','Arizona');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'AR','Arkansas');

UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'CA','California');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'CO','Colorado');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'CT','Connecticut');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'DE','Delaware');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'FL','Florida');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'GA','Georgia');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'HI','Hawaii');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'ID','Idaho');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'IL','Illinois');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'IN','Indiana');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'IA','Iowa');

UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'KS','Kansas');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'KY','Kentucky');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'LA','Louisiana');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'ME','Maine');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'MD','Maryland');
	
UPDATE
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'MA','Massachusetts');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'MI','Michigan');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'MN','Minnesota');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'MS','Mississippi');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'MO','Missouri');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'MT','Montana');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'NE','Nebraska');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'NV','Nevada');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'NH','New Hampshire');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'NJ','New Jersey');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'NM','New Mexico');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'NY','New York');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'NC','North Carolina');
	
UPDATE	
   State_trips
SET
   StatePostalCode = REPLACE(StatePostalCode,'ND','North Dakota');
 
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'OH','Ohio');
	
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'OK','Oklahoma');
	
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'OR','Oregon');
	
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'PA','Pennsylvania');
	
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'RI','Rhode Island');
	
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'SC','South Carolina');
	
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'SD','South Dakota');
	
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'TN','Tennessee');
	
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'TX','Texas');
	
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'UT','Utah');
	
 UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'VT','Vermont');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'VA','Virginia');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'WA','Washington');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'WV','West Virginia');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'WI','Wisconsin');

UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'WY','Wyoming');
	
UPDATE	
    State_trips
SET
    StatePostalCode = REPLACE(StatePostalCode,'DC','District of Columbia');

-- check if all state code has been updated to full name of states
SELECT DISTINCT StatePostalCode FROM State_trips ORDER BY StatePostalCode;

--change created date's data type to date format
UPDATE
	State_trips
SET CreatedDate = REPLACE(CreatedDate, '/', '-' );

UPDATE
	National_trips
SET CreatedDate = REPLACE(CreatedDate, '/', '-' );

--take out commas in numeric values and change their data types to integers
UPDATE
	State_trips
SET NumberofTrips = REPLACE(NumberofTrips, ',', '' );

UPDATE
	National_trips
SET NumberofTrips = REPLACE(NumberofTrips, ',', '' );

UPDATE
	State_trips
SET PopulationNotStayingatHome = REPLACE(PopulationNotStayingatHome, ',', '' );

UPDATE
	National_trips
SET PopulationNotStayingatHome = REPLACE(PopulationNotStayingatHome, ',', '' );

UPDATE
	State_trips
SET PopulationStayingatHome = REPLACE(PopulationStayingatHome, ',', '' );

UPDATE
	National_trips
SET PopulationStayingatHome = REPLACE(PopulationStayingatHome, ',', '' );

UPDATE
	State_trips
SET Dlessthan1 = REPLACE(Dlessthan1, ',', '' );

UPDATE
	National_trips
SET Dlessthan1 = REPLACE(Dlessthan1, ',', '' );

UPDATE
	State_trips
SET D1to3 = REPLACE(D1to3, ',', '' );

UPDATE
	National_trips
SET D1to3 = REPLACE(D1to3, ',', '' );

UPDATE
	State_trips
SET D3to5 = REPLACE(D3to5, ',', '' );

UPDATE
	National_trips
SET D3to5 = REPLACE(D3to5, ',', '' );

UPDATE
	State_trips
SET D5to10 = REPLACE(D5to10, ',', '' );

UPDATE
	National_trips
SET D5to10 = REPLACE(D5to10, ',', '' );

UPDATE
	State_trips
SET D10to25 = REPLACE(D10to25, ',', '' );

UPDATE
	National_trips
SET D10to25 = REPLACE(D10to25, ',', '' );

UPDATE
	State_trips
SET D25to50 = REPLACE(D25to50, ',', '' );

UPDATE
	National_trips
SET D25to50 = REPLACE(D25to50, ',', '' );

UPDATE
	State_trips
	SET D50to100 = REPLACE(D50to100, ',', '' );

UPDATE
	National_trips
	SET D50to100 = REPLACE(D50to100, ',', '' );
	
UPDATE
	State_trips
	SET D100to250 = REPLACE(D100to250, ',', '' );

UPDATE
	National_trips
	SET D100to250 = REPLACE(D100to250, ',', '' );
	
UPDATE
	State_trips
	SET D250to500 = REPLACE(D250to500, ',', '' );

UPDATE
	National_trips
	SET D250to500 = REPLACE(D250to500, ',', '' );
	
UPDATE
	State_trips
	SET Dmorethan500 = REPLACE(Dmorethan500, ',', '' );

UPDATE
	National_trips
	SET Dmorethan500 = REPLACE(Dmorethan500, ',', '' );	

--State analysis

--States with highest annual count of trips BEFORE the US declared oovid a public health emergency
SELECT State, SUM(NumberofTrips)
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2019-02-01') AND date('2020-01-31')
GROUP BY State
ORDER BY NumberofTrips DESC
LIMIT 3;
--California 61282951833, Texas 39119316172, New York 34507165874

--States with highest annual count of trips AFTER the US declared oovid a public health emergency
SELECT State, SUM(NumberofTrips)
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2020-02-01') AND date('2021-01-31')
GROUP BY State
ORDER BY NumberofTrips DESC
LIMIT 3;
---California 35212781137, Texas 30061856716, New York 24851932938

--Ratio of short distance (0-10) vs medium distance (10-100) trip vs  long distance trip (100 or above) for the top traffic states one year after US declaired covid a public health emergency
Select state, shortdistance/mediumdistance, mediumdistance/longdistance, shortdistance/longdistance
FROM (SELECT State, Dlessthan1+D1to3+D3to5+D5to10 shortdistance, D10to25+D25to50+D50to100 mediumdistance, D100to250+D250to500+Dmorethan500 longdistance
FROM State_trips
WHERE State = 'California' OR State = 'Texas' OR State = 'New York' AND date(CreatedDate) BETWEEN date('2020-02-01') AND date('2021-01-31')
GROUP BY State);

--States with least annual count of trips BEFORE the US declared oovid a public health emergency
SELECT State, SUM(NumberofTrips)
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2019-02-01') AND date('2020-01-31')
GROUP BY State
ORDER BY NumberofTrips
LIMIT 3;
---Vermont 906154986, Wyoming 1013984251, North Dakota 1072344187

--States with least annual count of trips one year AFTER the US declared oovid a public health emergency
SELECT State, SUM(NumberofTrips)
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2020-02-01') AND date('2021-01-31')
GROUP BY State
ORDER BY NumberofTrips
LIMIT 3;
---Wyoming 713488456, Vermont 754602697, North Dakota 817184542

--Ratio of short distance (0-10) vs medium distance (10-100) trip vs  long distance trip (100 or above) for the least traffic states one year after US declaired covid a public health emergency
Select state, shortdistance/mediumdistance, mediumdistance/longdistance, shortdistance/longdistance
FROM (SELECT State, Dlessthan1+D1to3+D3to5+D5to10 shortdistance, D10to25+D25to50+D50to100 mediumdistance, D100to250+D250to500+Dmorethan500 longdistance
FROM State_trips
WHERE State = 'Wyoming' OR State = 'Vermont' OR State = 'North Dakota' AND date(CreatedDate) BETWEEN date('2020-02-01') AND date('2021-01-31')
GROUP BY State);

-- Using CTE to calculate Percentage change YoY
-- WITH oldstatetop AS (
-- SELECT State, SUM(NumberofTrips)
-- FROM State_trips
-- WHERE date(CreatedDate) BETWEEN date('2019-01-31') AND date('2020-01-31')
-- GROUP BY State
-- ORDER BY NumberofTrips DESC
-- LIMIT 3),
-- 
-- newstatetop AS (
-- 				SELECT State, SUM(NumberofTrips)
-- FROM State_trips
-- WHERE date(CreatedDate) BETWEEN date('2020-02-01') AND date('2021-02-01')
-- GROUP BY State
-- ORDER BY NumberofTrips DESC
-- LIMIT 3)
-- 
-- SELECT newstatetop.State, (newstatetop.SUM(NumberofTrips) - oldstatetop.SUM(NumberofTrips))/newstatetop.SUM(NumberofTrips)
-- FROM oldstatetop
-- JOIN newstatetop
-- ON oldstate.State = newstatetop.State
-- GROUP BY newstatetop.State;

--Months with highest and lowest travel a year before and after covid

--month with highest number of trips BEFORE the US declared oovid a public health emergency
SELECT strftime('%Y,%m', CreatedDate) month, NumberofTrips
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2019-02-01') AND date('2020-01-31')
GROUP BY strftime('%Y,%m', CreatedDate)
ORDER BY NumberofTrips DESC
LIMIT 3;

--month with highest number of trips one year AFTER the US declared oovid a public health emergency
SELECT strftime('%Y,%m', CreatedDate) month, NumberofTrips
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2020-02-01') AND date('2021-01-31')
GROUP BY strftime('%Y,%m', CreatedDate)
ORDER BY NumberofTrips DESC
LIMIT 3;

--month with lowest number of trips BEFORE the US declared oovid a public health emergency
SELECT strftime('%Y,%m', CreatedDate) month, NumberofTrips
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2019-02-01') AND date('2020-01-31')
GROUP BY strftime('%Y,%m', CreatedDate)
ORDER BY NumberofTrips
LIMIT 3;

--month with lowest number of trips one year AFTER the US declared oovid a public health emergency
SELECT strftime('%Y,%m', CreatedDate) month, NumberofTrips
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2020-02-01') AND date('2021-01-31')
GROUP BY strftime('%Y,%m', CreatedDate)
ORDER BY NumberofTrips
LIMIT 3;

--DELTA PEAK between June 15 and July 20, 2020
SELECT CreatedDate, NumberofTrips
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2020-06-15') AND date('2021-07-20');

--DELTA PEAK between Oct 5 ,2020 and Jan 4, 2021
SELECT CreatedDate, NumberofTrips
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2020-10-05') AND date('2021-01-04');

--PopulationNotStayingatHome vs PopulationStayingatHome a year before and after covid

--Average count of population staying at home vs not staying at home BEFORE the US declared oovid a public health emergency
SELECT round(avg(PopulationStayingatHome)), round(avg(populationnotstayingathome),0)
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2019-02-01') AND date('2020-01-31');

--Average of population staying at home vs not staying at home one year AFTER the US declared oovid a public health emergency
SELECT round(avg(PopulationStayingatHome),0), round(avg(populationnotstayingathome),0)
FROM State_trips
WHERE date(CreatedDate) BETWEEN date('2020-02-01') AND date('2021-01-31');

--Rolling average of population staying at home over 7 days order by date and state BEFORE the US declared oovid a public health emergency
Select state, CreatedDate, PopulationStayingatHome, ROUND(AVG(PopulationStayingatHome) over (PARTITION by state order by state, CreatedDate ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),0)  rollingsumover7days
From State_trips
WHERE date(CreatedDate) BETWEEN date('2019-02-01') AND date('2020-01-31');

--Rolling average of population staying at home over 7 days order by date and state one year AFTER the US declared oovid a public health emergency
Select state, CreatedDate, PopulationStayingatHome, ROUND(AVG(PopulationStayingatHome) over (PARTITION by state order by state, CreatedDate ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),0)  rollingsumover7days
From State_trips
WHERE date(CreatedDate) BETWEEN date('2020-02-01') AND date('2021-01-31');
