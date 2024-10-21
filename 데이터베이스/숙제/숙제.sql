-- 240830 숙제

-- 1) 회사에 존재하는 모든 작업 아이디만 조회
SELECT job_id from jobs;

-- 2) 회사에 존재하는 모든 직업(직무)의 이름을 조회
SELECT job_title from jobs;

-- 3) 사원의 사번과 이메일을 조회
select employee_id, email from employees;

-- 4) 직업 이력에 있는 사원들의 사번, 직업 시작일, 작업 종료일 조회
select employee_id, start_date, end_date from job_history;

-- 5) 직업별 직업명, 최소 급여, 최대 급여를 조회
select job_title, min_salary, max_salary from jobs;

-- 6) 사원의 직업 아이디 (업종)과 급여를 조회하고 중복을 허용 했을 때와 개수의 차이를 알아보세요
select job_id, salary
    from employees;
-- 107개

-- 7) 직업 아이디가 'FI_ACCOUNT' 가 아닌 직업아이디 정보를 조회
select *
    from jobs
where job_id != 'FI_ACCOUNT';

-- 8) 2003년 9월 17일 이후에 입사한 사원의 사번, 고용일, 전화번호를 조희
select employee_id, hire_date, phone_number
    from employees
where hire_date > '2003-09-17';


----------------------------------------------------------------------------------------------
-- 24. 09. 02 숙제
-- 1) 부서를 배정받지 못한 사원을 조회

select *
    from employees
    where department_id is null;
    
-- 2) 커미션이 있는 사원 중 급여가 10000이상 인 사원의 정보를 조회
select *
    from employees
    where commission_pct is not null and salary >= 10000;

-- 3) 급여가 7000 미만이거나 10000 초과인 사원 정보를 조희
select *
    from employees 
    where salary < 7000 or salary > 10000;
select * 
    from employees 
    where salary not between 7000 and 10000;

-- 4) 사원의 이름이 E,G 로 시작하는 사원 정보를 조회
select * 
    from employees 
    where first_name between 'E' and 'H' ;
    
select * 
    from employees 
    where first_name >= 'E' and first_name < 'H';

-- 5) 사원의 입사일이 2004년 5월 20일 ~ 2007년 10월 9일 이전까지의 사원 정보를 조회
select * 
    from employees 
    where hire_date >= '2004-5-20' and hire_date < '2008-01-13';
    
select * 
    from employees 
    where hire_date between '2004-5-20' and '2008-01-12';

-- 6) 대륙 아이디 ( region_id ) 가 1, 3, 4 가 아닌 나라 정보를 조회
select *
    from countries 
    where region_id not in ( 1, 3, 4 );

-- 7) 부서가 80 , 50, null 인 사원 정보를 조회
select * 
    from employees
    where department_id in ( 80 , 50 ) or department_id is null;

-- 8) job_title 에 'Account' 가 들어있는 직업 정보 조회
select * 
    from jobs
    where job_title like '%Account%';

-- 9) 전화번호 1343. 이 들어가지 않은 사원 정보 조회
select *
    from employees
    where phone_number not like '%. 1343.%';

-- 10) 이름에 알파벳 a, A 가 들어있는 사원 정보 조회
select * 
    from employees
    where first_name like '%a%' or first_name like '%A%' ;

-- 11) 알파벳 오름차순으로 국가 이름을 정렬하여 국가 정보를 조희
select * 
    from countries
    order by country_name asc;
    
-- 12) 퇴사 이력 테이블에서 퇴사일 오름차순으로 정렬, 퇴사일이 같으면 입사일 내림차순으로 정렬
select * 
    from job_history
    order by end_date , start_date desc;
    
-- 13) 급여를 내림차순으로 정렬, 같으면 커미션 비율을 오름차순으로 정렬 한 사원 정보를 조회
select * 
    from employees
    order by salary desc , commission_pct ;
    
-- 14)
-- 사원의 커미션이 0.1 이하이면 하, 
-- 0.2 이하이면 중
-- 0.2 초과이면 상
-- null 경우이면 null
-- 그 외의 경우이면 '선택받지 못한 데이터'
-- 라고 commission_pct_name으로 출력, employee_id, first_name, commission_pct 조회

select employee_id, first_name,commission_pct,
    case when commission_pct <= 0.1 then '하'
            when commission_pct <= 0.2 then '중'
            when commission_pct  > 0.2 then '상'
            when commission_pct  is null then 'null'
            else  '선택받지 못한 데이터' end as commission_pct_name
    from employees
order by commission_pct
;


----------------------------------------------------------------------------------------------


-- 24. 09. 03 숙제

-- 1) 사원 테이블의 구조를 조회 ( 모르면 검색 )
    desc emp;

-- 2) 부서 테이블의 구조를 조회 ( 모르면 검색 )
    desc dept;

-- 3) 모든 부서 정보를 조희
select *
    from dept;
    
-- 4) 모든 사원 정보를 조회
select *
    from emp;
    
-- 5) 모든 사원의 이름을 조회
select ename
    from emp;

-- 6) 회사의 부서번호를 조회
select deptno
    from dept;

-- 7) 사원의 관리자, 급여, 커미션을 조회
select job, sal, comm
    from emp
    where job = 'MANAGER';
.
.
select mgr, sal, comm from emp; 

-- 8) 부서의 이름과 지역을 조회
select dname, loc
    from dept;

-- 9) 급여 등급과 최저 급여를 조회
select grade, losal
    from salgrade;

-- 10) 회사에 존재하는 사원의 작업을 조회
select job
    from emp;

-- 11) 사원이 존재하는 부서번호를 중복없이 조회
select distinct deptno
    from emp;

-- 12) 관리하는 사원이 존재하는 관리자 아이디를 중복없이 조회
select distinct mgr
    from emp
    where mgr is not null;

-- 13) 급여 등급이 3일 때 받을 수 있는 최대 급여, 최소 급여를 조회
select hisal, losal
    from salgrade
    where grade = 3;

-- 14) 급여가 2100이상인 사원의 정보를 조회
select *
    from emp
    where sal >= 2100;

-- 15) 부서가 20인 곳에서 일하는 사원들의 사원 정보를 조회
select *
    from emp
    where deptno = 20;
    
-- 16) 관리자가 없는 사원의 정보를 조회
select *
    from emp
    where mgr is null ; 

-- 17) 커미션이 없는 사원의 정보를 조회
select *
    from emp
    where comm is null;

-- 18) 사원의 급여를 50을 증가한 컬럼을 만들어 조회
select sal+50 as "급여50인상"
    from emp;

-- 19) 사원의 급여보다 10%증가한 컬럼을 만들어 조회
select sal * 1.1 as "급여10%증가"
    from emp;

-- 20) 사원의 급여를 50을 증가한 컬럼명을 upgradeSalary로 해서 조회
select sal + 50 as upgradeSalary
    from emp;

-- 21) 사원의 급여와 커미션을 합한 컬럼명을 upgradeSalary로 해서 조회
select sal ||' '|| comm as upgradeSalary
    from emp;
.
.
select sal, comm, sal+nvl(comm,0) as upgradeSalary from emp; 

-- 22) 'XXXx 사번의 사원은 관리자가 xxx사번 입니다' 데이터 형태가 나오는 컬럼을 만들어 조회
select empno ||''|| ('사번의 사원은 관리자가') ||''|| mgr || ('사번입니다') as "사번"
    from emp;

-- 23) 관리자가 없는 사원이 사장이다. 사장의 관리자 번호를 9999로 출력이 되도록 
--       nvl, nvl2, decode 함수를 이용해서 각각 쿼리문을 만들어주세요
select mgr, nvl(mgr, 9999) 
    from emp;
    
select mgr, nvl(mgr, 9999),
            nvl2(mgr, mgr, 0)
    from emp;

select mgr, decode ( mgr,null,999 )
    from emp;

-- 23,24번 문제의 nvl, nvl2는 오늘 수업 예정
-- 24) 추가로 지급되는 커미션이 없으면 0으로 조회가 되도록 조회
select nvl(comm, 0) as comm
    from emp;
    
-- 25) 급여가 800보다 같거나 많고 1000보다 같거나 작은 사원의 정보를 조회
select *
    from emp
    where sal >= 800 and sal <= 1000;

-- 26) 부서 번호가 20이면서 직업이 MANAGER인 사원 정보를 조회
select *
    from emp
    where deptno = '20'; and job = 'MANAGER';
    
-- 27) 부서 번호가 20이거나 직업이 manager인 사원 정보를 조회
select *
    from emp
    where deptno = '20' or job = 'manage';

-- 28) 직업이 manager 가 아닌 사원 정보를 조회
select *
    from emp
    where job != 'MANAGER';

-- 29) 커미션이 0, 500, 1400과 같은 사원 정보를 조회
select *
    from emp
    where comm in ( 0, 500, 1400 );

