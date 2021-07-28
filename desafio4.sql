SELECT
	JOB_TITLE AS Cargo,
    ROUND(MAX_SALARY - MIN_SALARY) AS `MEDIA SALARIAL`,
    CASE
		WHEN MAX_SALARY - MIN_SALARY BETWEEN 2000 AND 5800 THEN 'Junior'
        WHEN MAX_SALARY - MIN_SALARY BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN MAX_SALARY - MIN_SALARY BETWEEN 7501 AND 10500 THEN 'Sênior'
		ELSE 'CEO'
	END AS Senioridade
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
ORDER BY `MEDIA SALARIAL`, Cargo ASC;
