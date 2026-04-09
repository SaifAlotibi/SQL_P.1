--What are the top jobs based on salary?

select
ROUND(AVG(salary_year_avg), 0) AS salary_skills_avg,
 skills

From
job_postings_fact

INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

Where
job_title_short = 'Data Analyst' AND
salary_year_avg IS NOT NULL

GROUP BY
   skills
ORDER BY
   salary_skills_avg DESC

