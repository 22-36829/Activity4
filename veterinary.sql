CREATE DATABASE Veterinary;

CREATE TABLE owners(
	ownerid INT PRIMARY KEY,
	ofirstname VARCHAR(50) NOT NULL,
	olastname VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	phone VARCHAR(15) NOT NULL,
	email VARCHAR(100) NOT NULL
);

-- animals 
CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    species VARCHAR(50) NOT NULL,
    breed VARCHAR(50) NOT NULL,
    dateofbirth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    color VARCHAR(50) NOT NULL,
    ownerid INT NOT NULL, -- Define data type and NOT NULL constraint
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

-- appointments

CREATE TABLE appointments(
    appointid INT PRIMARY KEY,
    animalid INT,
    appointment DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);