SELECT
c.COUNTRY_NAME 'Pais', 
    IF(r.REGION_NAME = 'Europe', 
    'incluído', 'não incluído') 
    AS 'Status Inclusão'
FROM hr.countries c
    JOIN hr.regions r ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;
