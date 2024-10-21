-- 24. 08. 30 실습

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


 -- 2024년 9월 2일
 -- null 검색
 
 -- 커미션이 있는 사원의 정보를 조회
 SELECT *
    from employees
where commission_pct is not null;

-- 별칭
select employee_id, first_name, last_name 
    from employees;

select employee_id as "사번" , first_name as "이름", last_name "성"
    from employees;

-- 컬럼 연산
-- 사원의 급여를 50% 증가한 금액 만들고 싶다
select employee_id, first_name, last_name, ( salary * 1.5 ) as "인상예정 급여"
    from employees;
    
-- between
-- 급여가 8000 보다 같거나 크고 10000 보다 같거나 작은 사원의 정보를 조회
select * from employees
    where salary >= 8000 and salary <= 10000;
    
select * from employees
    where salary between 8000 and 10000;

select * from employees
    where salary not between 8000 and 10000;
    
select * from employees
    where salary < 8000 or salary > 10000;
    
-- in, not in
-- job_id 'IT_PROG' , 'SA_REP' , 'HR_REP'
select * from employees
    where job_id in ('IT_PROG' , 'SA_REP' , 'HR_REP' );

select * from employees
    where job_id not in ('IT_PROG' , 'SA_REP' , 'HR_REP' );

-- 커미션 비율이 0.1 , 0.25 , 0.2 , 0.3 값 중 하나를 가진 사원 정보를 조희
select * from employees
    where commission_pct in ( 0.1 , 0.25 , 0.2 , 0.3 ); -- 26개
-- 107 - 26 = 81

select * from employees
    where commission_pct not in ( 0.1 , 0.25 , 0.2 , 0.3 ); -- 9개
    
select * from employees 
    where commission_pct is null; -- 72개

-- like 
-- 'Do' 라는 이름으로 시작하고 해당 이름 뒤로 5글자인 모든 사원 조회
select * from employees 
    where first_name like 'Do_____';
    
select * from employees 
    where first_name like 'Do%';
    
-- 전화번호가 011로 시작하는 사원 정보 조회
select * from employees
    where phone_number like '011%';
    
-- 이메일 주소 앞에서 3번째 문자가 E인 사원 정보를 조희
select * from employees
    where email like '__E%';
    

-- 정렬 order by
-- default -> asc ( 오름차순 ), 생략 가능
-- desc 내림차순

-- 이름으로 정렬하여 모든 사원 정보를 조희
select * 
    from employees
    order by first_name;
    
-- 사원 테이블에서 부서를 먼저 정렬을 하고 그 다음에 커미션으로 정렬
select * 
    from employees
    order by department_id, commission_pct;

-- || concatenation , 컬럼 합치기 기능

select  first_name || last_name as "full name"
    from employees;
    
-- 띄어쓰기
select first_name, last_name, first_name ||' '|| last_name as "full name"
    from employees;
    
-- 부서가 80이 아닌 사원 정보를 조희
select *
    from employees
    where department_id != 80;
    
-- decode
/* decode ( 컬럼명, 값1, 변경값1, 
                            값2, 변경값2,
                                  나머지값) */

select department_id,
    decode ( department_id, 10, '마케팅부서',
                                      20, '인사티부서',
                                      30, 'IT부서',
                                      40, '영업팀부서',
                                      department_id || '부서' ) as deparment_name
    from employees
    order by department_id;
    
-- case when then else and as 별명
/*
    case when 컬럼명 조건식1 then 값1
           when 컬럼명 조건식2 then 값2
           ...
           else 그 외의 값 end as 별명
*/

select department_id , 
    case when department_id = 10 then '마케팅부서'
            when department_id = 20 then '인사팀부서'
            when department_id = 30 then 'IT부서'
            when department_id = 40 then '영업팀부서'
            else department_id || '부서' end as deparment_name
    from employees
    order by department_id;



------ 24.09.03 실습 ------

-- nvl
-- 해당 컬럼의 값이 null인 경우에 다른 결과값을 가지도록 하는 함수

select commission_pct, nvl(commission_pct, 0) as commission2
    from employees;

-- nvl2
-- 해당 컬럼의 값이 null 이 아닌 경우와 null 인 경우에 다른 결과값을 가지도록 하는 함수
-- nvl2 ( 컬럼명, null이 아닌 경우의 값, null 인 경우의 값 )

select commission_pct, nvl ( commission_pct, 0 ) as commission2,
         nvl2 ( commission_pct, commission_pct+0.5, 0 ) as commission3
    from employees;
    
    
