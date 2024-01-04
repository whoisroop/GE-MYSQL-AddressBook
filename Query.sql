-- SET SQL_SAFE_UPDATES = 0;

DROP DATABASE addressbook;
CREATE DATABASE addressbook;
USE addressbook;

CREATE TABLE contacts (id INT PRIMARY KEY, first_name VARCHAR(32), last_name VARCHAR(32), address VARCHAR(32), city VARCHAR(32), state VARCHAR(32), zip VARCHAR(32), phone VARCHAR(32), email VARCHAR(32));
DESC contacts;

INSERT INTO contacts VALUES 
(1, "Roop", "Lala", "Adajan", "Surat", "Gujarat", "11111", "112233", "roop@gmail.com"),
(2, "Mark", "Twain", "Aries", "Mumbai", "Maharashtra", "22222", "223344", "mark@gmail.com"),
(3, "Ben", "Styles", "Mapple", "Kolkata", "West Bengal", "33333", "334455", "ben@gmail.com");

SELECT * FROM contacts;

UPDATE contacts 
SET email = "styles@gmail.com" 
WHERE first_name = "Ben";

DELETE FROM contacts
WHERE first_name = "Ben";

SELECT * FROM contacts WHERE city = "Surat";
SELECT * FROM contacts WHERE state = "Maharashtra";

SELECT count(city), count(state) FROM contacts;

SELECT * FROM contacts ORDER BY first_name;

ALTER TABLE contacts
ADD contact_name VARCHAR(32);

ALTER TABLE contacts
ADD contact_type VARCHAR(32);

UPDATE contacts 
SET contact_type = "family" 
WHERE first_name = "Roop";

UPDATE contacts 
SET contact_type = "family" 
WHERE first_name = "Mark";

SELECT count(contact_type), contact_type FROM contacts GROUP BY contact_type;

