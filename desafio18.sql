SELECT 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
CONCAT(SUBSTRING(JH.START_DATE, 9,2),'/',SUBSTRING(JH.START_DATE, 6,2),'/',YEAR(JH.START_DATE)) 'Data de início',
CONCAT(SUBSTRING(JH.END_DATE, 9,2),'/',SUBSTRING(JH.END_DATE, 6,2),'/',YEAR(JH.END_DATE)) 'Data de rescisão',
ROUND(DATEDIFF(JH.END_DATE,JH.START_DATE) / 365, 2) 'Anos trabalhados'
FROM
employees E
INNER JOIN
job_history JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
