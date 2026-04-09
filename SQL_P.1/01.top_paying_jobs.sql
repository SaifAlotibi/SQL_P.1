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