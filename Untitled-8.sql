/*
Find the companies that have the most job
- Get the total number of job postings for each company
- Return the total number of jobs with the company name
*/
WITH company_job_counts AS (
SELECT
    company_id,
    COUNT(*) 
FROM
    job_postings_fact
GROUP BY
    company_id  
)

SELECT *
FROM company_job_counts