-- Clinical Trial Data Analysis Queries

-- Stroke Dataset Analysis

-- Total Records
SELECT COUNT(*)
FROM stroke_data;

-- Stroke Distribution
SELECT stroke,
COUNT(*) AS patients
FROM stroke_data
GROUP BY stroke;

-- Average Age by Stroke Status
SELECT
stroke,
ROUND(AVG(age),2) AS average_age
FROM stroke_data
GROUP BY stroke;

-- Smoking Status Distribution
SELECT
smoking_status,
COUNT(*) AS patients
FROM stroke_data
GROUP BY smoking_status
ORDER BY patients DESC;

-- Hypertension vs Stroke
SELECT
hypertension,
COUNT(*) AS patients,
SUM(stroke) AS stroke_cases
FROM stroke_data
GROUP BY hypertension;

-- Which gender has the higher stroke rate?
SELECT
    gender,
    SUM(stroke) AS stroke_cases,
    COUNT(*) AS total_patients,
    ROUND((SUM(stroke)::numeric / COUNT(*))*100,2) AS stroke_rate
FROM stroke_data
GROUP BY gender;

-- Which smoking category has the highest stroke rate?
SELECT
    smoking_status,
    COUNT(*) AS total_patients,
    SUM(stroke) AS stroke_cases,
    ROUND((SUM(stroke)::numeric / COUNT(*))*100,2) AS stroke_rate
FROM stroke_data
GROUP BY smoking_status
ORDER BY stroke_rate DESC;

-- whether former smokers are older on average.
SELECT
    smoking_status,
    ROUND(AVG(age),2) AS average_age
FROM stroke_data
GROUP BY smoking_status
ORDER BY average_age DESC;

--"How does stroke risk change across age groups?"
SELECT
    CASE
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 49 THEN '30-49'
        WHEN age BETWEEN 50 AND 69 THEN '50-69'
        ELSE '70+'
    END AS age_group,
    COUNT(*) AS total_patients,
    SUM(stroke) AS stroke_cases,
    ROUND((SUM(stroke)::numeric / COUNT(*))*100,2) AS stroke_rate
FROM stroke_data
GROUP BY age_group
ORDER BY stroke_rate DESC;