-- 함수
-- 사원의 급여의 총합을 구하시오
select sum ( salary ) as "급여 총합"
    from employees;
    
-- 사원 급여의 평균을 구하시오
select avg ( salary ) as "급여 평균"
    from employees;
    
-- 직원 테이블에서 총 사원수를 조회
select count ( * ) as "총 사원수"
    from employees;

select count ( salary ) as "총 사원수"
    from employees;

select count ( hire_date ) as "총 사원수"
    from employees;
    
-- max, min
-- 급여가 가장 높은 금액을 찾으시오
select max ( salary )
    from employees;
    
-- 급여가 가장 낮은 금액을 찾으시오
select min ( salary )
    from employees;
    
-- abs 절대값 출력
select 10 as ten, -10 as minus_ten, abs(-10) as abs_ten
    from dual;

-- floor : 소수점 아래를 버림
select floor  ( 11.234 ) as f_col
    from dual;

-- round : 소수점 반올림
select round ( 11.234 ) as r1, round ( 11.128, 2 ) as r2, round ( 11.56 ) as r3
    from dual;
    
-- trunc : 소수점 버림
select trunc ( 123.129 ) as t1, trunc ( 123.129, 2 ) as t2, 
         trunc ( 123.129, -1 ) as t3, trunc ( 11.234 ) as t4
    from dual;
-- -1은 소수점위의 일의자리를 버림

-- mod : 나머지 구하는 함수
select mod ( 7 , 2 ) as m1, mod ( 5 , 3 ) as m2
    from dual;
    
-- lower ( 소문자 변환 ) , upper ( 대문자 변환 ), initcap ( 첫번째 단어 대문자 나머지 소문자, 띄어쓰기 기준)
select lower ( 'HELLO db' ) as l1, upper ('HELLO db') as u1, initcap ('HELLO db') as i1
    from dual;
    
-- || , concat ( 문자열 합침 )
select concat ( 'he' , 'llo' ) as c1, 'he' || 'llo' as c2
    from dual;

-- substr : 부분문자열 추출
-- ( 컬럼명, 시작인덱스 , 가지고 올 개수 )
-- 시작인덱스 : 1번부터 시작 ( 데이터베이스마다 다름 )
select substr ( 'Hi Hello Db' , 2 , 4 ) as s1
    from dual;

-- length : 문자열 개수
select length ( 'Hi Hello Db' ) as len
    from dual;

-- ltrim ( 왼쪽 공백 삭제 ) , rtrim ( 오른쪽 공백 삭제 ) , trim ( 양쪽 공백 삭제 ) : 공백삭제
select trim ('    hello    ') as t1,
         ltrim ('    hello    ') as t2,
         rtrim ('    hello    ') as t3
    from dual;

select ':'||'    hello    '||':'  as org,
         ':'||trim ( '    hello    ' )||':'  as t1,
         ':'||ltrim ( '    hello    ' )||':'  as t1,
         ':'||rtrim ( '    hello    ' )||':'  as t1
    from dual;

-- instr : 특정 문자열의 위치를 찾음
select upper ( 'wo Hi HELLO world world' ) as u1,
         instr ( upper ( 'wo Hi HELLO world world' ) , 'WO' , 1, 2) as ins2
    from dual;

-- months_between : 두 날짜의
select sysdate as "오늘 날짜", sysdate+60 as "60일 이후",
         months_between ( sysdate+61, sysdate ) as m1,
         months_between ( sysdate, sysdate+61 ) as m2
    from dual;

-- add_months : 월을 더함
select add_months ( sysdate, 2 ) as a1
    from dual;

-- next_day : 다음 요일의 날짜를 구함
select next_day ( sysdate, 3 ) as n1 
    from dual;

-- 1 : 일요일 , 2 : 월요일, 3 : 화요일, 4 : 수요일 , 5 : 목요일 , 6 : 금요일 , 7 : 토요일
select next_day ( sysdate, 7 ) as n1 
    from dual;

-- last_day : 달의 마지막일을 구함
select last_day ( sysdate ) as lastday
    from dual;


-- to_char : 문자변환
-- to_date : 날짜형 변환
-- to_number : 숫자형 변환
select sysdate,
         to_char ( sysdate, 'YYYY-MM:DD HH24:MI:SS' ) as ch1,
         to_char ( 560, '$999,999.99' ) as ch2,
         -- 대입하고 깔끔하게 보여줘
         to_char ( 560, '$000,000.00' ) as ch3,
         -- 대입하고 빈자리는 다 0으로 채워줘
         to_char ( 560 ) as ch4,
         to_date ( '1998:12:25 12:00:00' , 'YYYY-MM:DD HH24:MI:SS' ) as t1,
         to_number ( '123' ) as n1
    from dual;

