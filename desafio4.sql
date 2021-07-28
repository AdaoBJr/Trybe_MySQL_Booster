SELECT 
  J.JOB_TITLE AS 'Cargo', 
    ROUND(AVG(E.SALARY), 2) AS 'Média salarial',
    CASE 
		WHEN ROUND(AVG(E.SALARY), 2) >= 2000 AND ROUND(AVG(E.SALARY), 2) <= 5800 THEN 'Júnior'
		WHEN ROUND(AVG(E.SALARY), 2) <= 7500 THEN 'Pleno'
		WHEN ROUND(AVG(E.SALARY), 2) <= 10500 THEN 'Sênior'
		ELSE 'CEO'
    END AS 'Senioridade'
FROM hr.jobs J
INNER JOIN hr.employees E
ON J.JOB_ID = E.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY `Média salarial`, `Cargo`;
