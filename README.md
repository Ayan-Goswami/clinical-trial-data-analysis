# Clinical Trial Data Analysis

## Project Overview

This project analyzes clinical trial data using SQL and PostgreSQL to identify trends in patient demographics, treatment effectiveness, and clinical outcomes.

## Dataset

Stroke Prediction Healthcare Dataset

### Features

* Age
* Gender
* Hypertension
* Heart Disease
* Smoking Status
* BMI
* Average Glucose Level
* Stroke Outcome

### Dataset Size

* 5,110 patient records

## Initial Findings

* Total Patients: 5,110
* Stroke Cases: 249
* Non-Stroke Cases: 4,861
* Stroke Prevalence: 4.87%

## Key Findings

### Stroke Distribution

Out of 5,110 patient records:

* 4,861 patients (95.13%) did not experience a stroke
* 249 patients (4.87%) experienced a stroke

### Age and Stroke Risk

Average age by stroke status:

| Stroke Status | Average Age |
| ------------- | ----------- |
| No Stroke     | 41.97 years |
| Stroke        | 67.73 years |

Patients who experienced a stroke were significantly older on average, suggesting age is a major risk factor.

### Hypertension and Stroke

| Hypertension | Patients | Stroke Cases |
| ------------ | -------- | ------------ |
| No           | 4,612    | 183          |
| Yes          | 498      | 66           |

Although only 498 patients had hypertension, they accounted for 66 stroke cases. This suggests hypertension may be strongly associated with increased stroke risk.

### Smoking Status Distribution

| Smoking Status  | Patients |
| --------------- | -------- |
| Never Smoked    | 1,892    |
| Unknown         | 1,544    |
| Formerly Smoked | 885      |
| Smokes          | 789      |

Most patients reported never smoking, while a large number of records contained unknown smoking status values.

### Gender and Stroke Risk

| Gender | Stroke Cases | Total Patients | Stroke Rate |
|----------|----------:|----------:|----------:|
| Male | 108 | 2115 | 5.11% |
| Female | 141 | 2994 | 4.71% |

Although females represented a larger proportion of the dataset, males showed a slightly higher stroke rate (5.11% vs 4.71%).

### Smoking Status and Stroke Risk

| Smoking Status | Stroke Rate |
|---------------|------------:|
| Formerly Smoked | 7.91% |
| Smokes | 5.32% |
| Never Smoked | 4.76% |
| Unknown | 3.04% |

Former smokers showed the highest observed stroke rate in the dataset. This relationship may be influenced by age and other health factors, requiring further investigation.

### Smoking Status, Age and Stroke Risk

| Smoking Status | Stroke Rate | Average Age |
|---------------|------------:|------------:|
| Formerly Smoked | 7.91% | 54.93 |
| Smokes | 5.32% | 47.10 |
| Never Smoked | 4.76% | 46.74 |
| Unknown | 3.04% | 30.23 |

Former smokers exhibited the highest stroke rate in the dataset. However, they also had the highest average age, suggesting age may be a contributing factor to the increased stroke prevalence observed in this group.

### Age Group and Stroke Risk

| Age Group | Stroke Rate |
|-----------|------------:|
| 70+ | 17.75% |
| 50–69 | 6.53% |
| 30–49 | 1.30% |
| Under 30 | 0.13% |

Stroke prevalence increased sharply with age. Patients aged 70 and above exhibited the highest stroke rate (17.75%), while patients under 30 showed a very low stroke rate (0.13%). Age appears to be the strongest risk factor identified in this analysis.

## Current Progress

✅ PostgreSQL database created
✅ Dataset imported
✅ Database created
✅ SQL queries written
✅ Insights generated
✅ README started

🚧 Advanced analysis in progress
🚧 Data visualization pending
🚧 Dashboard development pending
🚧 Final report pending

🚧 Advanced analysis in progress


## Objectives

- Analyze patient demographics
- Evaluate treatment performance
- Compare treatment outcomes
- Practice SQL-based data analysis
- Build a healthcare analytics portfolio project

## Tools Used

- PostgreSQL
- SQL
- GitHub

## Project Structure

clinical-trial-data-analysis
│
├── data
├── sql_queries
├── results
└── README.md

## Project Status

🚧 In Progress

## Author

Ayan Goswami
M.Sc. Biotechnology
Aspiring Data Analyst
