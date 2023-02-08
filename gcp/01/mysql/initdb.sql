CREATE DATABASE IF NOT EXISTS sample;

USE sample;

CREATE TABLE user (
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  sign_in_count INT NOT NULL,
  last_signed_in DATETIME NOT NULL
);

INSERT INTO user (first_name, last_name, sign_in_count, last_signed_in)
VALUES ('John', 'Doe', 5, '2022-12-01 12:00:00');
