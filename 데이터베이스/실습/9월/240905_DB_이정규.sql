
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
