
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
select comm, nvl(comm, 0) 
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
    
-- 37) 사원의 입사일이 1981년 2월 20일 ~ 1982년 1월 23일까지 사원 정보를 조회
select *
    from emp
    where hiredate >= '1981-02-20' and hiredate <= '1982-01-23';
    
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
select job, sal, decode ( job, 'SALESMAN', sal*0.15, 'MANAGER', sal*0.10, sal*0.05) as "급여인상"
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
    
select course_id, title, c_number, ( c_number * 30000 + course_fees ) as 추가수강료
    from course
    order by '추가수강료' desc, course_id asc;
    
-- 56) Professor 테이블에서 '컴공'학과의 교수명을 조회
select name
    from professor
    where dept_id = '컴공';
    
-- 57) Course 테이블로부터 추가 수강료가 30000원 이상인 과목명을 조회하되, 추가 수강료를 내림차순으로 조회
select course_fees
    from course
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
    where timestamp > '2018-05-01';
    
-- 89) 상품관리(EC_Product) 테이블에서 상품명이 '노트'로 시작하는 상품의 
--     상품코드, 상품명, 단위, 단가, 재고수량, 생산처를 생산처순으로 조회
select product_code, product_name, unit, unit_price, left_qty, company
    from ec_product
    where product_name like '%노트%';
    
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




    