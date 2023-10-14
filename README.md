# project2_gr5_Crowdfunding_ETL

**Group Members:**
- Lakna Chathurani Premasinghe
- Hossein Falsafi
- Claive Taguba

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

**03. Create the Contacts DataFrame**

The last part of the Jupyter code creates Contacts DataFrame from a given Excel file. The code offers two options to achieve this, each described below.

## Option 1: Using Python Dictionary Methods

In this option, we read the data from the Excel file using Pandas, specifically using the `pd.read_excel` function with the `header=3` parameter. The code takes the following steps:

### 1-1. Reading the Data into a Pandas DataFrame

The provided Excel file is read into a Pandas DataFrame, skipping the first three rows.

### 1-2. Converting Data

The code extracts and converts JSON data from each row's 'contact_info' column into a Python dictionary.

### 1-3. Creating Lists

It creates two lists, one for column names and another for row values. These lists are used to create a new DataFrame.

### 1-4. Data Transformation

The code creates a 'first_name' and 'last_name' column by splitting the 'name' column using a space as the delimiter.

### 1-5. Reordering Columns

The columns are reordered as 'contact_id', 'first_name', 'last_name', and 'email'.

### 1-6. Exporting Data

The final DataFrame is exported as a CSV file in the 'output' directory with the filename 'contacts1.csv'.

## Option 2: Using Regular Expressions

In this option, we read the data from the Excel file and extract information using regular expressions. The code includes the following steps:

### 2-1. Reading the Data

The Excel data is loaded into a Pandas DataFrame, skipping the first three rows.

### 2-2. Extracting Contact ID

The code uses regular expressions to extract the four-digit contact ID and adds it to a new 'contact_id' column.

### 2-3. Converting Data Types

It converts the 'contact_id' column to an int64 data type.

### 2-4. Extracting Name

Regular expressions extract the contact's name and add it to a new 'name' column.

### 2-5. Extracting Email

Regular expressions extract email addresses and create an 'email' column.

### 2-6. Creating a Clean DataFrame

A new DataFrame is created with 'contact_id', 'name', and 'email' columns.

### 2-7. Splitting Names

The 'name' column is split into 'first_name' and 'last_name'.

### 2-8. Reordering Columns

The columns are reordered as 'contact_id', 'first_name', 'last_name', and 'email'.

### 2-9. Exporting Data

The final DataFrame is exported as a CSV file in the 'output' directory with the filename 'contacts2.csv'.

**04. Create the Crowdfunding Database**

1. Inspect the four CSV files, and then sketch an ERD of the tables by using [QuickDBD](https://www.quickdatabasediagrams.com/) to an external site.
2. Use the information from the ERD to create a table schema for each CSV file.\
**Note**: Remember to specify the data types, primary keys, foreign keys, and other constraints.
3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql.
4. Create a new Postgres database, named crowdfunding_db.
5. Using the database schema, create the tables in the correct order to handle the foreign keys.
6. Verify the table creation by running a SELECT statement for each table.
7. Import each CSV file into its corresponding SQL table.
8. Verify that each table has the correct data by running a SELECT statement for each.

# Code File and Output.
- [ETL_Mini_Project_gr5_HF_CT_LP.ipynb](https://github.com/mhosseinf/project2_gr5_Crowdfunding_ETL/blob/main/Crowdfunding_ETL/ETL_Mini_Project_gr5_HF_CT_LP.ipynb), is for analysis.
- [output](https://github.com/mhosseinf/project2_gr5_Crowdfunding_ETL/tree/main/Crowdfunding_ETL/output) : Imported CSV files
- [Resources](https://github.com/mhosseinf/project2_gr5_Crowdfunding_ETL/tree/main/Crowdfunding_ETL/Resources): Used data sets for the Analysis. 


