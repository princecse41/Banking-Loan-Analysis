# Banking-Loan-Analysis

## 🏦 Bank Loan Analysis & Power BI Dashboard

## 📌 Project Overview

This project focuses on analyzing **bank loan data** to understand loan applications, funded amounts, repayments, interest rates, borrower risk, loan performance, and good vs. bad loan distribution.

The project combines **SQL, Excel, and Power BI** to perform data preparation, analysis, KPI calculations, and interactive dashboard development.

The final dashboard provides a clear view of overall loan performance and allows users to analyze the data using filters such as **State, Grade, and Loan Purpose**.

---

## 🎯 Project Objectives

The main objectives of this project are:

* Analyze the total number of loan applications.
* Calculate total funded loan amounts.
* Analyze total amount received from borrowers.
* Calculate average interest rate.
* Analyze average Debt-to-Income (DTI) ratio.
* Compare MTD and MoM loan performance.
* Identify Good Loans and Bad Loans.
* Analyze loan applications by loan status.
* Analyze loan performance by state, grade, and purpose.
* Identify patterns in loan repayment and risk.
* Build an interactive Power BI dashboard for business reporting.

---

## 🛠️ Tools & Technologies

| Tool                | Purpose                                    |
| ------------------- | ------------------------------------------ |
| **SQL / MySQL**     | Data cleaning, transformation and analysis |
| **Microsoft Excel** | Data preparation and validation            |
| **Power BI**        | Dashboard development and visualization    |
| **DAX**             | KPI and calculated measure creation        |

---

## 📂 Dataset

The loan dataset contains information about loan applications, borrowers, loan characteristics, and repayment information.

### Important Columns

* `id` — Loan ID
* `address_state` — Borrower's state
* `application_type` — Application type
* `emp_length` — Employment length
* `emp_title` — Employment title
* `grade` — Loan grade
* `sub_grade` — Loan sub-grade
* `home_ownership` — Home ownership status
* `issue_date` — Loan issue date
* `last_credit_pull_date` — Last credit pull date
* `last_payment_date` — Last payment date
* `next_payment_date` — Next payment date
* `loan_status` — Loan status
* `member_id` — Customer/member ID
* `purpose` — Purpose of the loan
* `term` — Loan term
* `verification_status` — Verification status
* `annual_income` — Annual income
* `dti` — Debt-to-income ratio
* `installment` — Monthly installment
* `int_rate` — Interest rate
* `loan_amount` — Loan amount

---

# 🔄 Project Workflow

```text
Raw Loan Dataset
       ↓
Data Cleaning & Preparation
       ↓
Excel
       ↓
MySQL Analysis
       ↓
KPI & Business Calculations
       ↓
Power BI
       ↓
Interactive Bank Loan Dashboard
```

---

# 🧹 Data Preparation

The dataset was prepared before creating the dashboard.

Key preparation activities included:

* Checking missing values
* Checking duplicate records
* Correcting data types
* Converting date columns from text to DATE format
* Validating numerical columns
* Checking loan status values
* Preparing data for SQL analysis
* Creating calculated measures in Power BI

---

# 🗄️ SQL Analysis

<img width="1919" height="1019" alt="SQL Querry Screensort" src="https://github.com/user-attachments/assets/2551f501-8da3-4e73-953c-9eace674d9ba" />

SQL was used to perform business-oriented analysis on the loan dataset.

### Key SQL Analysis

* Total loan applications
* Monthly loan applications
* MTD loan applications
* Previous Month-to-Date (PMTD) analysis
* Total funded amount
* Total amount received
* Average interest rate
* Average DTI
* Loan applications by state
* Loan applications by grade
* Loan applications by purpose
* Loan status analysis
* Good loan vs. bad loan analysis

### Example SQL Query

```sql
SELECT
    MONTH(issue_date) AS month_number,
    MONTHNAME(issue_date) AS month_name,
    SUM(loan_amount) AS total_funded_amount
FROM Banking_loan
GROUP BY
    MONTH(issue_date),
    MONTHNAME(issue_date)
ORDER BY
    MONTH(issue_date);
```

---

