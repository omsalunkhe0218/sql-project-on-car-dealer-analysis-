-- read cars data 
select * from car_dekho;

-- total cars
select count(Name) as total_cars from car_dekho;

-- how many cars are avaliable in 2023 
select count( year ) as avaliable_cars from car_dekho 
where year = 2023;

-- how many cars are avaliable in 2020,21,22
select count( year ) as avaliable_cars from car_dekho 
where year in (2020,2021,2022);
-- total of cars by year 

select year,count(Name) as no_of_cars from car_dekho group by year ;

-- how many disel cars in 2020
select year,count(fuel) from car_dekho where year =2020 and fuel='Diesel';

-- how many petrol cars in 2020

select year,count(fuel) as petrol_cars from car_dekho where year =2020 and fuel='Petrol';

-- which year has more than 100 car

SELECT year, COUNT(Name) 
FROM car_dekho 
GROUP BY year 
HAVING COUNT(Name) > 100; 

-- all the cars between 2015 to 2023
select Name,year from car_dekho where  year between 2015 and 2023;

-- all details between 2015 to 2023
select * from car_dekho where  year between 2015 and 2023;

 