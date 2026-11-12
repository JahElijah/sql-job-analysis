SELECT
    company_dim.name,
    company_counts.job_count,
    -- STEP 2: label each company by its count
    CASE
        WHEN company_counts.SELECT
    job_postings.job_id,
    skill_id
FROM 
    skills_job_dim AS skills_to_job
INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skills_to_job.job_idWITH company_job_count AS (
    SELECT
        company_id,
        COUNT(*) AS total_jobs
    FROM
        job_postings_fact
    GROUP BY
        company_id
)
SELECT 
    company_dim.company_name AS company_name,
    company_job_count.total_jobs
          
FROM
    company_dim
LEFT JOIN company_job_count ON company_job_count.company_id = company_dim.company_idjob_count < 10 THEN 'Small'
        WHEN company_counts.job_count BETWEEN 10 AND 50 THEN 'Medium'
        ELSE 'Large'
    END AS size_category
FROM (
    -- STEP 1: the helper box counts jobs per company
    SELECT
        company_id,
        COUNT(*) AS job_count
    FROM
        job_postings_fact
    GROUP BY
        company_id
) AS company_counts
-- STEP 3: swap each company number for its name
INNER JOIN company_dim
    ON company_counts.company_id = company_dim.company_id
ORDER BY
    company_counts.job_count DESC;