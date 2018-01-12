--문제1
select max(salary) "최고임금",
       min(salary) "최저임금",
       max(salary) - min(salary) "최고임금 - 최저임금"
from employees;
--문제2
select to_char(max(hire_date),'YYYY"년" MM"월 " DD"일"') "가장 최근 신입사원"
from employees;

--문제3
select department_id "부서",
       round(avg(salary),1) "평균임금",
       max(salary) "최고임금",
       min(salary) "최저임금"
from employees
group by department_id
order by department_id desc;

--문제4
select job_id "부서",
       round(avg(salary),1) "평균임금",
       max(salary) "최고임금",
       min(salary) "최저임금"
from employees
group by job_id
order by job_id desc;

--문제5
select to_char(min(hire_date),'YYYY"년" MM"월 " DD"일"') "가장 오래 근속한 직원"
from employees;

--문제6
select department_id "부서",
       round(avg(salary),1) "평균임금",
       min(salary) "최저임금",
       round(avg(salary)-min(salary),1) "(평균임금-최저임금)"
from employees
having avg(salary)-min(salary) < 2000
group by department_id
order by avg(salary)-min(salary) desc;

--문제7
select j.job_title "업무",
       round(max(salary)-min(salary),1) "(최고임금-최저임금)"
from employees e, 
     jobs j
where j.job_id = e.job_id
group by j.job_title
order by max(salary)-min(salary) desc;