SELECT
jobs.JOB_TITLE AS "Cargo",
CASE
WHEN jobs.MAX_SALARY BETWEEN 5000 AND 10000
THEN "Baixo"
WHEN jobs.MAX_SALARY BETWEEN 10001 AND 20000
THEN "Médio"
WHEN jobs.MAX_SALARY BETWEEN 20001 AND 30000
THEN "Alto"
ELSE "Altíssimo"
END AS "Nível"
FROM hr.employees employees
INNER JOIN hr.jobs jobs
WHERE employees.JOB_ID = jobs.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY Cargo ASC;
