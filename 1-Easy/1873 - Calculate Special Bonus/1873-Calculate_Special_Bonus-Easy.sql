CREATE TABLE IF NOT EXISTS EMPLOYEES (EMPLOYEE_ID INT, NAME VARCHAR(30), SALARY INT)
TRUNCATE TABLE EMPLOYEES
INSERT INTO EMPLOYEES (EMPLOYEE_ID, NAME, SALARY) VALUES ('2', 'MEIR', '3000')
INSERT INTO EMPLOYEES (EMPLOYEE_ID, NAME, SALARY) VALUES ('3', 'MICHAEL', '3800')
INSERT INTO EMPLOYEES (EMPLOYEE_ID, NAME, SALARY) VALUES ('7', 'ADDILYN', '7400')
INSERT INTO EMPLOYEES (EMPLOYEE_ID, NAME, SALARY) VALUES ('8', 'JUAN', '6100')
INSERT INTO EMPLOYEES (EMPLOYEE_ID, NAME, SALARY) VALUES ('9', 'KANNON', '7700')

SELECT 
        EMPLOYEE_ID, 
        IF(EMPLOYEE_ID % 2 != 0 AND NAME NOT LIKE 'M%', SALARY, 0) AS BONUS
    FROM EMPLOYEES
    ORDER BY EMPLOYEE_ID