-- group by : 기준 컬럼이 가지고 있는 값의 종류별 그룹을 대표하는 특정값을 추출
-- 어떤 기준으로 그룹을 지을건지 

select employee_id, department_id, salary
    from employees;
    
-- 부서번호를 기준으로 부서별 사원수를 알고싶고 
-- 부서별 평균 급여를 알고 싶다

select employee_id, department_id, salary
    from employees
    order by department_id;
    
select department_id, count ( department_id ) as "부서별 사원수"
    from employees
    group by department_id
    order by department_id
    ;
    
select department_id, 
         count ( department_id ) as "부서별 사원수",
         avg ( salary ) as "부서별 평균 급여"
    from employees
    group by department_id
    order by department_id
    ;

select department_id, 
         count ( department_id ) as "부서별 사원수",
         avg ( salary ) as "부서별 평균 급여",
         max ( salary ) as "부서별 가장 높은 급여",
         min ( salary ) as "부서별 가장 낮은 급여"
    from employees
    group by department_id
    order by department_id
    ;
    
-- having : group by를 사용하지 않으면 사용할 수 없음 , 그룹을 짓고나서 다시 조건을 걸고 싶을때
-- 최초 where 조건문을 실행하고 group by로 그룹을 짓고 난 후 정리된 그룹에서 다시 조건문을 걸고싶을때
 /*
select * ( 컬럼 )   -- 5번
from 테이블        -- 1번
where  조건문     -- 2번
       .
       .
group by 컬럼     -- 3번
having 조건문     -- 4번
order by 컬럼      -- 6번
*/
select department_id, --기준 컬럼
         count ( department_id ) as "부서별 사원수", -- 조건문 1
         avg ( salary ) as "부서별 평균 급여", -- 조건문 2
         max ( salary ) as "부서별 가장 높은 급여" -- 조건문 3
    from employees -- 기준 테이블
    group by department_id -- department_id 를 기준으로 그룹
    having count ( department_id ) > 2 -- department_id 를 기준으로 그룹된 안에서 department_id > 2의 값을 추출
    order by department_id -- department_id 로 오름차순정렬
    ;

---- join 
/* 
 - 크로스 조인
두 테이블간에 만들 수 있는 모든 조합
행 ( row ) 과 행끼리 연결
각기 다른 테이블간의 행끼리 합의 모든 경우의 수 

 - 조인 
내부조인 ( inner join )
값이 데이터 값이 공유 된 두 테이블을 하나의 데이터로 연결

select 
    from a, b
    where a.c3 = b.d1 
-- a테이블의 c3(속성)과 b테이블의 d1(속성)을 묶어줘
-- from 의 앞에 위치한 ( a ) 속성의 기준으로 작성 됨
-- 양쪽 테이블의 동일한 ( 같은, 연관된 ) 속성값만 추출 ( 값이 같지 않으면 조회 안됨 )

외부조인 ( outer join ) - 엑셀의 vlookup과 같음 
기준 데이터 기준으로 기준 데이터는 건들지 않고 나머지 데이터만 연결
세가지로 나뉨 

- left join
a left join b on a.c3 = b.d1
왼쪽인 a 테이블을 기준으로 조회 ( 내부조인에서 조회가 안된 데이터까지 전부 )
값이 없는 것은 null로 표시

- right join
a right join b on a.c3 = b.d1
오른쪽인 a 테이블을 기준으로 조회 ( 내부조인에서 조회가 안된 데이터까지 전부 )
값이 없는 것은 null로 표시

- full join
a full join b on a.c3 = b.d1
a , b 모두 기준으로 조회 ( 양 테이블의 값이 같지 않거나 달라도 데이터 모두 )

-- 번외
self 조인 = 본인을 조인

*/

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
    
-- 데이터 추가
-- inser into 테이블명 ( 컬럼명1, 컬럼명2 ... )
--                 values ( 값1.        값2,      ...) ; 

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1000, 'JungGyu' , 'Lee' , 'junggyu@junggyu.com' , '2024-09-04' ,10000 ,'IT_PROG' )
;

select 
    employee_id
    from employees;

