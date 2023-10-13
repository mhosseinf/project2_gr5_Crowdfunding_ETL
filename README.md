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

Extract and transform the "crowdfunding.xlsx" Excel data to create a category DataFrame that has the columns "category_id" and "category".\
      - "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories\
      - "category" column that contains only the category titles
