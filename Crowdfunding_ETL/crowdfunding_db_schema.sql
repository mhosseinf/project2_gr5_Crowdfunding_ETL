DROP TABLE campaign;
DROP TABLE contacts;
DROP TABLE subcategory;
DROP TABLE category;

--create category table 

CREATE TABLE category(
	category_id VARCHAR(30) NOT NULL,
	category VARCHAR(50) NOT NULL,
	PRIMARY KEY(category_id)
);

--create subcategory table

CREATE TABLE subcategory(
	subcategory_id VARCHAR(30) NOT NULL,
	subcategory VARCHAR(50) NOT NULL,
	PRIMARY KEY(subcategory_id)
);

--create contacts table

CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR,
	PRIMARY KEY(contact_id)
);

--create campaign table

CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR NOT NULL,
	description TEXT NOT NULL,
	goal FLOAT NOT NULL,
	pledge FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id),
	PRIMARY KEY(cf_id)
);

SELECT *
FROM category;

SELECT *
FROM subcategory;

SELECT *
FROM contacts;

SELECT *
FROM campaign;