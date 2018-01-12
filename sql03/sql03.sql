--����1
select e.employee_id "���",
       e.first_name "�����̸�", 
       d.department_name "�μ���", 
       m.first_name "�Ŵ����̸�"
from employees e,
     employees m,
     departments d
where e.manager_id = m.employee_id(+)
    and e.department_id = d.department_id(+);

--����2
select r.region_name "�����̸�",
       c.country_name "�����̸�"
from countries c,
     regions r
where r.region_id = c.region_id;

--����3
select d.department_id "�μ���ȣ",
       d.department_name "�μ��̸�", 
       m.first_name "�Ŵ����̸�",
       l.city "����",
       c.country_name "�����̸�",
       r.region_name "�����̸�"
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

--����4
select e.employee_id "���",
       e.first_name || ' ' || e.last_name "�̸�"
from employees e,
     job_history jh,
     jobs j
where j.job_title = 'Public Accountant'
    and jh.job_id = j.job_id
    and jh.employee_id = e.employee_id;

--����5
select e.employee_id "���",
       e.first_name "�̸�",
       e.last_name "��",
       d.department_name "�μ���"
from employees e,
     departments d
where e.department_id = d.department_id
order by e.last_name asc;

--����6
select e.employee_id "���",
       e.last_name "��", 
       e.hire_date "ä����"
from employees e,
     employees m
where e.manager_id = m.employee_id
    and e.hire_date > m.hire_date;