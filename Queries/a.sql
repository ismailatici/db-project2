select avg(SALARY) from EMPLOYEES where JOB_ID='AC_ACCOUNT';


---isci sinifindan job id ne gore ortalama maas ve kac tane,toplam maas i grup yaparak getiriyor
select JOB_ID,avg(SALARY),count(*),sum(SALARY) from EMPLOYEES
group by JOB_ID;

--get me job ids where their avg salary is more then 5k
select JOB_ID,avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY)>5000;


