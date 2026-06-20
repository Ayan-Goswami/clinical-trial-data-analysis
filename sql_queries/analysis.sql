-- Clinical Trial Data Analysis Queries
-- Clinical Trial Data Analysis

SELECT *
FROM clinical_trials;

SELECT COUNT(*)
FROM clinical_trials;

SELECT AVG(age)
FROM clinical_trials;

SELECT treatment_group,
       COUNT(*) AS patients
FROM clinical_trials
GROUP BY treatment_group;

SELECT outcome,
       COUNT(*) AS total
FROM clinical_trials
GROUP BY outcome;