-- 30) 급여가 700보다 작거나 1000보다 큰 사원 정보를 조회
select *
    from emp
    where sal < 700 or sal >1000
    order by sal;
.
.
select * from emp where sal not between 700 and 1000; 

-- 31) 사원의 이름이 SCOTT 인 사원 정보를 조회
select *
    from emp
    where ename = 'SCOTT';
    
-- 32) 사원 이름이 'A' 로 시작하는 사원 정보를 조회
select *
    from emp
    where ename like 'A%';
    
-- 33) 이름에 S 가 들어가는 사원 정보를 조회
select * 
    from emp
    where ename like '%S%';
    
-- 34) 이름에 L 이 들어가지 않는 사원 정보를 조회
select * 
    from emp
    where ename not like '%L%';
    
-- 35) 이름에 세번째 문자가 I(알파벳 대문자 아이) 인 사원 정보를 조회
select *
    from emp
    where ename like '__I%';
    
    
-- 36) 사원의 이름이 E~G로 시작하는 사원 정보를 조회
select *
    from emp
    where ename >= 'E' and ename < 'H';
.
.
select * from emp where ename between 'E' and 'H' and ename != 'H'; 

-- 37) 사원의 입사일이 1981년 2월 20일 ~ 1982년 1월 23일까지 사원 정보를 조회
select *
    from emp
    where hiredate >= '1981-02-20' and hiredate <= '1982-01-23';
.
.
select * from emp where hiredate between '1981-02-20' and '1982-01-23'; 

-- 38) 입사일이 83년 이후 이거나 job 이 SALESMAN인 모든 사원을 조회
select *
    from emp
    where hiredate > '1983-12-31' or job = 'SALESMAN';
    
-- 39) 20번 부서가 아닌 모든 사원의 정보를 조회
select *
    from emp
    where deptno != 20;

-- 40) 급여가 600에서 3000 사이가 아닌 사원의 정보를 조회
select *
    from emp
    where sal  >= 600 and not sal <= 3000;
.
.
    
select * from emp where sal not between 600 and 3000; 

-- 41) 상사가 없는 사원을 조회
select *
    from emp
    where mgr is null;
    
-- 42) 매니저가 7782,2902,2698,7566 인 사원 정보를 조회
select * 
    from emp
    where mgr in ( 7782,2902,2698,7566 ) ;
    
-- 43) 부서 번호가 40,10,20 이 아닌 사원 정보를 조회
select *
    from emp
    where deptno not in ( 40, 10, 20 );
    
-- 44) 사원이 이름이 5 글자인 사원 정보를 조회
select *
    from emp
    where ename like '_____';
    
-- 45) 직업이 N 으로 끝나는 사원 정보를 조회
select * 
    from emp
    where job like '%N';
    
-- 46) 관리자 번호를 내림차순으로 정렬하여 사원 정보를 조회
select * 
    from emp
    order by mgr desc;
    
-- 47) 급여가 많은 순으로 사원 정보를 조회
select * 
    from emp
    order by sal desc;
    
-- 48) 사번, 이름, 관리자번호, 급여 정보를 조회할 때 관리자 번호를 오름차순, 부서번호는 오름차순으로 
--      정렬하여 사원 정보 조회
select empno, ename, mgr, sal
    from emp
    order by mgr, deptno;
 
 
-- 49) 직급이 'SALESMAN' 이면 15%, 'MANAGER' 이면 10%, 이외의 직종은 5% 급여를 인상하여 사원 정보를 조회
select job, sal, decode ( job, 'SALESMAN', sal*1.5, 'MANAGER', sal*1.1, sal*1.05) as "급여인상"
    from emp;
.
.
select 
case when job='SALESMAN' then sal1.5
       when job='MANAGER' then sal1.1
        else sal*1.05 end as updateSalary 
    from emp; 

-- human 데이터베이스에서 Department, Professor, Course , Student, SG_Scores 테이블에서 조회 해 주세요 
-- 50) Department 테이블의 모든 데이터를 조회
select *
    from department;
    
-- 51) Professor 테이블의 중복 되지 않은 Dept_ID 컬럼의 값들을 조회
select distinct dept_id
    from professor;
    
-- 52) Professor 테이블의 중복 되지 않은 Dept_ID 컬럼의 값들을 조회. 단,컬럼명은 소속학과
select distinct dept_id as "소속학과"
    from professor;

-- 53) Course 테이블에서 과목코드(course_id), 과목명(title), 학점수(c_number) 를 조회
select course_id, title, c_number
    from course;

-- 54) Course 테이블에서 과목코드(course_id), 과목명(title), 학점수(c_number) 를 과목명(title) 오름차순으로 조회
select course_id, title, c_number
    from course
    order by title;
    
-- 55) Course 테이블에서 과목코드(course_id), 과목명(title), 학점수(c_number), 과목별 수강료
--      (학점수 * 30000 + 추가수강료) 를 조회하되, 과목별 수강료를 내림차순, 과목코드는 오름차순으로 조회
select course_id, title, c_number, course_fees
    from course;
    
select course_id, title, c_number, ( c_number * 30000 ) + nvl(course_fees, 0)  as 추가수강료
    from course
    order by ( c_number * 30000 ) + nvl(course_fees, 0) desc, course_id asc;
    
.
.
select course_id as "과목코드", title as "과목명", c_number as "학점수", 
c_number30000 + nvl(course_fees, 0) as "과목별 수강료"  
from Course 
order by  c_number30000 + nvl(course_fees, 0) desc, course_id; 

    
-- 56) Professor 테이블에서 '컴공'학과의 교수명을 조회
select
    Professor_ID,
    Position,
    name
    from professor
    where dept_id = '컴공';

.
.
select Professor_ID, name, Position, dept_id from Professor where dept_id = '컴공'; 
    
    
-- 57) Course 테이블로부터 추가 수강료가 30000원 이상인 과목명을 조회하되, 추가 수강료를 내림차순으로 조회
select course_fees
    from course
    where course_fees >= 30000 
    order by course_fees desc;
.
.
select * 
    from Course 
    where course_fees >= 30000 
    order by course_fees desc; 


-- 58) Student 테이블에서 '컴공' 학과 2학년 학생의 학과, 학년, 성명을 조회
select dept_id, year, name
    from student
    where dept_id in ( '컴공' ) and year in ( '2' );
    

-- 59) Professor 테이블로 데이터를 조회할 때 'XXX 학과 XXX(이름)  XXX(직급)의 전화번호는 XXX 이다 '  
--      데이터 형태가 나오는 컬럼을 만들어 조회, 학과코드(dept_id) 순으로 정렬
select dept_id ||''|| '학과' ||' '|| name ||' '|| position ||'의 '|| '전화번호는'||' '||telephone||'이다' 
    from professor
    order by dept_id;

-- 60) Student 테이블에서 '이' 씨 성을 가진 학생 명단을 조회
select *
    from student
    where name like '이%';
    
-- 61) Student 테이블에서 이름의 중간 글자가 '정' 이 들어가 학생을 조회
select *
    from student
    where name like '%정%';
    
-- 62) Student 테이블에서 '이', '김' 씨 성을 제외한 학생 명단을 조회
select *
    from student
    where name not like '이%' and name not like '김%';

-- 63) Professor 테이블에서 학과 코드가 '컴공', '정통', 학과에 재직 중인 교수 명단을 학과코드 순으로 조회
select *
    from professor
    where dept_id in ( '컴공' ,'정통' ) and position like '%교수%'
    order by dept_id;
    
-- 64) Professor 테이블에서 학과 코드가 '컴공', '정통', 학과가 아닌 교수 명단을 학과코드 순으로 조회
select *
    from professor
    where dept_id not in ( '컴공' ,'정통' ) and position like '%교수%'
    order by dept_id;

-- 65) SG_Scores 테이블에서 성적(score)이 90점부터 94점까지 성적을 성적 내림차순으로 조회 , 
--       between~and 문 사용
select *
    from sg_scores
    where score between 90 and 94
    order by score desc;
    
-- 66) SG_Scores 테이블에서 성적이 60점부터 100점까지 제외한 성적을 성적 내림차순으로 조회, 
--       between~and 문 사용
select *
    from sg_scores
    where score not between 60 and 100
    order by score desc;
    
-- 67) Course 테이블에서 추가수강료가 null 인 행을 조회해서 과목명순으로 정렬하여 조회
select *
    from course
    where course_fees is null
    order by title;
    
-- 68) Course 테이블에서 추가수강료가 null 이 아닌 행을 조회해서 과목명순으로 정렬하여 조회
select *
    from course
    where course_fees is not null
    order by title;
    
/*
 human 데이터베이스에서 EC_Product, EC_Member, EC_Basket, EC_Order,  SG_Scores, Student 
 테이블에서 조회 해 주세요
*/

