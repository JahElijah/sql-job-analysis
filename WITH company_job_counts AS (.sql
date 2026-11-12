WITH company_job_counts AS (
    SELECT
    company_id,
    COUNT(*) 
FROM
    job_postings_fact
GROUP BY
    company_id  
)

SELECT name
FROM company_dim
LEFT JOIN company_job_counts ON company_job_count.company_id = company_dim.company_id