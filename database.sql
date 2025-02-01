CREATE TABLE car_brands (
    id INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

CREATE TABLE car_models (
    id INT PRIMARY KEY,
    carBrandId INT NOT NULL,
    title VARCHAR(50) NOT NULL,
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id)
);

CREATE TABLE users (
    id INT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(200) NOT NULL
);

CREATE TABLE cars (
    id INT PRIMARY KEY,
    userId INT NOT NULL,
    carBrandId INT NOT NULL,
    carModelId INT NOT NULL,
    mileage INT NOT NULL,
    initialMileage INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES users(id),
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id),
    FOREIGN KEY (carModelId) REFERENCES car_models(id)
);

//car_brands
INSERT INTO car_brands (id, title) VALUES(1, 'Audi');
INSERT INTO car_brands (id, title) VALUES(2, 'BMW');
INSERT INTO car_brands (id, title) VALUES(3, 'Volvo');
INSERT INTO car_brands (id, title) VALUES(4, 'Ford');
INSERT INTO car_brands (id, title) VALUES(5, 'Fiat');
INSERT INTO car_brands (id, title) VALUES(6, 'Nissan');

//car_models
INSERT INTO car_models (id, carBrandId, title) VALUES(1, 1, 'A6');
INSERT INTO car_models (id, carBrandId, title) VALUES(2, 1, 'A7');
INSERT INTO car_models (id, carBrandId, title) VALUES(3, 1, 'Q8');
INSERT INTO car_models (id, carBrandId, title) VALUES(4, 2, 'X5');
INSERT INTO car_models (id, carBrandId, title) VALUES(5, 2, 'X6');
INSERT INTO car_models (id, carBrandId, title) VALUES(6, 4,
'Mustang');
INSERT INTO car_models (id, carBrandId, title) VALUES(7, 5,
'Fiesta');

//users
INSERT INTO users (id, firstName, lastName, email, password)
VALUES(1, 'Svinka', 'Pepa', 'pepa@gmail.com', 'pepa123');
INSERT INTO users (id, firstName, lastName, email, password)
VALUES(2, 'Vanya', 'Kuzminov', 'vanoKuzminov@gmail.com',
'vanykavshtanyka33');
INSERT INTO users (id, firstName, lastName, email, password)
VALUES(3, 'Mukola', 'Kokakola', 'koka@ukr.net', 'muka66');

//cars
INSERT INTO cars (id, userId, carBrandId, carModelId, mileage,
initialMileage) VALUES(1, 1, 1, 3, 132, 130);
INSERT INTO cars (id, userId, carBrandId, carModelId, mileage,
initialMileage) VALUES(2, 2, 5, 7, 80, 42);
INSERT INTO cars (id, userId, carBrandId, carModelId, mileage,
initialMileage) VALUES(3, 2, 1, 2, 120, 30);