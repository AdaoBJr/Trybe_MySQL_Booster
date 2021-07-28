SELECT JOB_TITLE AS Cargo,
ROUND(AVG(SALARY), 2) AS 'Média salarial',
CASE 
WHEN AVG(SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(SALARY) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.jobs AS J
INNER JOIN hr.employees AS E
ON J.JOB_ID = E.JOB_ID
GROUP BY JOB_TITLE
ORDER BY AVG(SALARY), JOB_TITLE;
