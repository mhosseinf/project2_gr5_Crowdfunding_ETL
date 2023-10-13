# project2_gr5_Crowdfunding_ETL

**Group Members:**
- Lakna Chathurani Premasinghe
- Hossein
- Claive

# Background of the Project and Analysis.
For the ETL mini project, work with a partner to build an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, upload the CSV file data into a Postgres database.

This project is divided into the following subsections:
01. Create the Category and Subcategory DataFrames
02. Create the Campaign DataFrame
03. Create the Contacts DataFrame
04. Create the Crowdfunding Database

**01. Create the Category and Subcategory DataFrames**

1. Extract and transform the "crowdfunding.xlsx" Excel data to create a category DataFrame that has the columns "category_id" and "category".

      - "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories.
      - "category" column that contains only the category titles.
      - The following image shows the "category" DataFrame. \
![image](https://github.com/mhosseinf/project2_gr5_Crowdfunding_ETL/assets/138610916/35715cf6-04f5-4389-b326-7ef00ab87cfd)
2. Export the "category" DataFrame as category.csv

3. Extract and transform the "crowdfunding.xlsx" Excel data to create a subcategory DataFrame that has the columns "subcategory_id" and "subcategory".

      - "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories.
      - "subcategory" column that contains only the subcategory titles.
      - The following image shows the "subcategory" DataFrame. (Added only first 11 rows) \
![image](https://github.com/mhosseinf/project2_gr5_Crowdfunding_ETL/assets/138610916/a0578284-0d48-4986-93ec-e063a8753e3b)
4. Export the "subcategory" DataFrame as subcategory.csv

**02. Create the Campaign DataFrame**

1. Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

      - The "cf_id" column
      - The "contact_id" column
      - The "company_name" column
      - The "blurb" column, renamed to "description"
      - The "goal" column, converted to the float data type
      - The "pledged" column, converted to the float data type
      - The "outcome" column
      - The "backers_count" column
      - The "country" column
      - The "currency" column
      - The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
      - The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
      - The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
      - The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
      - The following image shows the "campaign" DataFrame:\
![image](https://github.com/mhosseinf/project2_gr5_Crowdfunding_ETL/assets/138610916/b0b73b61-877d-40e5-bd8d-3af83bf03985)

2. Export the campaign DataFrame as campaign.csv

**04. Create the Crowdfunding Database**

1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site.
2. Use the information from the ERD to create a table schema for each CSV file.
**Note**: Remember to specify the data types, primary keys, foreign keys, and other constraints.
3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql.
4. Create a new Postgres database, named crowdfunding_db.
5. Using the database schema, create the tables in the correct order to handle the foreign keys.
6. Verify the table creation by running a SELECT statement for each table.
7. Import each CSV file into its corresponding SQL table.
8. Verify that each table has the correct data by running a SELECT statement for each.

#Code File and Output.
