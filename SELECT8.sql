SELECT
    EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') AS month,
    COUNT(job_id) AS postings_count
FROM
    job_postings_fact
WHERE
    EXTRACT(YEAR FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') = 2023
GROUP BY
    month
ORDER BY
    month;