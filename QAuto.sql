SELECT name 
FROM user_profiles 
WHERE name LIKE '%am%'




SELECT MAX(totalCost) 
FROM expenses 
WHERE carId IN (
SELECT id from cars 
WHERE carBrandId=
( SELECT id FROM car_brands WHERE title='Audi') );



SELECT  
COUNT(DISTINCT cars.carModelId) AS count_models,cars.carBrandId AS car_id
FROM cars
WHERE cars.carBrandId IN (
        SELECT id FROM car_brands WHERE title IN ('Audi', 'BMW')
    )
GROUP BY     cars.carBrandId;



SELECT 
    car_model.title AS car_model,
    car_brands.title AS car_brand,
    count(DISTINCT cars.userId) AS user_count
FROM cars
JOIN car_models car_model ON cars.carModelId = car_model.id
JOIN car_brands car_brands ON cars.carBrandId = car_brands.id
GROUP BY car_model.title, car_brands.title;



SELECT name, lastName 
FROM user_profiles 
WHERE userId IN (
SELECT DISTINCT userId 
    FROM cars);

