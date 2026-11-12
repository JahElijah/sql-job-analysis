SELECT
    company_id,
    name AS company_namme
FROM
    company_dim
WHERE
    company_id IN (
    SELECT
            company_id
    FROM
            job_posting_fact
    WHERE
            job_no_degree_mention = TRUE
    ORDER BY
            company_id
    )