-- 69) 상품관리(EC_Product) 테이블에서 단가가 100만원을 초과하는 상품 목록의 상품코드, 상품명, 단가 를 조회
select product_code , product_name , unit_price
    from ec_product
    where unit_price > 100
    order by unit_price;
    
-- 70) 회원관리(EC_Member) 테이블로부터 서울에서 거주하는 회원의 사용자 
--      아이디, 회원명, 주민등록번호, 주소를 조회
select userid, name, regist_no, address
    from ec_member
    where address like '서울%';
    
-- 71) 장바구니(EC_Basket) 테이블에서 2018년 7월 11일에 주문한 고객과  주문 내용을 조회
select order_id , product_code
    from ec_basket
    where order_date = '2018-07-11';
    
-- 72) 주문처리(EC_Order) 테이블에서 결제한 회원 중에서 상품을 배달하지 않은 회원의 
--      주문번호, 상품코드, 주문수량, 결제방법, 결제금액, 결제일자, 구분 을 주문번호순으로 조회
select order_no , product_code , order_qty , csel, cmoney , cdate, gubun
    from ec_order
    where mdate is null
    order by order_id;
    
-- 73) 회원관리(EC_Member) 테이블에서 회원명에 '우' 가 들어간 회원의 회원ID, 회원명, 주민등록번호 조회
select userid, name, regist_no
    from ec_member
    where name like '%우%';
    
-- 74) 주문처리(EC_Order) 테이블에서 배달한 주문자 중에서 '신용카드'로 결제하지 않은 주문자의 
--      주문번호, 주문자ID, 상품코드, 결제방법, 구분을 주문자ID 로 정렬해서 조회
select order_no , order_id , product_code , csel , gubun
    from ec_order
    where gubun = '배달' and csel != '신용카드'
    order by order_id;
    
-- 75)상품관리(EC_Product) 테이블에서 상품의 단가가 30만원에서 50만원 이내의 상품 목록의 
--    상품코드, 상품명, 단가, 재고수량, 생산처 를 단가(unit_price) 내림차순으로 조회
select product_code, product_name, unit_price, left_qty, company
    from ec_product
    where unit_price <= 500000 and unit_price >= 300000
    order by unit_price desc;
    
-- 76) 주문처리(EC_Order) 테이블에서 '신용카드'로 결제한 행의 
--     주문번호, 주문자ID, 결제금액, 결제일자, 결제방법을 조회
select order_no, order_id, cmoney, cdate, csel
    from ec_order
    where csel = '신용카드';

-- 77) 주문처리(EC_Order) 테이블에서 결제하지 않은 행의 주문번호, 주문자ID, 
--     상품코드, 주문수량, 결제할 금액, 구분 을 조회
select order_no, order_id, product_code, order_qty, cmoney, gubun
    from ec_order
    where gubun is null;
    
-- 78) 주문처리(EC_Order) 테이블에서 'usko' 회원이 거래한 상품의 
--     주문자ID, 상품코드, 주문수량, 결제방법, 결제금액, 구분을 조회
select order_id, product_code, order_qty, csel, cmoney, gubun
    from ec_order
    where order_id = 'usko';
    
-- 79) 상품관리(EC_Product) 테이블에서 삼성(samsung) 회사의 제품의 
--     상품코드, 상품명, 단위, 단가, 재고수량, 생산처 를 상품명순으로 조회
select product_code, product_name, unit, unit_price, left_qty, company
    from ec_product
    where company = 'SAMSUNG';
    
-- 80) 상품관리(EC_Product) 테이블에서 '프린터' 제품의 단가(Unit_Price) 가 
-- 50만원을 초과하는 상품의 상품코드, 상품명, 단위, 단가, 재고수량, 생산처 를 단가 내림차순으로 조회
select product_code, product_name, unit, unit_price, left_qty, company
    from ec_product
    where product_name = '프린터' 
      and unit_price >= 500000;
      
-- 81) 회원관리(EC_Member) 테이블에서 '정' 씨 회원의 회원명, 주문등록번호, 전화번호, 가입일자 를 조회
select name, regist_no, telephone, timestamp
    from ec_member
    where name like '정%';
    
-- 82) 주문처리(EC_Order) 테이블에서 '현금입금' 과 '계좌이체' 한 
--     회원의 주문번호, 상품코드, 결제방법, 결제일자 를 결제방법, 결제일자 순으로 조회
select order_no, product_code, csel, cdate
    from ec_order
    where csel in ('현금입금','계좌이체')
    order by csel, cdate;
.
.
select order_no, product_code, csel, cmoney,cdate 
    from EC_Order 
    where csel in ('현금입금', '계좌이체') 
    order by csel, cdate; 

    
-- 83) 상품관리(EC_Product) 테이블에서 'HP' 회사의 '프린터' 제품에 대한 
--     상품코드, 상품명, 단위, 단가, 재고수량을 단가순으로 조회
select product_code, product_name, unit, unit_price, left_qty
    from ec_product
    where company = 'HP' and
          product_name = '프린터';
          
-- 84) 상품관리(EC_Product) 테이블에서 생산처가 '삼성(SAMSUNG)' 과 'LG전자' 가 아닌 
--     상품의 상품코드, 상품명, 단위, 단가, 재고수량, 생산처를 생산처, 단가 순으로 조회
select product_code, product_name, unit, unit_price, left_qty, company
    from ec_product
    where company not in ('SAMSUNG', 'LG전자')
    order by company, unit_price;
    
-- 85) 회원관리(EC_Member) 테이블에서 주소가 '서울' 과 '대구'가 아닌 
--     회원의 회원명, 주민등록번호, 전화번호, 주소를 주소순으로 조회
select name, regist_no, telephone, address
    from ec_member
    where address not in ( '서울%' , '대구%' );
.
.
.
select name, regist_no, telephone, address 
    from EC_Member 
    where address not like '서울%' and address not like '대구%' 
    order by address; 

-- 86) 상품관리(EC_Prodcut) 테이블에서 재고수량이 10 미만인 상품의 
--     상품코드, 상품명, 규격, 단가, 재고수량, 생산처를 상품명순으로 조회
select product_code, product_name, unit, unit_price, left_qty, company
    from ec_product
    where left_qty < 10;
    
-- 87) 회원관리(EC_Member) 테이블에서 전화번화가 '666' 이 포함된 회원의 
--     회원명, 주민등록번호, 전화번호, 주소를 회원명순으로 조회
select name, regist_no, telephone, address
    from ec_member
    where telephone like '%666%'
    order by name;
    
-- 88) 회원관리(EC_Member) 테이블에서 2018년 5월 1일 이후에 가입한 회원의 
--     회원명, 주민등록번호, 전화번호, 주소, 가입일자를 회원가입일자 순으로 조회
select name, regist_no, telephone, address, timestamp
    from ec_member
    where timestamp > '2018-05-01'
    order by timestamp; 
    
-- 89) 상품관리(EC_Product) 테이블에서 상품명이 '노트'로 시작하는 상품의 
--     상품코드, 상품명, 단위, 단가, 재고수량, 생산처를 생산처순으로 조회
select product_code, product_name, unit, unit_price, left_qty, company
    from ec_product
    where product_name like '%노트%'
    order by company;
    
-- 90) 상품관리(EC_Product) 테이블에서 'LG' 로 시작하는 생산처의 상품이 80만원을 
--     초과하는 상품코드, 상품명, 단위, 단가, 재고수량, 생산처를 상품코드순으로 조회
select product_code, product_name, unit, unit_price, left_qty, company
    from ec_product
    where company like '%LG%' and unit_price > 800000
    order by product_code;
    
-- 91) 상품관리(EC_Product) 테이블에서 생산처가 입력되지 않은 행의 
--     상품코드, 상품명, 단위, 단가, 재고수량, 생산처를 상품코드순으로 조회
select product_code, product_name, unit, unit_price, left_qty, company
    from ec_product
    where company is null
    order by product_code;
    
-- 92) 주문처리(EC_Order) 테이블에서 상품코드가 'CM01'이고 주문이 1개 초과 주문한 행의 
--     주문번호, 주문자ID, 상품코드, 주문수량, 결제 금액을 주문자ID 순으로 조회
select order_no, order_id, product_code, order_qty, cmoney
    from ec_order
    where product_code = 'CM01' and order_qty > 1
    order by order_id;
    
-- 93) 회원관리(EC_Member) 테이블에서 회원명이 '고'씨 부터 '최'씨를 제외한 회원을 
--     회원명, 주민등록번호, 전화번호, 주소를 회원명순으로 조회
select name, regist_no, telephone, address
    from ec_member
    where name not between '고' and '쵸'
    order by name;
    
--select name, regist_no, telephone, address
--    from ec_member
--    where name > '고' and name > '최'
--    order by name; ??

