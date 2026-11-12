--Get jobs and companies from january
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

UNION -Combine another table
-- GEt jobs and companies from February
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs

UNION -Combine another table
-- Get jobs and companies from March
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs;