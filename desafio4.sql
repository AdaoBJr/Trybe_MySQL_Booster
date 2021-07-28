SELECT J.JOB_TITLE 'Cargo', ROUND(AVG(E.SALARY), 2) 'Média salarial',CASE
WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN ROUND(AVG(E.SALARY), 2) > 10500 THEN 'CEO'
END 'Senioridade' FROM employees E INNER JOIN jobs J on J.JOB_ID = E.JOB_ID GROUP BY `Cargo` ORDER BY `Média salarial`, `Cargo`; 
