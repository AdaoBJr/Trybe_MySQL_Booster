/*FEITO COM A AJUDA DO ALUNO JOÃO OLIVEIRA*/
SELECT COUNTRY_NAME AS 'País', IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão' FROM hr.countries order by `País`;