-- 94) 수강(SG_scores) 테이블에서 수강과목코드가 'L1011'과 'L1021' 과목의 학점을 취
--     득한 학생의 과목코드, 학번, 성적, 성적취득일자 를 과목코드, 학번순으로 조회
select course_id, student_id, score, score_assigned
    from sg_scores
    where course_id in ( 'L1011' , 'L1021' );
    
-- 95) 수강(SG_Scores) 테이블에서 성적이 80점 이상이 아닌 행의 
--     과목코드, 학번, 성적, 성적취득일자를 조회
select course_id, student_id, score, score_assigned
    from sg_scores
    where not score >= 80;

-- 96) 학생(Student) 테이블에서 학과코드가 '컴공' 과 '경영' 학과가 아닌 학생의 
--     학과코드, 학년, 학번, 성명, 전화번호를 학과코드, 학번순으로 조회
select dept_id, year, name, telephone
    from student
    where dept_id not in ( '컴공' , '경영' )
    order by dept_id, year;
.
.

select dept_id, year, student_id, name, telephone 
    from student 
    where dept_id not in ('컴공','경영') 
    order by dept_id, student_id; 
-----------------------------------------------------------------------

-- 9월 4일 숙제
/*
human 데이터 베이스에 해당 쿼리문을 실행해 주세요
emp, dept, dual 테이블에서 조회하세요
*/

-- 1) 각 부서 이름의 길이를 출력해 주세요
select dname, length (dname) as "부서이름 길이"
    from dept;

-- 2) 사원 이름의 길이가 6이상인 사원의 수를 조회
select ename , length (ename)
    from emp
    where length (ename) >= 6;

-- 3) 사원의 이름을 소문자로 출력
select ename , lower  (ename) as "소문자"
    from emp;
    
-- 4) 다음날 날짜를 출력
select sysdate as "오늘 날짜" , (sysdate+1) as "내일 날짜"
    from dual;

--------------------------------------------------------------------
-- 5) 사원의 근무 년수, 월수, 일수를 조회
select
    ename as 이름,
    trunc (sysdate - hiredate)as 일수,
    trunc (months_between(sysdate, hiredate)) as 월수,
    trunc (months_between(sysdate, hiredate)/12)as 년수
    from emp
;
--------------------------------------------------------------------

-- 6) 사원들의 입사일로 부터 1년 6개월이 지난 날을 출력
select hiredate, add_months(hiredate, 18) as "1년 6개월 후"
    from emp;

-- 7) 현재 시간을 'XXXX-XX-XX XX:XX:XX' 문자열로 출력
select sysdate ,
         to_char ( sysdate , 'YYYY-MM:DD HH24:MI:SS' ) as "문자열"
    from dual;

-- 8) 20번 부서의 커미션을 받은 사원의 수를 출력
select *
    from emp
    where  deptno = 20 and comm is not null;
    
-- 9) job 이 CLERK 인 사원의 평균 급여를 조회
select job, 
    avg ( sal ) as "평균 급여"
    from emp
    where job = 'CLERK'
    group by job;
    
select avg ( sal )
    from emp
    where job = 'CLERK';

-- 10) 사원들이 받는 커미션의 총합
select sum ( comm ) as "커미션 총합"
    from emp
    where comm is not null;

-- 11) 사원들이 받는 최대 최소 급여
select
    max ( sal ) as "최대급여",
    min ( sal ) as "최소급여"
    from emp;
    
-- 12) 부서별 급여 평균
select  job,
    trunc (avg ( sal )) as "부서별 평균급여"
    from emp
    group by job;
    
-- 13) 급여별 커미션을 받는 사원의 수를 출력
select 
    count(*) as "커미션받는 사원 수"
    from emp
    where comm is not null;
 
-- 14) 급여가 2000이상인 부서별 사원수를 출력
select job,
    count(*) as "사원수"
    from emp
    where sal >= 2000
    group by job
    order by job;
    
    
-- 15) 부서별 평균 급여가 1700이상인 부서번호와 평균 급여를 조회
select 
    empno,
    avg ( sal ) as "평균급여"
    from emp
    group by empno
    having avg ( sal ) >= 1700
    order by empno;

-- 16) 1200 이상의 급여를 받는 사원들의 부서별 평균 급여가 1900이상인 부서번호와 평균급여를 출력
select 
    empno,
    avg ( sal ) as "평균급여"
    from emp
    where sal >= 1200
    group by empno
    having avg ( sal ) >= 1900
    order by empno
    ;

-- 17) 직책이 PRESIDENT 가 아닌 사원에 대한 부서별 급여 합이 6000이상인 부서와 급여합을 조회
select 
    job,
    sum ( sal ) as "급여 합"
    from emp
    where job != 'PRESIDENT'
    group by job
    having sum ( sal ) >= 6000;

-- 18) 20과 30 부서에서 최대 급여를 받는 사람의 최대 급여를 조회
select 
    deptno,
    max ( sal )
    from emp
    where deptno in ( 20, 30 )
    group by deptno;
    
-- 19) 'HELLO' 문자열을 소문자로 변환하고, 'welcome' 문자열을 대문자로 변환
select 
    lower ( 'HELLO' ) as "소문자",
    upper ( 'welcome' ) as "대문자"
    from dual;

-- human 데이터베이스에서 Department, Professor, Course , Student, SG_Scores 테이블에서 조회 해 주세요

-- 20) Course 테이블의 Title과 Title 컬럼의 문자열 길이와 바이트 단위로 계산하여 문자열 길이 내림 차순으로 
--      조회하세요 LENGTHB(str) : 문자열 길이를 바이트 단위로 계산
select 
    title,
    length ( title ) as "title 문자열길이",
    lengthb ( title )
    from course
    order by length ( title ) desc;
    
-- 21) Professor 테이블에서 교수명을 교수의 성을 추출하고, Email 주소에서 '@' 문자가 나타나는 위치를 
--      교수명 순으로 출력
select 
    substr ( name , 1 , 1 ),
    instr ( email , '@' )
    from professor
    order by substr ( name , 1 , 1 );
    
-- 22) 'xyxyxHello' 문자열에서 'x' 나 'y' 문자를 제거하세요
select 
    substr ( 'xyxyxHello' , 6 , 9 )
    from dual;
    
select 
    ltrim ('xyxyxHello',  'xyxyx' )
    from dual;

--      LTRIM (str, [제거할 문자 집합]) : 왼쪽부터 문자집합을 제거 [제거할 문자 집합] 생략하면 공백이 제거된다
--      RTRIM 도 LTRIM 사용법과 동일

-- 23) 'Oracle Serverkkkk' 문자열의 'k' 문자를 제거하시오
select 
    rtrim ('Oracle Serverkkkk' , 'kkkk')
    from dual;
    
-- 24) Professor 테이블의 교수명, 직위, 교수명과 직위를 결합하여 교수번호순으로 출력
select 
    name ||' : '|| position || ', ' || duty as "Professor"
    from professor
    order by professor_id;

-- 25) 교수용 Email 서버의 도메인명이 'cyber' 에서 'dream' 으로 변경되었다 . 
--      이를 변경하여 교수명순으로 출력
--      Replace(str, 기존문자, [대체문자열]) : 기존문자를 대체문자열로 변환
select 
    name,
    replace ( email , 'cyber' , 'dream' ) as "email"
    from professor
    order by name;
       
-- 26) 12.345 값을 소수점 2번째 자리까지 출력
select 
    trunc ( 12.345 , 2 )
    from dual;
    
-- 27) 100을 3으로 나누어 몫과 나머지를 계산하여 출력
select 
    floor (100 / 3 ) as "몫",
    mod ( 100 , 3 ) as "나머지"
    from dual;

-- 28) 현재 날짜를 출력
select sysdate as "현재 날짜"
    from dual;
    
-- 29) 현재 날짜에 10개월을 더하여 조회
select 
    sysdate,
    add_months ( sysdate , +10 )
    from dual;
    
-- 30) Student 테이블의 '컴공'학과 학생들에 대한 재적월수를 계산하여 출력. 기준일은 CURRENT_DATE 임
select 
    sysdate as "현재",
    i_date "과거",
    trunc ( months_between ( current_date, i_date ) ) as "재적월수"
    from student
    where dept_id = '컴공';

select *
    from student;
    
---------------------------------------------------------------------------------------

-- 31) Student 테이블의 주민등록번호를 이용하여 생년월일을 추출하고 날짜형 데이터로 
--      'RRMMDD', 'YYMMDD' 로 각각 변환하여 'YYYY/MM/DD' 형식으로 출력
select
    to_char ( ( substr ( id_number , 1 , 6 ) ) , 'yymmdd' )
from student
;

