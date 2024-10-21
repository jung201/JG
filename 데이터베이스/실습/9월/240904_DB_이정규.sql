-- 24. 09. 04 

-- 모든 사원 정보를 조회
select * 
    from employees
    ;
    
-- 모든 부서 정보를 조회
select *
    from departments
    ;

-- 다른 테이블 조인 ( null은 가지고 오지 않음 )
select *
    from employees, departments
    where employees. department_id = departments. department_id
    order by employee_id
    ;
    
select *
    from employees emp , departments dep
    where emp. department_id = dep. department_id
    order by employee_id
    ;

-- 정렬기준이 각 테이블에 모두 존재하면 특정해줘야함
select *
    from employees emp , departments dep
    where emp. department_id = dep. department_id
    order by emp.department_id
    ;

-- 부서가 100인 사원의 이름과 부서이름을 조회
select emp.first_name , dep.department_name
    from employees emp, departments dep
    where emp.department_id = dep.department_id
        and emp.department_id = 100
    ;

-- 급여가 10000 이하인 사원의 사번, 급여, 부서이름을 사번으로 정렬
select e.employee_id , e.salary, d.department_name
    from employees e , departments d
    where e.department_id = d.department_id
    and e.salary <= 10000
    order by employee_id
    ;
    
select 
    e.employee_id , e.salary, d.department_name
from 
    employees e join departments d on 
    e.department_id = d.department_id and e.salary <= 10000
 order by employee_id
 ;
 
select 
    e.employee_id , e.salary, d.department_name
from 
    employees e join departments d on 
    e.department_id = d.department_id 
where e.salary <= 10000
order by employee_id
 ;

-- 사원의 사번, 급여, 직종 이름, 해당 직종의 최소 급여, 최대 급여 정보를 조회
select 
    e.employee_id , e.salary ,  j. job_title , j.min_salary ,  j.max_salary
    from employees e , jobs j
    where e.job_id = j.job_id
    order by employee_id
    ;

select 
    e.employee_id , e.salary ,  j. job_title , j.min_salary ,  j.max_salary
    from employees e join jobs j on e.job_id = j.job_id
    order by employee_id
    ;


-- 사원의 정보는 모두 조회가 되고 부서 이름도 조회
select
    e.employee_id , e.first_name , d.department_name
from 
    employees e left join departments d on e.department_id = d. department_id
order by 
    employee_id
;

-- join on을 사용하지 않고 , 를 쓰면 컬럼의 기준이 아닌 테이블 뒤에 (+)를 붙인다
select
    e.employee_id , e.first_name , d.department_name
from 
    employees e , departments d
where    
    e.department_id = d. department_id(+)
order by 
    employee_id
;

-- 부서 정보를 다 보고 싶고, 그 부서에 해당하는 사원의 사번 , 이름 조회
select
    d.* , e.employee_id , e.first_name
from
    departments d left join employees e on d.department_id = e.department_id
order by d.department_id
;

-- 서브쿼리
-- 지역 아이디가 1700인 부서들에서 일하지 않는 사원 정보 조회
select *
from employees
where department_id not in 
        ( select department_id 
          from departments
          where location_id = 1700)
order by employee_id
;

select *
from employees e join departments d on e.department_id = d.department_id
where d.location_id != 1700
order by e.employee_id
 ;

-- 최대 급여를 받는 사원의 정보를 출력
select *
    from employees
    where salary = 
    ( select 
        max ( salary ) 
        from employees )
;

-- 평균 급여보다 더 많이 받는 사원의 정보 조회
select *
    from employees
    where salary > 
    ( select
        avg ( salary )
        from employees )
;

select 
    avg ( salary )
    from employees
    where salary > 
;
    
-- 데이터 추가
-- inser into 테이블명 ( 컬럼명1, 컬럼명2 ... )
--                 values ( 값1.        값2,      ...) ; 

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1000, 'JungGyu' , 'Lee' , 'junggyu@junggyu.com' , '2024-09-04' ,10000 ,'IT_PROG' )
;

select 
    employee_id
    from employees;

-- 17명 입력

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1000, 'JungGyu' , 'Lee' , 'junggyu@junggyu.com' , '2024-09-04' ,10000 ,'IT_PROG' )
;
insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1001, 'NamHee' , 'Shim' , 'NamHee@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1002, 'Byeong Jin' , 'Seol' , 'Byeong@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1003, 'JinBae' , 'Moon' , 'JinBae@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1004, 'HyunSeop' , 'Park' , 'HyunSeop@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1005, 'JiHoon' , 'Jeon' , 'JiHoon@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1006, 'TaeWoong' , 'Lee' , 'TaeWoong@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1007, 'YongJun' , 'Jo' , 'YongJun@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1008, 'SeoHyeon' , 'Kim' , 'SeoHyeon@human.com' , '2024-09-04' ,550 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1009, 'SoonGu' , 'Kang' , 'SoonGu@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1010, 'Gunwoo' , 'Kim' , 'Gunwoo@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1011, 'SiHoo' , 'Lim' , 'SiHoo@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;


insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1012, 'Hyemin' , 'Kim' , 'Hyemin@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1013, 'SangMin' , 'Yun' , 'SangMin@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1014, 'SangHyoung' , 'Lee' , 'SangHyoung@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1015, 'HeeCheol' , 'Shin' , 'HeeCheol@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1016, 'SooSin' , 'Park' , 'SooSin@human.com' , '2024-09-04' ,600 ,'IT_PROG' )
;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1017, 'MinSu' , 'Lee' , 'MinSu@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;
select *
    from employees
    where employee_id >= 1000;


update employees set salary = '100000' where employee_id = 1000 ;


-- 사번이 1000이상인 직원들한테만 연봉 10% 인상
update employees
    set salary = salary * 1.1
    where employee_id >= 1000
;

-- 사번이 1000이상인 직원들한테만 커미션 0.2 인상
update employees
    set commission_pct = 0.2
    where employee_id >= 1000
;

-- 삭제 : 행을 삭제
insert into employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 2000, 'temp' , 'temp' , 'temp' , '2024-09-04' ,500 ,'IT_PROG' )
;

delete
    from employees 
    where employee_id = 2000
;
-- 2000	temp	temp	temp		2024-09-04	IT_PROG	500			

select *
    from employees 
    where employee_id = 2000
;