# 📊 Dashboard KPIs

The Power BI dashboard contains the following major KPIs:

### 1. Total Loan Applications

Shows the total number of loan applications.

### 2. Total Funded Amount

Shows the total amount of money funded through approved loans.

### 3. Total Amount Received

Shows the total amount received from borrowers.

### 4. Average Interest Rate

Shows the average interest rate across loans.

### 5. Average DTI

Shows the average Debt-to-Income ratio of borrowers.

### 6. MTD Analysis

Month-to-Date performance is used to monitor current-month loan performance.

### 7. MoM Analysis

Month-over-Month comparison helps identify changes in loan performance compared with the previous month.

---

# 🟢 Good Loan vs 🔴 Bad Loan Analysis

Loans were categorized into **Good Loans** and **Bad Loans** based on loan status.

### Good Loan

Good loan categories include loans that are performing successfully, such as:

* Fully Paid
* Current

### Bad Loan

Bad loan categories include loans with poor performance, such as:

* Charged Off

The dashboard compares:

* Good Loan Applications
* Good Funded Amount
* Good Amount Received
* Bad Loan Applications
* Bad Funded Amount
* Bad Amount Received

This helps identify the overall quality of the loan portfolio.

---

# 📈 Dashboard Pages

## 1. Summary

The Summary dashboard provides an overall view of the loan portfolio.

### Key information:

* Total Loan Applications
* Total Funded Amount
* Total Amount Received
* Average Interest Rate
* Average DTI
* Good Loan Analysis
* Bad Loan Analysis
* Loan Status Analysis

### Filters:

* State
* Grade
* Purpose

---

## 2. Overview

The Overview page provides deeper analysis of loan performance using different charts and visualizations.

Potential analysis includes:

* Monthly loan trends
* State-wise loan distribution
* Loan purpose analysis
* Grade-wise loan performance
* Loan amount trends

---

## 3. Details

The Details page provides a more granular view of the underlying loan information.

It can be used to drill down into individual loan records and analyze borrower and loan-level information.

---

# 📌 Key Business Insights

The dashboard helps answer important business questions such as:

* How many loans have been issued?
* How much money has been funded?
* How much money has been received?
* What percentage of loans are good loans?
* What percentage of loans are bad loans?
* Which states have the highest loan activity?
* Which loan grades have higher risk?
* What are the most common loan purposes?
* How does the average interest rate change over time?
* How does borrower DTI affect loan performance?
* How is the current month's performance compared with the previous month?

---

# 📷 Dashboard Preview

## Summary Dashboard

<img width="1456" height="795" alt="Summary Screenshot" src="https://github.com/user-attachments/assets/36e7b93a-c6d0-4335-99a5-1c12989fe3a3" />

## OverView Dashboard

<img width="1447" height="787" alt="Overview screenshot" src="https://github.com/user-attachments/assets/3fc0deba-0fdb-4281-94ac-5398fba0c192" />

## Detaild

<img width="1439" height="788" alt="Detaild Screenshot" src="https://github.com/user-attachments/assets/047c4c2e-46a6-4b93-8f1c-c0c2cf295510" />

---

# 💡 Skills Demonstrated

This project demonstrates practical skills in:

* SQL
* MySQL
* Excel
* Power BI
* DAX
* Data Cleaning
* Data Transformation
* Data Analysis
* KPI Development
* Data Visualization
* Business Intelligence
* Dashboard Development
* Financial / Loan Analytics

---

# 🚀 Conclusion

This project demonstrates how **SQL, Excel, and Power BI** can be combined to transform raw loan data into meaningful business insights.

The interactive dashboard enables users to monitor loan applications, funding, repayments, interest rates, borrower risk, and loan quality, supporting better understanding of overall loan portfolio performance.

---

## 👨‍💻 Project Author

**Prince Rajwar**

**Aspiring Data Analyst**

**B.Tech – Computer Science & Engineering**

**Linkedin:-https://www.linkedin.com/in/prince-rajwar-cse**

### Tools & Technologies

`SQL` • `MySQL` • `Excel` • `Power BI` • `DAX` • `Data Analysis` • `Data Visualization`

---

