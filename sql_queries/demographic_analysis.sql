-- ==========================================
-- DEMOGRAPHIC ANALYSIS
-- Stroke Prediction Dataset
-- ==========================================

-- Average Age by Stroke Status
SELECT
stroke,
ROUND(AVG(age),2) AS average_age
FROM stroke_data
GROUP BY stroke;

-- Gender and Stroke Risk
SELECT
gender,
SUM(stroke) AS stroke_cases,
COUNT(*) AS total_patients,
ROUND((SUM(stroke)::numeric / COUNT(*))*100,2) AS stroke_rate
FROM stroke_data
GROUP BY gender;

-- Smoking Status Distribution
SELECT
smoking_status,
COUNT(*) AS patients
FROM stroke_data
GROUP BY smoking_status
ORDER BY patients DESC;

-- Smoking Status and Stroke Risk
SELECT
smoking_status,
COUNT(*) AS total_patients,
SUM(stroke) AS stroke_cases,
ROUND((SUM(stroke)::numeric / COUNT(*))*100,2) AS stroke_rate
FROM stroke_data
GROUP BY smoking_status
ORDER BY stroke_rate DESC;

-- Average Age by Smoking Status
SELECT
smoking_status,
ROUND(AVG(age),2) AS average_age
FROM stroke_data
GROUP BY smoking_status
ORDER BY average_age DESC;

-- Age Group and Stroke Risk
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

-- Residence Type Distribution
SELECT
residence_type,
COUNT(*) AS patients
FROM stroke_data
GROUP BY residence_type;
