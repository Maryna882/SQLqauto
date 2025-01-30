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

INSERT INTO car_brands (title) 
VALUES ('Audi', 'BMW', 'Ford', 'Porshe', 'Fiat' ) ;


INSERT INTO car_models (carBrandId, title) 
VALUES (1, 'TT', 1, 'R8', 1, 'Q7', 1,'A6', 1, 'A8', 2, '3', 2, '5', 2, 'X5', 2, 'X6',2, 'Z3', 
3, 'Fiesta', 3, 'Focus', 3, 'Fusion', 3, 'Mondeo', 3, 'Siera', 4, '911', 4, 'Cayenne', 4, 'Panamera', 5, 'Palio', 5, 'Ducato', 5, 'Panda', 5, 'Punto', 5, 'Scudo') ;

INSERT INTO users (firstName, lastName, email, password) 
VALUES 
('Maryna', 'Kovalets', 'kovalets@gmail.com', 'password123') , 
('Viacheslav', 'Dublicat', 'dublicat@gmail.com', 'password9h19d') , 
('Dmytro', 'Selin', 'selin@gmail.com', 'password12drp') ;


INSERT INTO cars (userId, carBrandId, carModelId, mileage, initialMileage) 
VALUES 
(1, 1, 1, 10353, 0),
(1, 2, 3, 15200, 2030),
(2, 3, 4, 16020, 2080),
(2, 4, 5, 60900, 3095),
(3, 5, 4, 56300, 2500),
 (3, 5, 2, 30500, 3085);
