--����1
select max(salary) "�ְ��ӱ�",
       min(salary) "�����ӱ�",
       max(salary) - min(salary) "�ְ��ӱ� - �����ӱ�"
from employees;
--����2
select to_char(max(hire_date),'YYYY"��" MM"�� " DD"��"') "���� �ֱ� ���Ի��"
from employees;

--����3
select department_id "�μ�",
       round(avg(salary),1) "����ӱ�",
       max(salary) "�ְ��ӱ�",
       min(salary) "�����ӱ�"
from employees
group by department_id
order by department_id desc;

--����4
select job_id "�μ�",
       round(avg(salary),1) "����ӱ�",
       max(salary) "�ְ��ӱ�",
       min(salary) "�����ӱ�"
from employees
group by job_id
order by job_id desc;

--����5
select to_char(min(hire_date),'YYYY"��" MM"�� " DD"��"') "���� ���� �ټ��� ����"
from employees;

--����6
select department_id "�μ�",
       round(avg(salary),1) "����ӱ�",
       min(salary) "�����ӱ�",
       round(avg(salary)-min(salary),1) "(����ӱ�-�����ӱ�)"
from employees
having avg(salary)-min(salary) < 2000
group by department_id
order by avg(salary)-min(salary) desc;

--����7
select j.job_title "����",
       round(max(salary)-min(salary),1) "(�ְ��ӱ�-�����ӱ�)"
from employees e, 
     jobs j
where j.job_id = e.job_id
group by j.job_title
order by max(salary)-min(salary) desc;