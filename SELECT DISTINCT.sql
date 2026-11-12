SELECT DISTINCT
    companies.name
FROM
    job_postings_fact AS jobs
INNER JOIN company_dim AS companies
    ON jobs.company_id = companies.company_id
WHERE
    jobs.job_health_insurance = TRUE
    AND EXTRACT(QUARTER FROM jobs.job_posted_date) = 2
    AND EXTRACT(YEAR FROM jobs.job_posted_date) = 2023
ORDER BY
    companies.name;