( 
SELECT
    skill_id,
    COUNT(job_id) AS skill_count
FROM
    skills_job_dim
GROUP BY
    skill_id
ORDER BY
    skill_count DESC
LIMIT 5
    skills_dim.skills,
    top_skills.skill_count
SELECT
        skill_id,
        COUNT(job_id) AS skill_count
    FROM
        skills_job_dim
    GROUP BY
        skill_id
    ORDER BY
        skill_count DESC
    LIMIT 5
) AS top_skills
INNER JOIN skills_dim
    ON top_skills.skill_id = skills_dim.skill_id
ORDER BY
    top_skills.skill_count DESC;
)