create database banking_loan;
use banking_loan

-- Total Loan Applications 
CREATE VIEW Total_Application as
select count(*) as Total_Application from banking_loan


-- Total Loan Applications
select * from Total_Application

-- MTD Loan Applications
create view MTD_Application as
select count(id) as MTD_Application from Banking_loan
where MONTH(issue_date) = 12 and year(issue_date) = 2021

-- MTD Loan Applications
select* from MTD_Application

-- PMTD Loan Applications
create or replace view PMTD_Application as
select count(id) as PMTD_Application from banking_loan
where Month(issue_date) = 11

-- PMTD Loan Applications
select * from PMTD_Application

-- Total Funded Amount
create view Total_funded_amount as
select sum(loan_amount) as Total_Funded_Amount from banking_loan

-- Total Funded Amount
select * from Total_funded_amount

-- MTD Total Funded Amount
create view  MTD_Funded_Amount as
select sum(loan_amount) as MTD_Funded_Amount from banking_loan
where month(issue_date) = 12

-- MTD Total Funded Amount
select * from  MTD_Funded_Amount

# PMTD Total Funded Amount
create view PMTD_Funded_Amount  as
select sum(loan_amount) as PMTD_Funded_Amount from banking_loan
where month(issue_date) = 11

# PMTD Total Funded Amount
select * from PMTD_Funded_Amount

-----------

# Total Amount Received
create view Total_Amount_Received as
select sum(total_payment) as Total_Amount_Received from banking_loan

# Total Amount Received
select * from Total_Amount_Received

# MTD Total Amount Received
create view MTD_Amouunt_Recived as
select sum(total_payment) as MTD_Amouunt_Recived from banking_loan
where month(issue_date) = 12 and year(issue_date) = 2021

# MTD Total Amount Received
select * from MTD_Amouunt_Recived

# PMTD Total Amount Received
create view PMTD_Amouunt_Recived as
select sum(total_payment) as PMTD_Amouunt_Recived from banking_loan
where month(issue_date) = 11 

# PMTD Total Amount Received
select * from PMTD_Amouunt_Recived 

---------

# Average Interest Rate
create view Average_Interest_Rate as
select avg(int_rate) * 100  as Average_Interest_Rate from banking_loan

# Average Interest Rate
select * from Average_Interest_Rate

# MTD Average Interest Rate
create view MTD_Average_Interest_Rate as
SELECT AVG(int_rate) *100 as MTD_Average_Interest_Rate  FROM BANKING_LOAN
WHERE MONTH(issue_date)=12

# MTD Average Interest Rate
select * from MTD_Average_Interest_Rate

# PMTD Average Interest Rate
create view PMTD_Average_Interest_Rate as
SELECT AVG(int_rate) *100 as PMTD_Average_Interest_Rate  FROM BANKING_LOAN
WHERE MONTH(issue_date)=11

# PMTD Average Interest Rate
select * from PMTD_Average_Interest_Rate

-----------
# Avg DTI
create view Avg_DTI as
select avg(dti) * 100 as Avg_DTI  from banking_loan

select * from Avg_DTI

# MTD Avg DTI
create view MTD_Avg_DTI as
select avg(dti) * 100 as MTD_Avg_DTI FROM BANKING_LOAN
WHERE MONTH(issue_date)=12 

# MTD Avg DTI
select * from MTD_Avg_DTI

# PMTD Avg DTI
create view PMTD_Avg_DTI as
select avg(dti) * 100 as PMTD_Avg_DTI FROM BANKING_LOAN
WHERE MONTH(issue_date)=11 

# PMTD Avg DTI
select * from PMTD_Avg_DTI

-----------------

# GOOD LOAN ISSUED

