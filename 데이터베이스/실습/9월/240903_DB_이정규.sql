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








