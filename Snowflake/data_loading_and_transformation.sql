CREATE database PowerBI;

create schema PBI_Data;

create table PBI_Dataset (
Year int,	Location string,	Area	int,
Rainfall	float, Temperature	float, Soil_type string,
Irrigation	string, yeilds	int,Humidity	float,
Crops	string,price	int,Season string
);

select * from PBI_Dataset;

create stage PowerBI.PBI_Data.pbi_stage
url = 's3://powerbiproject44/'
storage_integration = PBI_Integration




copy into PBI_Dataset 
from @pbi_stage
file_format = (type=csv field_delimiter=',' skip_header=1 )
on_error = 'continue'

list @pbi_stage

select year,count(*) count  from pbi_dataset
group by year 
order by year


create table agriculture as select * from pbi_dataset

select * from agriculture

// Increse rainfall

update agriculture
set rainfall = 1.1*rainfall

//reduce area by 10 perecntage
update agriculture 
set area = 0.9 * area

/// Group by 
/// Year b/w 2004 and 2009  y1
/// Year b/w 2010 and 2015  y2
/// Year b/w 2016 and 2019 - y3

Alter table agriculture 
add year_group STRING

select * from agriculture

update agriculture 
set YEAR_GROUP = 'Y1'
where year>=2004 and year<=2009


update agriculture 
set YEAR_GROUP = 'Y2'
where year>=2010 and year<=2015

update agriculture 
set YEAR_GROUP = 'Y3'
where year>=2016 and year<=2019

select * from agriculture

// Adding the new coloumn
// Min 255 Max 4103
// Rainfall 255 & 1200 - lOW
/// Rainfall 1200 2800 - Medium
//// rAINFALL 2000 - 4103

alter table agriculture 
add Rainfalls_Group STRING

select * from agriculture

update agriculture 
set rainfalls_group = 'LOW'
where rainfall>=255 and rainfall<1200


update agriculture 
set rainfalls_group = 'MEDIUM'
where rainfall>=1200 and rainfall<2800


update agriculture 
set rainfalls_group = 'HIGH'
where rainfall>=2800 and rainfall<4103

select * from agriculture 
