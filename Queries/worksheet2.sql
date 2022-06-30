select FIRST_NAME,LAST_NAME,PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME='David'and LAST_NAME='Lee';



select * from EMPLOYEES where SALARY>7000;



select EMAIL,SALARY from EMPLOYEES
where SALARY<4000;
select *from EMPLOYEES
where JOB_ID='IT_PROG'or JOB_ID='SA_REP';

select FIRST_NAME, LAST_NAME,SALARY from EMPLOYEES
where SALARY>=5000 or SALARY<=10000;

select *from EMPLOYEES
    where EMPLOYEE_ID between 130 and 170;

select * from EMPLOYEES
where EMPLOYEE_ID in(135,176,129);

select  CITY,COUNTRY_ID from LOCATIONS
where COUNTRY_ID in ('IT','US','UK');

select *from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');

select count(*) from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');
-- how many employee making more than 8000
select count(*) from EMPLOYEES
where SALARY>8000;

-- how many unique first names we have
select count(distinct FIRST_NAME) from EMPLOYEES;

---get me all employees information based on who is making more salary to low salary
select *from EMPLOYEES
order by SALARY asc ;
--desc 9-0 Z-A
--asc 0-9 a-Z

--get me all emp info order by alphabetical based on firstname
select *from EMPLOYEES order by FIRST_NAME;

--Note: default order type is asc if you dont specify after column name

--get me all emply whose first name starts with C
 select * from EMPLOYEES where FIRST_NAME like 'C%';

--get me 5 letter first names where the middle char is z;
select*from EMPLOYEES where FIRST_NAME like '__z__';

select * from EMPLOYEES WHERE FIRST_NAME like '_u%';

----find me min salary
select min(SALARY) from EMPLOYEES;
select max(SALARY) from EMPLOYEES;

select avg(SALARY)from EMPLOYEES;

--round
select round(avg(SALARY),2) from EMPLOYEES;

select sum(SALARY)from EMPLOYEES;









