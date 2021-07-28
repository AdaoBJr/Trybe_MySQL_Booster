select j.JOB_TITLE,
ROUND(AVG(e.SALARY),2) as 'Média salarial',

CASE 
	WHEN ROUND(AVG(e.SALARY),2) > 2000 and ROUND(AVG(e.SALARY),2) <= 5800 THEN 'Júnior'
    WHEN ROUND(AVG(e.SALARY),2) > 5800 and ROUND(AVG(e.SALARY),2) <= 7500 THEN 'Pleno'
    WHEN ROUND(AVG(e.SALARY),2) > 7500 and ROUND(AVG(e.SALARY),2) <= 10500 THEN 'Sênior'
    WHEN ROUND(AVG(e.SALARY),2) > 10500 THEN 'CEO'
END as 'Senioridade'
from hr.employees as e
INNER JOIN hr.jobs as j
ON j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY AVG(e.SALARY);

