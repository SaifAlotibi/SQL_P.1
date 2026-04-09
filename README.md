<<<<<<< HEAD
## 🚀 Introduction

Data is the key to smarter career decisions. This project explores real job market data to uncover 💰 salary trends and 🔥 in-demand skills in data analyst roles.

## 📊 Background

The data job market is growing fast, but it’s hard to know which skills truly matter. This project analyzes job postings to reveal what employers actually look for and how it impacts salaries.

## 🛠️ Tools I Used
🐘 PostgreSQL — database management
💻 SQL — data analysis & querying
## 🔍 Analysis

Using SQL queries, I explored job postings to identify:

💰 Highest-paying data analyst roles
🔥 Most in-demand skills
📈 Relationship between skills and salary
-
-
-
![Top Paying Data Analyst Jobs](<assets/Top paying data analyst jobs.png>)
-
-
-
**Top Paying Data Analyst Jobs**
```sql
-- SQLBook: Code
--What The Highst salary job ?

SELECT
  job_posted_date,
  salary_year_avg,
  job_title,
  job_location,
  job_via,
  name AS company_name

FROM 
  job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
  salary_year_avg  IS NOT NULL AND
  job_title_short= 'Data Analyst' AND
  job_location = 'Anywhere'

ORDER BY 
   
  salary_year_avg DESC,
  LIMIT 10;
```
*
*
*
## 📊 Most In-Demand Skills

| Skill     | Demand Count |
|----------|-------------|
| SQL      | 31,980      |
| Excel    | 20,549      |
| Python   | 17,327      |
| Tableau  | 14,103      |
| Power BI | 13,450      |
| R        | 7,348       |
| SAS      | 6,146       |

```sql
-- SQLBook: Code
--What most in-demand skills for Data Analyst

SELECT
skills_dim.skills, COUNT(skills_job_dim.job_id) AS demand_count

FROM 
job_postings_fact

INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst' AND
job_no_degree_mention = true
GROUP BY 
skills
ORDER BY demand_count DESC
LIMIT 7
```


*
*
*

## 🎯 Conclusions
High salaries are linked to advanced and specialized skills
Demand is strongest for analytical + technical skill combinations
Understanding market data helps you focus on what truly matters.
=======