# Good Loan Percentage
create view Good_Loan_Percentage as
SELECT (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
COUNT(id) AS Good_Loan_Percentage
FROM banking_loan

select * from Good_Loan_Percentage

# Good Loan Applications
create or replace view Good_Loan_Application as
select count(id)  as Good_Loan_Application from banking_loan
where loan_status='Fully Paid' or loan_status='Current'

select * from Good_Loan_Application

# Good Loan Funded Amount
create view Good_loan_funded_amount as 
select sum(loan_amount) as Good_loan_funded_amount from banking_loan
where loan_status='Fully Paid' or Loan_status='Current'

select * from Good_loan_funded_amount

# Good Loan Amount Received
create view Good_loan_amount_received as 
select sum(total_payment) as Good_loan_amount_received from banking_loan
where loan_status='Fully Paid' or Loan_status='Current'

select * from Good_loan_amount_received

-----------

# BAD LOAN ISSUED

# Bad Loan Percentage
create view Bad_Loan_Percentage as
select (count(case when loan_status='Charged Off' then id end) * 100) / count(id) as Bad_Loan_Percentage
from banking_loan

select * from Bad_Loan_Percentage

# Bad Loan Applications
create view Bad_Loan_Application as
select count(id) as Bad_Loan_Application from banking_loan
where loan_status = 'Charged Off'

select * from  Bad_Loan_Application

# Bad Loan Funded Amount
create view Bad_Loan_Funded_Amount as
select sum(loan_amount) as Bad_Loan_Funded_Amount from banking_loan
where loan_status='Charged Off'

select * from Bad_Loan_Funded_Amount

# Bad Loan Amount Received
create view Bad_Loan_Amount_Recived as
select sum(total_payment) as Bad_Loan_Amount_Recived from banking_loan
where loan_status='Charged Off'

select * from Bad_Loan_Amount_Recived

------------

# Loan Status
create view Loan_Status as
select loan_status,
       count(id) Loan_Count,
       sum(loan_amount) Total_Funded_Amount,
       sum(total_payment) Total_Recived_Amount,
       avg(int_rate * 100) Interest_Amount,
       avg(dti * 100) DTI
from banking_loan
group by loan_status

select * from Loan_Status

# BANK LOAN REPORT | OVERVIEW

# MONTH WISE ANALYSIS
CREATE VIEW Bank_Loan_Report_Month_wise as
select month(issue_date) as month_number,
       monthname(issue_date) as Month_Name,
       sum(loan_amount) as Total_Funded_Amount,
       sum(total_payment) as Total_Payment_Recived
from banking_loan
GROUP BY month_number,  Month_Name
ORDER BY month_number

select * from Bank_Loan_Report_Month_wise

# STATE WISE ANALYSIS
create view State_Wise_Analysis as
select address_state as State,
       count(id) as Total_Application_Loan,
       sum(loan_amount) as Total_Funded_Amount,
       sum(total_payment) as Total_Recived_Amount
from banking_loan
group by State
order by state

select * from State_Wise_Analysis

# TERM WISE ANALYSIS
create view Term_Wise_Analysis as
select term as Term,
       count(id) as Total_Loan_Application,
       sum(loan_amount) as Total_Funded_Amount,
       sum(total_payment) as Total_Recived_Payment
from banking_loan
group by Term
order by term 

select * from Term_Wise_Analysis

# EMPLOYEE LOAN  DURATION
create view Employee_Loan_Duration as
select emp_length as Employee_Duration,
       count(id) as Total_Loan_Application,
       sum(loan_amount) as Total_Loan_Amount,
       sum(total_payment) as Total_Recived_Amount
from banking_loan
group  by emp_length
order by emp_length

select * from Employee_Loan_Duration

# PURPOSE
create view Purpose_of_Taking_Loan as
select purpose as Purpose,
       count(id) as Total_Loan_Application,
       sum(loan_amount) as Total_Loan_Amount,
       sum(total_payment) as Total_Recived_Amount
from banking_loan
group by Purpose
order by purpose

select * from Purpose_of_Taking_Loan

# HOME OWNERSHIP
create view Home_Ownership as
select home_ownership as Home_Ownership,
       count(id) as Total_Loan_Application,
       sum(loan_amount) as Total_Loan_Amount,
       sum(total_payment) as Total_Recived_Amount
from banking_loan
group by Home_Ownership
order by Home_Ownership

select * from Home_Ownership

SELECT @@hostname AS Server_Name,
       @@port AS Port,
       @@version AS MySQL_Version,
       CURRENT_USER() AS User_Name;



select * from Banking_loan