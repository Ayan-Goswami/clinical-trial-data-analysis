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

