-- 1. 회사와 관련된 모든 나라 정보를 조희

SELECT *
    FROM countries
    ;
    
-- 2. 회사와 관련있는 대륙 정보를 모두 조회
SELECT * FROM regions;
    
    
-- 3. 회사와 관련있는 부서가 존재하는 모든 지역 정보를 조회
SELECT * from locations;

-- 4. 회사 관련 건물들의 거리 주소만 조회
SELECT street_address from locations;

-- 숙제
-- 1) 회사에 존재하는 모든 작업 아이디만 조회
SELECT job_id from jobs;

-- 2) 회사에 존재하는 모든 직업(직무)의 이름을 조회
SELECT job_title from jobs;


-- 5. 모든 사원의 이름과 성을 조회
SELECT first_name, last_name
    from employees;
    
    
-- 숙제

-- 3) 사원의 사번과 이메일을 조회
select employee_id, email from employees;

-- 4) 직업 이력에 있는 사원들의 사번, 직업 시작일, 작업 종료일 조회
select employee_id, start_date, end_date from job_history;

-- 5) 직업별 직업명, 최소 급여, 최대 급여를 조회
select job_title, min_salary, max_salary from jobs;

-- distinct : 데이터의 중복 제거, 중복제거하고 싶은 컬럼명 앞에다 작성

select employee_id
    from job_history;
-- 10개 조회
    
select distinct employee_id
    from job_history;
-- 7개 조회
    
-- 사원의 업종(업무) ID를 중복 없이 조회
select job_id
    from employees;
-- 107개 조회

select distinct job_id
    from employees;
-- 19개 조회


-- 사원을 관리하는 관리자 사원 사번을 중복 없이 조회
select distinct manager_id
    from employees;

-- 숙제 
-- 6) 사원의 직업 아이디 (업종)과 급여를 조회하고 중복을 허용 했을 때와 개수의 차이를 알아보세요
select job_id, salary
    from employees;
-- 107개
    
select distinct job_id, salary
    from employees;
-- 82개

-- 조건문 비교 연산자
-- 자바는 == 쿼리는 =
-- not은 != 로 같고 <> 도 같은 의미
-- > , >=, <, <=

-- 급여가 10000이상인 사원의 아이디와 이름, 급여를 조회
select employee_id, first_name, salary
    from employees
where salary >= 10000;

-- 부서번호가 50인 사원 정보를 조회
select *
    from employees
where department_id = 50;

-- 직업 아이디가 'AC_MGR' 인 직업 정보를 조회
select *
    from jobs
where job_id = 'AC_MGR';

select *
    from jobs
where job_id = 'ac_mgr';

-- 숙제
-- 7) 직업 아이디가 'FI_ACCOUNT' 가 아닌 직업아이디 정보를 조회
select *
    from jobs
where job_id != 'FI_ACCOUNT';

-- 8) 2003년 9월 17일 이후에 입사한 사원의 사번, 고용일, 전화번호를 조희
select employee_id, hire_date, phone_number
    from employees
where hire_date > '2003-09-17';












