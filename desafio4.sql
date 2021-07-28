SELECT 
    j.JOB_TITLE 'Cargo', 
    ROUND(AVG(e.SALARY),2) 'Média salarial',
    CASE 
        WHEN AVG(e.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
    END 'Senioridade'
FROM hr.employees e
    JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY AVG(e.SALARY), j.JOB_TITLE;
