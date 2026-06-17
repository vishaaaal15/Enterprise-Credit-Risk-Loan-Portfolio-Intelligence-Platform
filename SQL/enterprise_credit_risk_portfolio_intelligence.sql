CREATE DATABASE CreditRiskDB;
Use CreditRiskDB;
CREATE TABLE LoanPortfolio (
    Customer_ID BIGINT,
    Loan_Amount INT,
    Annual_Income INT,
    Credit_Score INT,
    Employment_Years INT,
    Loan_Type VARCHAR(50),
    Region VARCHAR(20),
    Risk_Category VARCHAR(20),
    DTI_Ratio FLOAT,
    Default_Flag INT
);
SELECT COUNT(*) AS Total_Rows
FROM LoanPortfolio;

SELECT
SUM(Loan_Amount) AS Total_Portfolio_Exposure
FROM LoanPortfolio;

SELECT
COUNT(*) AS Total_Customers
FROM LoanPortfolio;

SELECT
ROUND(AVG(Loan_Amount),2) AS Avg_Loan_Amount
FROM LoanPortfolio;

SELECT
Risk_Category,
COUNT(*) AS Customers
FROM LoanPortfolio
GROUP BY Risk_Category
ORDER BY Customers DESC;

SELECT
Risk_Category,
SUM(Loan_Amount) AS Exposure
FROM LoanPortfolio
GROUP BY Risk_Category
ORDER BY Exposure DESC;

SELECT
ROUND(
100.0 * SUM(Default_Flag) / COUNT(*),
2
) AS Default_Rate
FROM LoanPortfolio;

SELECT
Region,
SUM(Loan_Amount) AS Exposure
FROM LoanPortfolio
GROUP BY Region
ORDER BY Exposure DESC;

SELECT
Region,
ROUND(
100.0 * SUM(Default_Flag) / COUNT(*),
2
) AS Default_Rate
FROM LoanPortfolio
GROUP BY Region
ORDER BY Default_Rate DESC;

SELECT
Loan_Type,
SUM(Loan_Amount) AS Exposure
FROM LoanPortfolio
GROUP BY Loan_Type
ORDER BY Exposure DESC;

SELECT
Loan_Type,
ROUND(
100.0 * SUM(Default_Flag) / COUNT(*),
2
) AS Default_Rate
FROM LoanPortfolio
GROUP BY Loan_Type
ORDER BY Default_Rate DESC;

SELECT
Customer_ID,
Loan_Amount
FROM LoanPortfolio
ORDER BY Loan_Amount DESC;

SELECT
COUNT(*) AS Customers,
SUM(Loan_Amount) AS Total_Exposure,
AVG(Loan_Amount) AS Avg_Loan,
AVG(Credit_Score) AS Avg_Credit_Score,
SUM(Default_Flag) AS Defaults
FROM LoanPortfolio;
