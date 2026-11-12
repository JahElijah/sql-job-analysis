SELECT
    q1_jobs.job_id,
    skills_dim.skills,
    skills_dim.type
FROM (
    SELECT job_id, salary_year_avg
    FROM january_jobs
    UNION ALL
    SELECT job_id, salary_year_avg
    FROM february_jobs
    UNION ALL
    SELECT job_id, salary_year_avg
    FROM march_jobs
) AS q1_jobs
LEFT JOIN skills_job_dim
    ON q1_jobs.job_id = skills_job_dim.job_id
LEFT JOIN skills_dim
    ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    q1_jobs.salary_year_avg > 70000;