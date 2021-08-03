SELECT UCASE(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)) 'Nome completo',
jh.START_DATE 'Data de início do cargo',
em.SALARY 'Salário'
FROM hr.job_history jh
INNER JOIN hr.employees em ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY UCASE(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)),
START_DATE;
