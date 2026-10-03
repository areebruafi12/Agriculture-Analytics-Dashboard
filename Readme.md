# Agriculture Analytics Dashboard

## Overview

This project is a basic end-to-end data analytics project focused on agriculture data.

The project covers the complete flow of moving data from **AWS S3 to Snowflake**, performing data transformations using **Snowflake SQL**, and creating an interactive dashboard using **Power BI**.

The final report was published to **Power BI Service**.

## Tech Stack

- **AWS S3** – Used to store the dataset
- **Snowflake** – Used for data loading and data transformation
- **SQL** – Used to perform data transformations in Snowflake
- **Power BI** – Used to create the analytics dashboard
- **Power BI Service** – Used to publish the final report

## Project Workflow

```text
Dataset
   ↓
AWS S3
   ↓
Snowflake Storage Integration
   ↓
Snowflake
   ↓
SQL Transformations
   ↓
Power BI
   ↓
Power BI Service
```

## AWS S3

The dataset was uploaded to an Amazon S3 bucket.

An IAM role was created to provide the required access between AWS S3 and Snowflake.

## Snowflake

A Snowflake Storage Integration and External Stage were created to establish the connection between Snowflake and AWS S3.

The dataset was then loaded from S3 into Snowflake.

The Snowflake work included:

- Creating the database and schema
- Creating the dataset table
- Creating the storage integration
- Creating the external stage
- Loading data from S3 using `COPY INTO`
- Validating the loaded data
- Performing SQL-based transformations

## Data Transformations

The following transformations were performed using Snowflake SQL:

- Increased rainfall values by 10%
- Reduced area values by 10%
- Created year groups:
  - Y1: 2004–2009
  - Y2: 2010–2015
  - Y3: 2016–2019
- Created rainfall groups:
  - Low
  - Medium
  - High

## Power BI Dashboard

The transformed Snowflake data was connected to Power BI.

The report contains four analysis pages:

- Rainfall Analysis
- Temperature Analysis
- Humidity Analysis
- Yield Analysis

The completed report was published to Power BI Service.

## Repository Structure

```text
Agriculture-Analytics-Dashboard/
│
├── README.md
│
├── data/
│   └── data_season.csv
│
├── snowflake/
│   ├── s3_snowflake_connection.sql
│   └── data_loading_and_transformation.sql
│
└── powerbi/
    └── Agriculture.pbix
```

## Files

### `data/`

Contains the agriculture dataset used for the project.

### `snowflake/`

Contains the Snowflake SQL scripts used for:

- AWS S3 and Snowflake connection
- Data loading
- Data transformation

### `powerbi/`

Contains the Power BI report file.

## Key Learning

This project helped me gain hands-on experience with an end-to-end analytics workflow using AWS S3, Snowflake, SQL, and Power BI.

It also helped me understand how data can move from cloud storage through a data warehouse and finally into a business intelligence dashboard.

## Note

This is a basic analytics project created for hands-on learning and practical experience with the tools and workflow.

AWS credentials, passwords, private keys, and other sensitive information are not included in this repository.
