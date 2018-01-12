--문제1
select e.employee_id "사번",
       e.first_name "직원이름", 
       d.department_name "부서명", 
       m.first_name "매니저이름"
from employees e,
     employees m,
     departments d
where e.manager_id = m.employee_id(+)
    and e.department_id = d.department_id(+);

--문제2
select r.region_name "지역이름",
       c.country_name "나라이름"
from countries c,
     regions r
where r.region_id = c.region_id;

--문제3
select d.department_id "부서번호",
       d.department_name "부서이름", 
       m.first_name "매니저이름",
       l.city "도시",
       c.country_name "나라이름",
       r.region_name "지역이름"
from employees m,
     departments d,
     locations l,
     countries c,
     regions r
where d.manager_id = m.employee_id
    and d.location_id = l.location_id
    and l.country_id = c.country_id
    and c.region_id = r.region_id
order by d.department_id asc;

--문제4
select e.employee_id "사번",
       e.first_name || ' ' || e.last_name "이름"
from employees e,
     job_history jh,
     jobs j
where j.job_title = 'Public Accountant'
    and jh.job_id = j.job_id
    and jh.employee_id = e.employee_id;

--문제5
select e.employee_id "사번",
       e.first_name "이름",
       e.last_name "성",
       d.department_name "부서명"
from employees e,
     departments d
where e.department_id = d.department_id
order by e.last_name asc;

--문제6
select e.employee_id "사번",
       e.last_name "성", 
       e.hire_date "채용일"
from employees e,
     employees m
where e.manager_id = m.employee_id
    and e.hire_date > m.hire_date;