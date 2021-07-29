SELECT concat(e.FIRST_NAME, " ", e.LAST_NAME) as 'Nome completo', 
j.JOB_TITLE as 'Cargo', 
x.START_DATE as "Data de início do cargo", 
d.DEPARTMENT_NAME as 'Departamento'
FROM hr.jobs j inner join hr.job_history x on  j.JOB_ID = x.JOB_ID   -- JOB_ID é a coluna em comum entre essas 2 tabelas
inner join hr.employees e on e.EMPLOYEE_ID = x.EMPLOYEE_ID -- tentava o JOB_ID E NUNCA FICAVA IGUAL o challengeResults
inner join hr.departments d  on d.DEPARTMENT_ID = d.DEPARTMENT_ID 
ORDER BY concat(e.FIRST_NAME, " ", e.LAST_NAME) DESC, `Cargo` ASC;

-- IMPORTANTE*** 
-- Tem que fazer um ON do lado de cada inner Join *******
-- *****A ORDEM DOS INNER JOINS IMPORTA. Além disso, é começar os inner joins pelas tabelas com mais informação
-- Nem sempre começa por essas maiores(esse requisito não segue essa ideia), mas é uma boa forma de começar.
-- Requisito chatíssimo. Perdi horas na tentando . *************** Comecei o inner join com tabela JOBS
-- e depois JOBS_HISTORY porque o requisito fala muito sobre o CARGO. Então faz sentido começar com ela.
-- Aqui fui testando a ordem até bater com a forma  que estava no CHALLENGE.RESULTS(página de tests)
-- Usei este Link pra me lembrar como uso o CONCAT no mysql:     https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_func_mysql_concat2