-- 17명 입력

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1000, 'JungGyu' , 'Lee' , 'junggyu@junggyu.com' , '2024-09-04' ,10000 ,'IT_PROG' )
;
insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1001, 'NamHee' , 'Shim' , 'NamHee@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1002, 'Byeong Jin' , 'Seol' , 'Byeong@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1003, 'JinBae' , 'Moon' , 'JinBae@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1004, 'HyunSeop' , 'Park' , 'HyunSeop@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1005, 'JiHoon' , 'Jeon' , 'JiHoon@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1006, 'TaeWoong' , 'Lee' , 'TaeWoong@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1007, 'YongJun' , 'Jo' , 'YongJun@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1008, 'SeoHyeon' , 'Kim' , 'SeoHyeon@human.com' , '2024-09-04' ,550 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1009, 'SoonGu' , 'Kang' , 'SoonGu@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values ( 1010, 'Gunwoo' , 'Kim' , 'Gunwoo@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1011, 'SiHoo' , 'Lim' , 'SiHoo@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;


insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1012, 'Hyemin' , 'Kim' , 'Hyemin@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1013, 'SangMin' , 'Yun' , 'SangMin@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1014, 'SangHyoung' , 'Lee' , 'SangHyoung@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1015, 'HeeCheol' , 'Shin' , 'HeeCheol@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1016, 'SooSin' , 'Park' , 'SooSin@human.com' , '2024-09-04' ,600 ,'IT_PROG' )
;

insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 1017, 'MinSu' , 'Lee' , 'MinSu@human.com' , '2024-09-04' ,500 ,'IT_PROG' )
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
insert into 
employees (employee_id, first_name, last_name, email, hire_date, salary, job_id)
values 
( 2000, 'temp' , 'temp' , 'temp' , '2024-09-04' ,500 ,'IT_PROG' )
;

-- delete
    from employees 
    where employee_id = 2000
;
-- 2000	temp	temp	temp		2024-09-04	IT_PROG	500			

select *
    from employees 
    where employee_id = 2000
;


-- 24-09-05
--------------------------------------------------------------------------------

-- 학생 테이블 
create table H_Student (
    s_id number primary key, 
    s_name varchar2(20) not null,
    s_telephone varchar2(13),
    s_birth varchar2(10),
    s_email varchar2(50),
    s_c_id number
);

-- 주소(투플) 추가
alter table H_Student
add s_address varchar2(255);

comment on column H_Student. s_id is '학생ID' ;
comment on column H_Student. s_name is '학생 이름' ;
comment on column H_Student. s_telephone is '학생 전화번호' ;
comment on column H_Student. s_birth is '학생 생년월일' ;
comment on column H_Student. s_email is '학생 이메일 ' ;
comment on column H_Student. s_c_id is '학생 강의과정 ID (H_Class)' ;
comment on column H_Student. s_address is '학생 주소 ' ;

--------------------------------------------------------------------------------

-- 강의실 테이블 
create table H_Classroom (
    r_id number primary key, 
    r_num varchar2(3) not null,
    r_loc varchar2(5)
);

-- r_num 을 null로 변경 (옵션변경)
alter table H_Classroom
modify (r_num varchar2(3) null);

comment on column H_Classroom. r_id is '교육실 ID' ;
comment on column H_Classroom. r_num is '교육실 룸 번호' ;
comment on column H_Classroom. r_loc is '교육실 위치' ;

--------------------------------------------------------------------------------

-- 강의과정 테이블
create table H_Class (
    c_id number primary key, 
    c_name varchar2(100) not null,
    c_desc varchar2(300),
    c_startdate date,
    c_enddate date,
    c_r_id number
);

-- c_desc ==> c_descriotion ( 이름변경 )
alter table H_Class rename column c_desc to c_descriotion;

-- 타입변경
alter table H_Class
modify c_descriotion varchar2(500)
;

-- 테이블 삭제
drop table H_Class;

-- 테이블 새로 생성
create table H_Class (
    c_id number primary key, 
    c_name varchar2(100) not null,
    c_descriotion clob, -- ( 변경 )
    c_startdate date,
    c_enddate date,
    c_r_id number
);

comment on column H_Class. c_id is '강의과정 ID' ;
comment on column H_Class. c_name is '강의과정명' ;
comment on column H_Class. c_descriotion is '강의설명' ;
comment on column H_Class. c_startdate is '시작일' ;
comment on column H_Class. c_enddate is '종료일 ' ;
comment on column H_Class. c_r_id is '교육실 ID (H_Classroom)' ;

--------------------------------------------------------------------------------
