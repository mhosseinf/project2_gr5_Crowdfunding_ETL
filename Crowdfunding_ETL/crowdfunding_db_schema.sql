DROP TABLE campaign;
DROP TABLE contacts;
DROP TABLE subcategory;
DROP TABLE category;

--create category table 

CREATE TABLE category(
	category_id VARCHAR(30),
	category VARCHAR(50),
	PRIMARY KEY(category_id)
);

--create subcategory table

CREATE TABLE subcategory(
	subcategory_id VARCHAR(30),
	subcategory VARCHAR(50),
	PRIMARY KEY(subcategory_id)
);

--create contacts table

CREATE TABLE contacts(
	contact_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR,
	PRIMARY KEY(contact_id)
);

--create campaign table

CREATE TABLE campaign(
	cf_id INT,
	contact_id INT,
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR,
	description TEXT,
	goal FLOAT,
	pledge FLOAT,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launched_date VARCHAR,
	end_date VARCHAR,
	category_id VARCHAR,
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR,
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