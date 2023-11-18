select * from emp where empname like 'A%'

select * from emp where empname not like 'A%'

select * from emp where basicsalary between 30000 and 40000

select sum(basicsalary), avg(basicsalary) from emp

select count(*) from emp

select max(basicsalary) as max_salary, min(basicsalary) as min_salary from emp


SELECT MONTHS_BETWEEN (DATE '2010-08-01', DATE '2010-06-01') FROM DUAL;

SELECT LAST_DAY (DATE '2009-10-05') FROM DUAL;

SELECT COUNT(UNIQUE(DESIGNATION)) FROM EMP