select student_id, name, id_number,
       to_date(substr(id_number, 1, 6), 'RRMMDD') "RR/MM/DD",
       to_date(substr(id_number, 1, 6), 'YYMMDD') "YY/MM/DD"
  from student
;

select 
    student_id, 
    name, id_number, 
    to_date(substr(id_number, 1,6), 'RRMMDD') as r1, 
    to_date(substr(id_number, 1,6), 'YYMMDD') as y1 
    from student; 


---------------------------------------------------------------------------------------

-- 32) 현자 날짜와 시간을 'YYYY-MM-DD HH24:MI:SS FF3' 형식으로 변환하여 출력
select 
    to_char ( systimestamp , 'YYYY-MM-DD HH24:MI:SS FF3')
    from dual;
    
select 
    to_char ( sysdate , 'YYYY-MM-DD HH24:MI:SS' )
    from dual;

-- 33) Student 테이블의 입학날짜(I_Date) 컬럼을 참고하여 'RRRR/MM/DD (DAY)' 형식으로 
--       변환하여  입학일자순으로 출력
select 
    name,
    to_char ( i_date , 'RRRR/MM/DD' ) as "입학날짜"
    from student 
    order by i_date
;

-- 34) SG_Scores 테이블의 성적(Score) 이 98점 이상자에 대하여 성적 취득일자를 
--      'YYYY/MM/DD' 형식의 문자형으로 변환하여 출력
select 
    score,
    to_char ( score_assigned , 'YYYY/MM/DD' ) as "변환"
    from sg_scores
    where score >= 98
;

-- 35) SG_Scores 테이블로부터 점수가 98점 이상의 점수를 문자형으로 변환하여 출력
select 
    to_char ( score )
    from sg_scores
    where score >= 98
;
    
select *
    from sg_scores;
    
-- 36) SG_Scores 테이블의 성적이 98점 이상인 행에 대하여 성적을
--      'S999', 'B999', '0.99.99' 형식으로 변환하여 출력
select 
    to_char ( score , 'S999' ) as "S999",
    to_char ( score , 'B999' ) as "B999",
    to_char ( score , '999.99' ) as "0.99.99"
    from sg_scores
    where score >= 98
;

-- 37) Course 테이블의 추가 수강료가 4만원 과목에 대하여 문자열로 변환하여 
--      '999,999', 'L999,999', 'C999G999' 형식으로 출력
select 
    to_char ( course_fees , '999,999' ) as "999,999",
    to_char ( course_fees , 'L999,999' )as "L999,999",
    to_char ( course_fees , 'C999G999' )as "C999G999"
    from course
    where course_fees = 40000
;

-- 38) Course 테이블의 추가 수강료가 4만원 (4 * 10**4) 인 과목에 대하여 문자열로 변환하여 
--     '9.99EEEE' 지수형식으로 변환하여 출력
select 
    to_char ( course_fees , '9.99EEEE' ) as "9.99EEEE"
    from course
    where course_fees = 40000
;
.
.

select 
    course_fees, 
    to_char(course_fees, '9.99EEEE') 
    from Course 
    where course_fees = 40000
    ; 


-- 39) '$123.45' 문자열을 숫자형으로 변환
select 
    to_number ( '$123.45', '$999,999.99')
    from dual
;

-- 40)Course 테이블에서 Course_Fees 가 null 일 때 0 으로 변환하여 출력
select 
    course_fees , nvl ( course_fees , 0 ) as "course_fees1"
    from course
;

-- 41) Course 테이블에서 추가수강료(Course_fees) 가 null 이 아닌 과목 
--     중에서 4만원 미만인 행을 조회
select *
    from course
    where course_fees is not null and course_fees < 40000
;

-- 42) Course 테이블의 추가수강료를 5% 인상 금액을 출력
select 
    course_fees ,
    course_fees * 1.05
    from course 
;

select 
    course_id, course_fees, 
    nvl2(course_fees, course_fees*1.05, 0) 
    from Course; 


-- 43) '컴퓨터공학과' 학생의 주민등록번호를 이요하여, 
--     성별코드가 '1'과 '3' 일 때 '남', '2'와 '4' 일 때 '여'로 변화하여 출력, decode 문 사용
select 
    id_number as "주민번호",
    decode 
    (substr(id_number , 8 ,1), 
    '1' , '남자' , '3' , '남자',
    '2' , '여자' , '4' , '여자') as "주민번호 성별" 
    from student
    where dept_id = '컴공'
;


-- 44)'C1601' 학번에 대하여 SG_Scores 테이블의 성적을 
--    'A'(90~100), 'B'(80~89), 'C'(70~79), 'D'(60~69), 'F'(0~59) 
--    등급으로 변환하여 과목코드순으로 출력, case when 사용
select 
    student_id, course_id, score,
    case when score >= '90' then 'A'
         when score >= '80' then 'B'
         when score >= '70' then 'C'
         when score >= '60' then 'D'
         else 'F'
    end "등급"
    from sg_scores
    where student_id = 'C1601'
    order by "등급"


-- 45)Professor 테이블에서 직위를 
--    '총장', '교수', '부교수', '조교수', '초빙교수' 의 직위별, 학과코드순으로 출력
select *
    from professor
    order by decode
    ( position, '총장' , 1,
                '교수' , 2,
                '부교수', 3,
                '조교수', 4,
                '초빙교수', 5), professor_id
;

/*
human 데이터베이스에서 
EC_Product, EC_Member, EC_Basket, EC_Order,  T_SG_Scores 테이블에서 조회 해 주세요
*/

-- 46) 회원관리(EC_Member) 테이블에서 '서울' 거주자에 대하여 회원명의 
--     성씨를 추출하여 회원명, 성, 전화번호, 주소를 출력
select 
    name,
    substr ( name, 1, 1),
    telephone,
    address
    from ec_member
    where address like '서울%'
;

-- 47) 상품관리(EC_Product) 테이블에서 모든 컴퓨터 제품의 재고 수량을 단위와 결합하여 
--     상품코드, 상품명, 단위, 재고수량, 생산처를 출력, concat 사용
select
    product_code,
    product_name,
    concat (left_qty, unit),
    company
    from ec_product
;

-- 48) 주문처리(EC_Order) 테이블에서 결제금액이 100만원 이상 결제한 주문자의 
--     결제일자(CDate) 를 년월('YYYY/MM') 형식으로 변환하여 출력
select 
    to_char ( cdate , 'YYYY/MM' )
    from ec_order
    where cdate is not null and cmoney >= 1000000
    order by cdate;
;
    
-- 49) 회원관리(EC_Member) 테이블에서 현재일자 기준으로 회원가입기간을 
--     'xx년 xx월' 로 계산하여 1년 이상인 회원을 출력
select
    Current_DATE as "기준일자",
    trunc(months_between(Current_DATE, Timestamp) /12)||'년'||
    mod(trunc(months_between(Current_DATE, Timestamp)),12) ||'월' as "가입기간"
    from ec_member
    where trunc(months_between(Current_DATE, Timestamp)/12) >= 1
    order by name
;

-- 50) 상품관리(EC_Product) 테이블에서 상품명을 '개인용컴퓨터','노트북컴퓨터',
--     '프린터','TV', 기타 출력순을 1순위로, 단가 내림차순 2순위로 정렬해서 출력
select *
    from ec_product
    order by decode
    ( product_name, 
    '개인용컴퓨터' , 1,          
    '노트북컴퓨터' , 2,
    '프린터', 3,
    'TV', 4,
    '기타', 5), unit_price desc
;

/*
human 데이터베이스에서 
Department, Professor, Course , Student, SG_Scores 테이블에서 조회 해 주세요
*/

-- 51) Student 테이블의 행의 수와 Email 이 저장된 행의 수를 조회
--     count(*) : 테이블의 모든 행의 수를 조회
select 
    count(*),
    count(DISTINCT email)
    from student
;

-- 52) SG_Scores 테이블에서 'C1701' 학번의 취득과목수를 조회
select
    count(*) as "취득과목수"
    from sg_scores
    where student_id = 'C1701'
;

-- 53)SG_Scores 테이블에서 과목코드 'L1031', 'SQL응용' 의 최고 점수와 최저 점수를 조회
-- SG_Scores 테이블에서 과목코드가 'L1031','SQL응용' 과목명의 성적에 대한 총점과 평균을 조회

select
    sum ( score ) as "총점",
    avg ( score ) as "평균"
    from sg_scores
    where course_id = 'L1031' and course_id ='SQL응용'
;

-- 54) SG_Scores 테이블에서 과목코드가 'L1031','SQL응용' 과목명의 성적에 
--     대한 표준편차, 분산을 조회
select
    stddev ( score ) as "표준편차",
    variance ( score ) as "분산"
    from sg_scores
    where course_id = 'L1031' and course_id ='SQL응용'
;
    
