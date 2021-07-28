SELECT 
j.job_title AS `Cargo`, 
AVG(e.SALARY) AS "Média salarial",
CASE
	WHEN AVG(e.SALARY) >= 2000 AND AVG(e.SALARY) <= 5800 THEN "Júnior"
	WHEN AVG(e.SALARY) > 5800 AND AVG(e.SALARY) <= 7500  THEN "Pleno"
	WHEN AVG(e.SALARY) > 7500 AND AVG(e.SALARY) <= 10500 THEN "Sênior"
	WHEN AVG(e.SALARY) > 10500 THEN "CEO"
    END AS "Senioridade"
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
WHERE j.JOB_ID = e.JOB_ID
GROUP BY `Cargo`;
