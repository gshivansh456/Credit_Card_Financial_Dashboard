-- SQL Query to create and import data from csv files:

-- 0. Create a database 
CREATE DATABASE ccdb;
-- 1. Create cc_detail table

CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- 2. Create cust_detail table

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

-- 3. Copy csv data into SQL (remember to update the file name and file location in below query)

CREATE TABLE `cust_detail` (
  `ï»¿Client_Num` int DEFAULT NULL,
  `Customer_Age` int DEFAULT NULL,
  `Gender` text,
  `Dependent_Count` int DEFAULT NULL,
  `Education_Level` text,
  `Marital_Status` text,
  `state_cd` text,
  `Zipcode` int DEFAULT NULL,
  `Car_Owner` text,
  `House_Owner` text,
  `Personal_loan` text,
  `contact` text,
  `Customer_Job` text,
  `Income` int DEFAULT NULL,
  `Cust_Satisfaction_Score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- check the cc_detail table 
SELECT *FROM ccdb.cc_detail

-- copy cc_detail table from credit_card
CREATE TABLE cc_detal AS
SELECT* FROM credit_card;

-- copy cust_detail table from customer

CREATE TABLE cust_detal AS
SELECT* FROM customer;