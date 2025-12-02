

CREATE TABLE Data_Cleaned(
    sr_id SERIAL PRIMARY KEY,
    country VARCHAR(100),
    city VARCHAR(100),
    aqi_value NUMERIC,
    aqi_category VARCHAR(50),
    co_aqi_value NUMERIC,
    co_aqi_category VARCHAR(50),
    ozone_aqi_value NUMERIC,
    ozone_aqi_category VARCHAR(50),
    no2_aqi_value NUMERIC,
    no2_aqi_category VARCHAR(50),
    pm25_aqi_value NUMERIC,
    pm25_aqi_category VARCHAR(50),
    avg_pollutant_aqi_per_country NUMERIC
);
COPY Data_Cleaned
FROM 'D:/Data_cleaned.csv'
DELIMITER ','
CSV HEADER
NULL 'NULL'
ENCODING 'WIN1252';

select * from Data_Cleaned


---Top 10 Most Polluted Cities

select city,Country,round(avg(aqi_value),2) as Average_AQI
from Data_Cleaned
group by city,country
order by Average_AQI desc
limit 10;


---Average AQI by Country

select Country,round(avg(aqi_value),2) as Average_AQI
from Data_Cleaned
group by Country
Order By Average_AQI DESC



---Cities with AQI > 200 (Unhealthy)

SELECT city,country,aqi_value,aqi_category

FROM 
    Data_Cleaned
WHERE 
    aqi_value > 200
ORDER BY 
    aqi_value DESC;



---Pollutant contributing most to AQI

select city,country,aqi_value as Overall_AQI,
greatest(co_aqi_value,ozone_aqi_value,no2_aqi_value,pm25_aqi_value) as Max_Pollutant_Value,
case
when pm25_aqi_value=greatest(co_aqi_value,ozone_aqi_value,no2_aqi_value,pm25_aqi_value)then 'PM2.5'
when no2_aqi_value=greatest(co_aqi_value,ozone_aqi_value,no2_aqi_value,pm25_aqi_value)then 'NO2'
when ozone_aqi_value=greatest(co_aqi_value,ozone_aqi_value,no2_aqi_value,pm25_aqi_value) then 'Ozone'
when co_aqi_value=greatest(co_aqi_value,ozone_aqi_value,no2_aqi_value,pm25_aqi_value) then 'CO'
else 'Unknown'
end as Main_Pollutant
from Data_Cleaned;




---AQI category distribution

select aqi_category,count(aqi_category)as category
from Data_Cleaned
group by aqi_category


---Which Country has better air?

select country,round(avg(aqi_value),2) as AVG_AQI
FROM Data_Cleaned 
group by country
order by AVG_AQI ASC
limit 5


---Most polluted city (highest AQI overall)
select city ,country ,aqi_value as Overall_AQI
FROM DATA_Cleaned 
order by Overall_AQI desc 
limit 1



---Most Cleanest City
SELECT city, country, aqi_value AS overall_aqi
FROM data_cleaned
ORDER BY aqi_value ASC
LIMIT 1;



---Har city me pollutant contribution ka ratio kaisa hai? query likh
SELECT
    city,
    country,
    ROUND(co_aqi_value::numeric / (co_aqi_value + ozone_aqi_value + no2_aqi_value + pm25_aqi_value) * 100, 2) AS co_ratio_percent,
    ROUND(ozone_aqi_value::numeric / (co_aqi_value + ozone_aqi_value + no2_aqi_value + pm25_aqi_value) * 100, 2) AS ozone_ratio_percent,
    ROUND(no2_aqi_value::numeric / (co_aqi_value + ozone_aqi_value + no2_aqi_value + pm25_aqi_value) * 100, 2) AS no2_ratio_percent,
    ROUND(pm25_aqi_value::numeric / (co_aqi_value + ozone_aqi_value + no2_aqi_value + pm25_aqi_value) * 100, 2) AS pm25_ratio_percent
FROM 
    data_cleaned
ORDER BY 
    city;


---Top 10 Most Polluted Cities
select city,country,round(avg(Aqi_Value),2) as Overall_AQI
from Data_Cleaned
group by city,country
order by overall_AQI DESC
LIMIT 10


-- top 10 cities with most hazardous readings
SELECT
    city,
    country,
    COUNT(*) AS Very_Unhealthy
FROM
    data_cleaned
WHERE
    aqi_value > 200
GROUP BY
    city, country
ORDER BY
   Very_Unhealthy DESC
LIMIT 10;  
