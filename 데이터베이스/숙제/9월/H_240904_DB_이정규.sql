
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

------------------------------------------------------------- XXXXX
-- 5) 사원의 근무 년수, 월수, 일수를 조회
select ename as "이름"  , sysdate as "현재" , hiredate
    from emp;
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

-- 25) 교수용 Email 서버의 도메인명이 'cyber' 에서 'dream' 으로 변경되었다 . 이를 변경하여 교수명순으로 출력
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
    100 / 3  as "몫",
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
    
----------------------------------------------------------------------------XXXXX

-- 31) Student 테이블의 주민등록번호를 이용하여 생년월일을 추출하고 날짜형 데이터로 
--      'RRMMDD', 'YYMMDD' 로 각각 변환하여 'YYYY/MM/DD' 형식으로 출력
select
    to_char ( ( substr ( id_number , 1 , 6 ) ) , 'yymmdd' )
from student
;

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
    to_char ( course_fees * c_number, '999,999' ) as "999,999",
    to_char ( course_fees * c_number, 'L999,999' )as "L999,999",
    to_char ( course_fees * c_number, 'C999G999' )as "C999G999"
    from course
    where course_fees * c_number = 40000
;

-- 38) Course 테이블의 추가 수강료가 4만원 (4 * 10**4) 인 과목에 대하여 문자열로 변환하여 
--     '9.99EEEE' 지수형식으로 변환하여 출력
select 
    to_char ( course_fees * c_number, '9.99EEEE' ) as "9.99EEEE"
    from course
    where course_fees * c_number = 40000
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
    course_fees + (course_fees * 0.05)
    from course
;

-- 43) '컴퓨터공학과' 학생의 주민등록번호를 이요하여, 
--     성별코드가 '1'과 '3' 일 때 '남', '2'와 '4' 일 때 '여'로 변화하여 출력, decode 문 사용
select 
    id_number as "주민번호",
    decode 
    (substr(id_number , 8 ,1), 
    '1' , '남자' , '3' , '남자',
    '2' , '여자' , '4' , '여자') as "주민번호 성별" 
    from student
;

-------------------------------------------------------------------------XXXXX
-- 44)'C1601' 학번에 대하여 SG_Scores 테이블의 성적을 
--    'A'(90~100), 'B'(80~89), 'C'(70~79), 'D'(60~69), 'F'(0~59) 
--    등급으로 변환하여 과목코드순으로 출력, case when 사용
select 
    score
    case when score >= '90' then 'a'
         when score >= '80' then 'b'
         when score >= '70' then 'c'
         when score >= '60' then 'd'
         else 'F'
    end as '등급'
    from sg_scores
    where student_id = 'C1601'
;
----------------------------------------------------------------------------------
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
    max ( score ) as "최고점수",
    min ( score ) as "최저점수",
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

------------------------------------------------------------------------XXXXX

-- 57) SG_Scores 테이블에서 학번별의 8과목 이상을 취득한 학번의 과목수와 평균을 학번순으로 조회



--------------------------------------------------------------------------XXXXX

-- 58) Student 테이블로부터 학과별/학년별 인원수를 계산하여 학과별/학년별로 조회


    
-------------------------------------------------------------------------XXXXX

-- 59) 주문처리(EC_Order) 테이블에서 결제한 결제년월별로 결제년월, 주문건수, 
--     주문수량 합계,  결제금액 합계 를 계산하여 결제년월순으로 출력


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
    
-------------------------------------------------------------------------XXXXX

-- 61) 주문처리(EC_Order) 테이블에서 년월별 결제금액이 가장 많은 금액을 결제년월별순으로 출력


 
--------------------------------------------------------------------------------

