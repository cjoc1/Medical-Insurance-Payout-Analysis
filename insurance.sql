--Business Questions 
--Stat Description
-- Category 1: Demographic Factors(age , sexed region)
SELECT
    COUNT(*) AS total_count,
    AVG(charges) AS average,
    SUM(charges) AS sum,
    COUNT(charges) AS count,
    MIN(charges) AS min,
    MAX(charges) AS max,
    VARIANCE(charges) AS variance,
    STDDEV_POP(charges) AS standard_deviation
FROM insurance;

/*
1. What is the average total medical expense charged for each age group?
*/

SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 34 THEN '26-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 55 THEN '45-55'
        ELSE '56+'
    END AS age_group,
    AVG(charges) AS avg_expense
FROM insurance
GROUP BY age_group
ORDER BY age_group;

/*
Note: Medical expense increases as the age increases.
*/

/*
2. How does sex affect the medical expenses charged?*/
SELECT
    CASE
        WHEN sex = 'female' THEN 'female'
        WHEN sex = 'male' THEN 'male'
        else 'other'
    END AS sex_group,
    AVG(charges) AS avg_expense
FROM insurance
GROUP BY sex_group


/* What are the total medical expenses based on both sex and age group?*/
SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 34 THEN '26-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 55 THEN '45-55'
        ELSE '56+'
    END AS age_group,
    CASE
        WHEN sex = 'female' THEN 'female'
        WHEN sex = 'male' THEN 'male'
        ELSE 'other'
    END AS sex_group,
    AVG(charges) AS total_expense
FROM insurance
GROUP BY age_group, sex_group
ORDER BY age_group, sex_group;

/*
Note: NOT a large difference, however the medical expense is higher for males than females
*/

/*What is the total medical expense charged for each region?*/
SELECT DISTINCT region
FROM insurance;

/*Note: Ranked highest to lowest expenses: southeast, northeast, northwest and southwest*/  

/*What are the total medical expenses based on age group, sex, and region? */  
SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 34 THEN '26-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 55 THEN '45-55'
        ELSE '56+'
    END AS age_group,
    CASE
        WHEN sex = 'female' THEN 'female'
        WHEN sex = 'male' THEN 'male'
        ELSE 'other'
    END AS sex_group,
    CASE 
        WHEN region = 'southwest' THEN 'southwest'
        WHEN region = 'southeast' THEN 'southeast'
        WHEN region = 'northwest' THEN 'northwest'
        WHEN region = 'northeast' THEN 'northeast'   
        ELSE 'other'
    END AS region_group,
    AVG(charges) AS avg_expense
FROM insurance
GROUP BY age_group, sex_group, region_group
ORDER BY age_group, sex_group, region_group, avg_expense DESC;
-- Category 1: Smoking and BMI
/*What are the total medical expenses based on different BMI groups and smoking statuses?*/

SELECT
    CASE
        WHEN smoker = 'yes' THEN 'Smoker'
        WHEN smoker = 'no' THEN 'Non_Smoker'
        ELSE 'NA'
    END AS smoker_status,
    AVG(charges) AS ave_expense
FROM insurance
GROUP BY smoker_status
ORDER BY smoker_status DESC, ave_expense DESC;

/* Smokers ’s expense were 3.8 times higher than non-smokers*/ 

SELECT
    CASE
        WHEN bmi < 18.5 THEN 'Underweight'
        WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
        WHEN bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
        ELSE 'Obesity'
    END AS bmi_group,
    AVG(charges) AS ave_expense
FROM insurance
GROUP BY bmi_group
ORDER BY ave_expense DESC;
/* The higher the BMI the higher the expenses*/
-- Category 1: Familial Status
/*What are the total medical expenses for policies with no children versus those with children?*/
SELECT 
    CASE 
        WHEN children >= 1 THEN 'Have Children'
        WHEN children = 0 THEN 'No Children'
        ELSE 'NA'
    END AS familial_status,
    AVG(charges) AS ave_expense
FROM insurance
GROUP BY familial_status
ORDER BY ave_expense DESC;
/*polices with children cost more than no children*/

/*How do the age groups of parents affect the number of visits and, consequently, the total medical expenses?*/
SELECT 
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 34 THEN '26-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 55 THEN '45-55'
        ELSE '56+'
    END AS age_group,
    CASE 
        WHEN children >= 1 THEN 'Have Children'
        WHEN children = 0 THEN 'No Children'
        ELSE 'NA'
    END AS familial_status,
    AVG(charges) AS ave_expense
FROM insurance
GROUP BY familial_status,age_group
ORDER BY familial_status, ave_expense DESC;
/*Previosuly, as the age increase orderly, the expense increase. However within age groups with children, the age group is increasing in non-orderly. Ranking(highest to lowest): 56+, 45-55, 35-44, 18-25, 26-34 */
