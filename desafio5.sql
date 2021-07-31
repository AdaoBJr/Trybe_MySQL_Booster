SELECT job_title AS 'Cargo', max_salary - min_salary AS 'Variação Salarial', ROUND(min_salary/12, 2) AS 'Média mínimo mensal', ROUND(max_salary/12, 2) AS 'Média máximo mensal' 
FROM hr.jobs
ORDER BY  (max_salary - min_salary), job_title;
