SELECT
    skills_dim.skills,
    top_skills.skill_count
FROM (
    -- STEP 1 lives here, inside the brackets
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
) AS top_skills                      -- STEP 2: the nickname
INNER JOIN skills_dim                -- STEP 3: the join
    ON top_skills.skill_id = skills_dim.skill_id
ORDER BY
    top_skills.skill_count DESC;