select JOB_TITLE 'Cargo', (MAX_SALARY - MIN_SALARY) 'Variação Salarial', round(MIN_SALARY/12, 2) 'Média mínima mensal', round(MAX_SALARY/12, 2) 'Média máxima mensal' from hr.jobs group by JOB_ID order by (MAX_SALARY - MIN_SALARY), JOB_TITLE;