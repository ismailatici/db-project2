---how to find employees information of who is making highest salary in the company
select * from EMPLOYEES
order by SALARY desc ;

---get me the highest salary
select max(SALARY) from EMPLOYEES;

---highest salaray employee information
select * from EMPLOYEES where SALARY=24000;

--subquery solution in one shot
select *from EMPLOYEES where SALARY=(select max(SALARY) from EMPLOYEES);

--finding second highest salary

select max(SALARY)from EMPLOYEES;
select max(SALARY)from EMPLOYEES where SALARY<( select max(SALARY) from employees);


----employee information of who is making second highest salary
select * from EMPLOYEES
where SALARY = (select max(SALARY)from EMPLOYEES where SALARY<( select max(SALARY) from employees));

select *
from EMPLOYEES where ROWNUM<11;

select *
from EMPLOYEES order by SALARY desc ;

---list the employees who is making top 10 salaray
select * from EMPLOYEES where ROWNUM <11 order by SALARY desc ;

-----order all empl based on salary high to low then display only first 10 result

select *from (select *from EMPLOYEES order by SALARY desc) where ROWNUM<11;

---how can be rename the column that we displayed
select FIRST_NAME as "given_name",LAST_NAME as "surname"
from EMPLOYEES;

----test function, string mani
----java firs name+""+last_name
---in sql concat is||
select FIRST_NAME||''||LAST_NAME"full_name"
from EMPLOYEES;

---task;
---add @gmail.com and name new column to full_email
select EMAIL from EMPLOYEES;

select EMAIL||'@gmail.com'as "full_email"
from  EMPLOYEES;

---making all lowercase
select lower(email||'gmail.com')as"full_email"
from EMPLOYEES;

---upper case
select upper(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;


---length(value)
select FIRST_NAME,length(FIRST_NAME) as"length_name" from EMPLOYEES order by "length_name"desc ;

---substr(colName,begIndex,NumberOfChar)

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials"
from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
       FIRST_NAME||''||LAST_NAME as "full_name",lower(EMAIL||'@gmail.com') as "full_email"from EMPLOYEES;

---View
create view Emaillist as select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",FIRST_NAME||''||LAST_NAME
as "full_name",lower(EMAIL||'@gmail.com') as"full_email" from EMPLOYEES;

 select "FULL_NAME"
from EMAIL_LIST;
---- to remove view
drop view EMAIL_LIST;



-----find the highest 14th salary
select min(SALARY)    from (select * from EMPLOYEES order by SALARY desc )where ROWNUM<15;


-----find employeee info who  is making 14th highest salary
select *from EMPLOYEES
where  SALARY=(select min(SALARY) from (select * from EMPLOYEES order by SALARY desc )where ROWNUM<15);