-- 55) Professor 테이블을 이용하여 학과별 교수 인원수를 조회
select 
    dept_id,
    count(*) as "학과별 교수인원수"
    from professor
    group by dept_id
;
-- 56) Professor 테이블을 이용하여 학과별 교수 인원수가 1명인 학과를 조회
select 
    dept_id,
    from professor
    where position = '교수'
    group by dept_id;

--------------------------------------------------------------------------------

-- 57) SG_Scores 테이블에서 학번별의 8과목 이상을 취득한 학번의 과목수와 평균을 학번순으로 조회
select 
    student_id, 
    count(1) "취득과목수",
    to_char(avg(score),'99.99') "평균"
    from sg_scores
    group by student_id
    having count(1) >= 8
    order by 1
;
------------------------------------------------------------------------------------------

-- 58) Student 테이블로부터 학과별/학년별 인원수를 계산하여 학과별/학년별로 조회
select 
    dept_id, 
    year, 
    count(*) "인원수"
    from student
    group by dept_id, year
    order by dept_id, year
;
------------------------------------------------------------------------------------------

-- 59) 주문처리(EC_Order) 테이블에서 결제한 결제년월별로 결제년월, 주문건수, 
--     주문수량 합계,  결제금액 합계 를 계산하여 결제년월순으로 출력
select 
    to_char(cdate, 'YYYY/MM'), 
    count(cdate) as "주문건수",
    sum(order_qty) as "주문수량 합계", 
    sum(cmoney) as "결제합계"
    
    from ec_order 
    where cdate is not null 
    group by to_char(cdate, 'YYYY/MM')
    order by to_char(cdate, 'YYYY/MM') ; 

--------------------------------------------------------------------------------

-- 60) 회원관리(EC_Member) 테이블에서 남,여 회원수를 조회, 단, 성별코드가 
--     1또는 3이면 남자, 2 또는 4이면 여자
select
    count 
    (decode
    (substr(regist_no , 8 ,1), 
    '1' , '남자', '3' , '남자')) as "남자 회원수",
    count 
    (decode
    (substr(regist_no , 8 ,1),
    '2' , '여자' , '4' , '여자' ))as "여자 회원수"
    from ec_member;
.
.
select
    decode(substr(regist_no , 8 ,1), 
    '1' , '남자', '2' , '여자' , '3' , '남자' , '4' , '여자') as "성별",
    count (*) as "회원수"
    from ec_member
    group by decode(substr(regist_no , 8 ,1), 
    '1' , '남자', '2' , '여자' , '3' , '남자' , '4' , '여자');

--------------------------------------------------------------------------------

-- 61) 주문처리(EC_Order) 테이블에서 년월별 결제금액이 가장 많은 금액을 결제년월별순으로 출력

select 
    to_char (cdate, 'YYYY/MM') "결제년월",
    max(cmoney) "결제최대금액"
    from  ec_order 
    where cdate is not null 
    group by to_char(cdate, 'YYYY/MM') 
    order by to_char(cdate, 'YYYY/MM') ; 


--------------------------------------------------------------------------------


-- 24.09.05 숙제

/*
human 데이터 베이스에 해당 쿼리문을 실행해 주세요
emp, dept, salgrade 테이블에서 조회하세요
join 이 필요한 곳에서는 join 으로 쿼리문을 작성하세요 
*/

-- 1. 사원들의 이름과 사번을 조회
select 
    ename, empno
    from emp;

-- 2. job 이 CLERK 인 사원들의 이름과 부서명을 조회
select 
    e.job, e.ename, d.dname
    from emp e , dept d
    where e.deptno = d.deptno 
    and e.job = 'CLERK'
    order by e.ename
;

-- 3. 급여가 2600 이상인 사원의 이름과 부서명을 조회
select 
    e.ename, d.dname , e.sal
    from emp e , dept d
    where e.deptno = d.deptno 
    and e.sal >= '2600'
    order by e.sal
;
-- 4. 사원의 급여와 상사의 급여을 조회 - self join 사용 , self join : 같은 테이블을 조인
select 
    e1.empno as 직원번호,
    e1.sal as 직원_급여,
    e1.mgr as 매니저_직원번호,
    e2.sal as 매니저_급여
    
    from emp e1, emp e2
    where e1.mgr=e2.empno
;

-- 5. 사원번호와 관리자의 사원번호를 출력. 단, 관리자가 없어도 출력
select 
    empno as 사원번호,
    mgr as 관리자_사원번호
    from emp
;

-- 6. 사원 이름과 사원이 다니는 부서명을 조회. 단, 사원이 존재하지 않는 부서는 부서명만 출력
select
    d.dname as 부서명, 
    e.ename as 사원이름
    from dept d left join emp e on e.deptno = d.deptno 
    order by dname
;

-- 7. 부서번호가 20인 사원의 사번, 부서번호, 부서위치를 출력
select
    e.ename as 이름 , 
    e.empno as 사번 , 
    d.deptno as 부서번호 , 
    d.loc as 부서위치
    from dept d join emp e on d.deptno = e.deptno and e.deptno = 20
    order by e.empno
;
    
-- 8~14번은 서브 쿼리를 사용해서 쿼리문 작성하세요
-- 8. JAMES 사원의 부서이름을 조회
select
    ename as 사원이름,
    ( select dept.dname
        from dept
        where dept.deptno = emp.deptno ) as 부서이름
    from emp 
    where ename = 'JAMES' 
;

-- 9. 평균 급여보다 많이 받는 사원의 이름과 급여를 이름과 급여 순으로 내림차순으로 정렬
select 
    ename as 사원이름,
    sal as 급여,
    
    ( select 
    trunc (avg ( sal )) 
    from emp ) as 평균급여
    
    from emp
    where sal  > ( select avg ( sal ) from emp ) 
    order by sal desc
;

-- 10. 10번 부서의 최대 급여와 같은 급여를 받는 사원번호와 이름 조회
select 
    empno as 사원번호 ,
    ename as 사원이름 ,
    sal as 급여
    from emp
    where deptno != '10' and sal = 
    (select 
     max (sal) as "10번부서 최대급여"
    from emp
    where deptno = 10 )
    
;

-- 11. 20번 부서의 최대 급여보다 많이 받는 사원 번호와 이름 조회
select
    empno as 사원번호 ,
    ename as 사원이름,
    sal as 급여
    from emp
    where deptno != '20' and sal >
    ( select
        max ( sal ) as "20번부서 최대급여"
        from emp
        where deptno = '20' )
;

-- 12. BLAKE 를 상사로 둔 사원정보를 조회
select *
    from emp
    where mgr in
    ( select empno
        from emp
        where ename = 'BLAKE');        
        
select *
    from emp e1 join emp e2 on e1.mgr=e2.empno 
    where e2.ename = 'BLAKE'
;

----------------------------------------------------------XXXXX

-- 13. 부하 직원이 있는 사원 정보를 조회
-- 모르겠습니다 !!!!!!!!
-- 접근방식이 떠오르질 않습니다

---------------------------------------------------------------


-- 14. 부하 직원이 없는 사원 정보를 조회



---------------------------------------------------------------
/*
human 데이터베이스에서 Department, Professor, Course ,  T_Course, Student, 
SG_Scores 테이블에서 
조회 해 주세요
*/

-- 15. 새로운 개설 과목을 T_Course 테이블에 저장하시오. 
--     과목코드는 'L1061', 과목명이 'ERP실무', 
--     3학점이며, 담당교수가 'P12' 이고 추가 수강료는 50000원 이다
insert into 
T_Course ( course_id , title, c_number, professor_id, course_fees )
values 
( 'L1061', 'ERP실무' , 3 , 'P12' , 50000 )
;
.
.
select *
    from t_course;

-- 16. 새로운 개설 과목을 T_Course 테이블에 저장하시오. 
--     과목코드는 'L1062', 과목명이 '그룹웨어구축', 3학점이며, 담당교수가 'P13' 이고 
--     추가 수강료는 40000원 이다
insert into T_Course 
( course_id, title, c_number, professor_id, course_fees )
values
( 'L1062' , '그룹웨어구축' , 3 , 'P13' , 40000 );
.
.
select *
    from t_course;
    
    

-- 17. 학번이 'B1701', 과목코드가 'L1051', 성적이 85점, 성적취득날짜는 2018년 6월 28일 이다. 
--       SG_Scores 테이블에 저장하세요
insert into sg_scores
( student_id, course_id, score, grade, score_assigned )
values
( 'B1701', 'L1051', 85, null , '2018-06-28' );
.
.
select *
    from sg_scores;



------------------------------------------------------------------------------
-- 18. 과목코드 'L3041', 과목명이 'JQUERY', 3학점, 교수번호가 'P31' , 
--     추가 수강료가 30000원이다 Course 테이블에 저장하세요
select *
    from course;
    
