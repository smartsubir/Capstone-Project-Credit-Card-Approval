use c_p_credit;
SELECT * FROM Cp_credit;

# 1. Group the customers based on their income type and find the average of their annual income.
SELECT Type_Income, AVG(Annual_income) AS AverageIncome
FROM Cp_credit
GROUP BY Type_Income;

# 2. Find the female owners of cars and property.
SELECT *
FROM Cp_credit
WHERE GENDER = 'F'
  AND Car_Owner = 'Y'
  AND Propert_Owner = 'Y';

# 3. Find the male customers who are staying with their families.
SELECT *
FROM Cp_credit
WHERE GENDER = 'M'
  AND Family_Members > 1;
  
# 4. Please list the top five people having the highest income.
SELECT*
FROM Cp_credit
ORDER BY Annual_income DESC
LIMIT 5;

# 5. How many married people are having bad credit?
SELECT COUNT(*)
FROM Cp_credit
WHERE Marital_status = 'Married' AND label = 0;

# 6. What is the highest education level and what is the total count?
SELECT EDUCATION AS HighestEducation, COUNT(*) AS TotalCount
FROM Cp_credit
GROUP BY EDUCATION
ORDER BY TotalCount DESC
LIMIT 1;

# 7. Between married males and females, who is having more bad credit?
SELECT Marital_status, GENDER, COUNT(*) AS BadCreditCount
FROM Cp_credit
WHERE label = 0
  AND Marital_status = 'Married'
GROUP BY Marital_status, GENDER;



