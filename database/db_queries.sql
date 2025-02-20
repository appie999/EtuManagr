DROP DATABASE IF EXISTS students;

CREATE DATABASE students;

USE students;

CREATE TABLE stud (
      id INT(20) PRIMARY KEY AUTO_INCREMENT,
      nom VARCHAR(20),
      prenom VARCHAR(30),
      date_de_naissance INT,
      email VARCHAR(50) UNIQUE
);

CREATE TABLE courses (
     id INT(20) PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(50) NOT NULL,
     description TEXT
);