insert into course
( course_id , title , c_number , professor_id , course_fees )
values
( 'L3041' , 'JQUERY' , 3 , 'P31' , 30000 );

-- 무결성 제약조건(C##HUMAN.COURSE_FK)이 위배되었습니다- 부모 키가 없습니다
-- 라고 합니다 .. 

------------------------------------------------------------------------------

-- 19. 과목코드가 'L1031', 과목명이 'SQL' , 3학점, 담당교수가 'P12', 
--     추가 수강료는 30000원이다. Course 테이블에 저장하세요
select *
    from course;
    
insert into course
( course_id , title , c_number , professor_id , course_fees )
values
( 'L1031' , 'SQL' , 3 , 'P12' , 30000 );

-- 무결성 제약조건(C##HUMAN.COURSE_FK)이 위배되었습니다- 부모 키가 없습니다
-- 라고 합니다 .. 

------------------------------------------------------------------------------

-- 20. 과목명이 '정보보안',3학점, 담당교수가 'P22', 추가 수강료는 30000원이다. 
--     Course 테이블에 저장하세요
select *
    from course;
    
insert into course
( course_id , title , c_number , professor_id , course_fees )
values
( 'null' , '정보보안' , 3 , 'P22' , 30000 );

-- course_id 를 null을 하니까 들어가네요 

-- 21. 컴퓨터공학과의 신임 교수번호는 'P14', 교수명은 조성우, 직위는 조교수, 
--     전화번호는 765-4114 이다. Professor 테이블에 저장하세요.
select * 
    from professor;
    
insert into professor
( professor_id , name, position, dept_id, telephone, email, duty, mgr )
values
( 'P14' , '조성우' , '조교수' , '컴공' , '765-4114' , null , null , null );

-- 22. '컴공' 학과 2학년에 박은혜 학생이 편입하였다. 학번은 C1731 , 
--      주민등록번호는 011109-4*****, 이메일주소는 c1731@cyber.ac.kr 이다.
--      Student 테이블에 저장하세요
select *
    from student;
insert into student
( dept_id , year , student_id , name, id_number, address, telephone, email, status, i_date )
values
( '컴공' , 2 , 'C1731' , '박은혜' , '011109-4*****' , null , null , 'c1731@cyber.ac.kr', null, null );

-- 23. 'C1731'  의 박은혜 학생의 주민등록번호가 잘못 등록되었다. 주
--       민등록번호를 '011119-4****** 로 수정하여 저장하세요
select *
    from student;

update student set id_number = '011119-4******' where student_id = 'C1731';

--------------------------------------------------------------------------------

-- 24. 컴퓨터공학과에 시간강사를 위촉하였다. 교수번호가 'P91', 교수명은 'Bob Miner' , 
--     직위는 '시간강사' , 전화번호는 '765-4119' 이다. Professor 테이블에 저장
select *
    from professor;
insert into professor
( professor_id , name, position, dept_id, telephone, email, duty, mgr )
values
( 'P91', 'Bob Miner' , '강사' , '컴공' , '765-4119' , null , null , null );

-- 체크 제약조건(C##HUMAN.PROFESSOR_CK)이 위배되었습니다
-- 라고 뜹니다 !!

--------------------------------------------------------------------------------

-- 25. 학번이 'C1731', 과목코드가 'L1021', 성적이 97점, 성적취득날짜는 2018년 6월 28일 이다. 
--       SG_Scores 테이블에 저장하고 출력해 주세요
select *
    from SG_Scores;
insert into SG_Scores
( student_id, course_id, score, grade, score_assigned )
values
( 'C1731', 'L1021', 97, null, '16/06/28' );
-- 무결성 제약조건(HR.SG_SCORES_FK1)이 위배되었습니다- 부모 키가 없습니다
-- 음.. 

--------------------------------------------------------------------------------

-- 26. Department 테이블의 학과명의 값을 '컴퓨터정보계열' 로 수정하세요
select *
    from Department;
    
alter table Department rename column dept_name to 컴퓨터정보계열;


-- 27. Course 테이블의 과목명 'Delphi' 를 '델파이' 로 변경해 주세요
select *
    from course;

update course set title = '델파이' where course_id = 'L1042';


--------------------------------------------------------------------------------


-- 28. 학번이 'C1601', 과목코드가 'L1021' 의 성적이 85점을 105점으로 잘못 입력하였다. 
--       SG_Scores 테이블의 성적을 변경하세요
select *
    from SG_Scores;
    
update SG_Scores set score = '85' where course_id = 'L1021' and student_id = 'C1601';



-- 29. SG_Scores 테이블에서 'L2061' 과목의 수강신청자를 검색하여 확인하고, 
--      아래 표를 참고하여 성적을 입력하세요
select *
    from SG_Scores;


-- 열 추가 
alter table SG_Scores add 과목명 varchar(10);


-- 컬럼 숨기기
alter table SG_Scores modify score invisible;
alter table SG_Scores modify grade invisible;
alter table SG_Scores modify score_assigned invisible;


-- 컬럼 보이기
alter table SG_Scores modify score visible;
alter table SG_Scores modify grade visible;
alter table SG_Scores modify score_assigned visible;


-- 타입변경
alter table SG_Scores modify 과목명 varchar2(30);


-- 입력값
insert into  SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned )
values
( 'C1701', 'L2061', null, 87, null, '18/12/26');

insert into  SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned )
values
( 'C1702', 'L2061', null, 95, null, '18/12/26');
    
insert into  SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned )
values
( 'C1601', 'L2061', null, 99, null, '18/12/26');

insert into  SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned )
values
( 'C1602', 'L2061', null, 93, null, '18/12/26');

--- 무결성 제약조건(HR.SG_SCORES_FK2)이 위배되었습니다- 부모 키가 없습니다
-- 으아아아!! 이건 뭘 건드려야할지 모르겠습니다

--------------------------------------------------------------------------------



-- 30. Course 테이블의 과목코드 'L0012' 이고 과목명이 '문학과 여행' 인 과목을 삭제하시오
select *
    from Course;
-- L0012, 문학과 여행, 2, null , null
delete from Course where course_id = 'L0012' and title = '문학과 여행';



-- 31. 위의 정보를 T_Course 테이블에 저장하고 조회하세요
select *
    from t_course;

-- 데이터 크기 변경
alter table t_course modify title varchar2(25); //varchar2

-- 값 추가
insert into t_course
( course_id, title, c_number, professor_id, course_fees )
values
( 'L3001', '스프링 프로젝트', 3, 'P11' , 50000);

insert into t_course
( course_id, title, c_number, professor_id, course_fees )
values
( 'L3002', '모바일프로그래밍', 3, 'P12' , null);

insert into t_course
( course_id, title, c_number, professor_id, course_fees )
values
( 'L3003', '데이터베이스튜닝', 2, 'P13' , 50000);

insert into t_course
( course_id, title, c_number, professor_id, course_fees )
values
( 'L3004', '빅데이터 개론', 2, 'P14' , 30000);



-- 32. T_SG_Scores 테이블에 저장후 조회
select *
    from T_SG_Scores;
    
-- 열 추가 
alter table T_SG_Scores add 과목명 varchar(30);
alter table T_SG_Scores add name varchar(20);

-- 컬럼 숨기기
alter table T_SG_Scores modify student_id invisible;
alter table T_SG_Scores modify course_id invisible;
alter table T_SG_Scores modify 과목명 invisible;
alter table T_SG_Scores modify score invisible;
alter table T_SG_Scores modify grade invisible;
alter table T_SG_Scores modify score_assigned invisible;

-- 컬럼 보이기
alter table T_SG_Scores modify student_id visible;
alter table T_SG_Scores modify course_id visible;
alter table T_SG_Scores modify 과목명 visible;
alter table T_SG_Scores modify score visible;
alter table T_SG_Scores modify grade visible;
alter table T_SG_Scores modify score_assigned visible;
-- 컬럼숨기기 하고 컬럼보이기를 하면 속성순서가 바뀌었는데 이건 안바뀌네요.. !!

-- 입력값 삽입
insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned )
values
( 'C1801', 'L3001', '스프링 프로젝트', NULL, 3, '2018/02/23');

insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned )
values
( 'C1801', 'L3002', '모바일프로그래밍', NULL, 3, '2018/02/23');

insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned )
values
( 'C1801', 'L3003', '데이터베이스튜닝', NULL, 2, '2018/02/23');

insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned )
values
( 'C1801', 'L4001', '빅데이터 개론', NULL, 2, '2018/02/23');


insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name)
values
( 'C1802', 'L3001', '스프링 프로젝트', NULL, 3, '2018/02/24', '신지애');

insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name)
values
( 'C1802', 'L3002', '모바일프로그래밍', NULL, 3, '2018/02/24', '신지애');

insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name )
values
( 'C1802', 'L3003', '데이터베이스튜닝', NULL, 2, '2018/02/24', '신지애');

insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name )
values
( 'C1802', 'L1051', '웹서버 관리', NULL, 2, '2018/02/24', '신지애');



-- 33. T_SG_Scores 테이블의 'C1802' 학번의 신지애 학생이 수강신청한 L1051 과목을 L3004  
--      빅데이터 개론 수강 과목으로 변경해 주세요
select *
    from T_SG_Scores;

update T_SG_Scores set course_id = 'L3004' where student_id = 'C1802' and 과목명 = '웹서버 관리';
update T_SG_Scores set 과목명 = '빅데이터 개론' where student_id = 'C1802' and course_id = 'L3004';


-- 34. T_SG_Scores 테이블에 위의 내용을 저장하고 조회
select *
    from T_SG_Scores;
    
-- 교수번호 삽입
alter table T_SG_Scores add 교수번호 varchar(20);

-- 값 입력 ( 교수번호 P11 )
insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name, 교수번호 )
values
( 'C1001', 'L3001', '스프링프로젝트', '98', NULL, '2018/06/28', NULL, 'P11');

insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name, 교수번호 )
values
( 'C1002', 'L3001', '스프링프로젝트', '88', NULL, '2018/06/28', NULL, 'P11');

-- 값 입력 ( 교수번호 P12 )
insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name, 교수번호 )
values
( 'C1001', 'L3002', '모바일프로그래밍', '97', NULL, '2018/06/28', NULL, 'P12');

insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name, 교수번호 )
values
( 'C1001', 'L3002', '모바일프로그래밍', '92', NULL, '2018/06/28', NULL, 'P12');


-- 값 입력 ( 교수번호 P13 )
insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name, 교수번호 )
values
( 'C1001', 'L3003', '데이터베이스튜닝', '92', NULL, '2018/06/28', NULL, 'P13');

insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name, 교수번호 )
values
( 'C1002', 'L3003', '데이터베이스튜닝', '93', NULL, '2018/06/28', NULL, 'P13');


-- 값 입력 ( 교수번호 P14 )
insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name, 교수번호 )
values
( 'C1001', 'L3004', '빅데이터 개론', '89', NULL, '2018/06/28', NULL, 'P14');

insert into T_SG_Scores
( student_id, course_id, 과목명, score, grade, score_assigned, name, 교수번호 )
values
( 'C1002', 'L3004', '빅데이터 개론', '97', NULL, '2018/06/28', NULL, 'P14');



-- 35. 과목코드 'L2033' 의 '게임프로그래밍' 개설과목이 폐강되었다. 
--       T_Course 테이블에서 'L2033' 과목코드를 삭제하시오
select *
    from T_Course;

delete from T_Course where course_id = 'L2033' and title = '게임프로그래밍';


-- 36. T_Course 테이블의 과목코드가 'L1031' 과목명이 'SQL' 의 추가수강료를 30000원으로 수정하시오
select *
    from T_Course;
update T_Course set course_fees = '30000' where course_id = 'L1031' and title = 'SQL응용';



-- 37. T_Course 테이블에서 과목코드가 'L4' 로 시작하는 과목코드들을 삭제하세요
select *
    from T_Course;
delete from T_Course where course_id like 'L4%';



-- 38. Professor 테이블과 Course 테이블을 이용하여 교수가 최소한 과목 이상을 담당하고 있는 
--      교수의 교수번호, 교수명, 직위, 과목명, 학점수를 교수번호순으로 출력
select *
    from Professor;
select *
    from Course;
    
select
    p.professor_id,
    p. name,
    p.position,
    c.title,
    c_number
    from Professor p left join Course c on p.professor_id = c.professor_id
    where c.professor_id is not null and c.C_number is not null
    order by p.professor_id;
  
    
    
-- 39. SG_Scores, Student , Course 테이블을 이용하여 'C1701' 학번의 학년, 성명과 학점을 취득한 
--      과목의 과목코드, 과목명, 학점수, 성적, 등급을 출력하세요
select *
    from SG_Scores;
select *
    from Student;
select *
    from Course;
    
select
    ( select
        student_id,
        year,
        name
        from student
        where student_id = 'C1701'),
    c.course_id,
    c.title,
    c.c_number,
    g.score,
    g.grade
    from Course c left join SG_Scores g on c.course_id = g.course_id;
    
------ 문제 이해를 못했습니다 .. 한글이 제일 어려운거같아요



-- 40. Professor 테이블의 모든 교수에 대한 교수번호, 교수명, 직위를 출력하되, Course 테이블을 참고하여 
--      교수가 개설하고 있는 과목에 대하여 과목명, 학점수를 출력
select *
    from Professor;
    
    select *
    from Course;
    
select
    p.professor_id,
    p.name,
    p.position,
    c.title,
    c.c_number
    from Professor p left join Course c on p.professor_id = c.professor_id
    where c.title is not null and c.c_number is not null;



-- 41. Course 테이블의 모든 개설과목에 대하여 과목명, 학점수를 출력하되, Professor 테이블을 참고하여 
--      담당하고 있는 과목의 교수번호, 교수명, 직위도 출력
select *
    from Professor;

select *
    from Course;

select 
    c.title,
    c.c_number,
    p. professor_id,
    p. name,
    p. position
    from Course c left join Professor p on c.professor_id = p.professor_id
    where c.professor_id is not null;

-- 42. Professor, Course 테이블을 참고하여 과목을 개설하지 않은 교수를 출력
select *
    from Professor;

select *
    from Course;
    
select 
    p. professor_id,
    p. name
    from Professor p left join Course c on c.professor_id = p.professor_id
    where  c.professor_id is null;


-- 43. Course 테이블의 모든 개설과목에 대하여 과목명, 학점을 출력하되, Professor 테이블을 참고하여 
--      담당하고 있는 과목의 교수번호, 교수명 , 직위를 출력하도록 전체 외부 조인 (full join) 하세요
select *
    from Professor;

select *
    from Course;

select
    c. title,
    c. c_number,
    p. professor_id,
    p. name,
    p. position
    from course c full join professor p on p.professor_id = c.professor_id;


-- 44. 회원(EC_Member) , 주문(EC_Order) 테이블을 이용하여 한번 이상 거래한 회원의 회원명, 
--      주민등록번호, 상품명, 주문수량, 주문금액을 회원명순으로 출력. (내부조인)
select *
    from EC_Member;
select *
    from EC_Order;
    
select 
    m.name,
    m.regist_no,
    o.product_code,
    o.order_qty,
    o.cmoney
    from ec_order o, EC_Member m
    where o.order_id = m.userid
    order by m.name;
    


-- 45. 회원(EC_Member), 주문(EC_Order) 테이블을 이용하여 한번도 주문하지 않은 회원명, 
--      주민등록번호, 전화번호를 출력
select *
    from EC_Member;
select *
    from EC_Order;

select 
    m.userid,
    m.name,
    m.regist_no,
    m.telephone
    from EC_Member m
    where not exists
    ( select *
        from EC_Order o
        where m.userid = o.order_id)
    order by m.name;

-- 46. 회원(EC_Member), 주문(EC_Order), 상품(EC_Product) 테이블을 이용하여 거주지가 '서울' 인 
-- 회원중에서 한번 이상 주문한 회원의 회원명, 주민번호, 상품명, 주문수량, 단가, 거주지를 회원명순으로 
-- 출력( 내부조인)

select 
    m.name,
    m.regist_no,
    o.product_code,
    o.order_qty,
    o.cmoney
    from ec_order o, EC_Member m
    where o.order_id = m.userid and m.address = '서울%'
    order by m.name;
    
select *
    from EC_Member;
select *
    from EC_Order;
select *
    from EC_Product;


-- 47. T_SG_Scores, T_Course , Student 테이블을 이용하여 'C1801' 학번의 성적을 내부조인으로 조회

-- 48. T_SG_Scores, T_Course 테이블을 이용하여 'C1801' 학번의 등릅에 대한 평점, 과목별 평점을 출력하세요. 
--      단, 평점은 등급이 A+ 이면 4.5, A 이면 4.0, B+ 이면 3.5, B 이면 3.0 , C+ 이면 2.5, C 이면 2.0, D+ 이면 
--      1.5, D 이면 1.0, F 이면 0.0 이며, 과목별 평점은 "등급에 대한 평점 x 학점수"로 계산한다

-- 49. SG_Scores 테이블의 'L1031' 'SQL응용' 과목의 행들을 출력하고 'L1031'  과목의 평균 점수보다 높은 점수를 
--      출력하시오 ( 서브쿼리 사용)

-- 50. SG_Scores 테이블의 'L1031' 'SQL응용' 과목에서 최조점을 받은 학생들의 학번, 과목코드, 성적, 
--      성적취득일자를 출력
