/********************************************************************
*  EC_Product 테이블 견본 데이터
********************************************************************/
INSERT INTO EC_Product VALUES ('NB01', '노트북컴퓨터','GT633',       '대', 930000, 15,'SAMSUNG', 'nb01.jpg', '인텔 i5-460M 2.53GHz: RAM 4GB: HDD 500GB: 15.6" 모니터', Null);
INSERT INTO EC_Product VALUES ('NB02', '노트북컴퓨터','U35JC',       '대', 750000, 10,'SAMSUNG', 'nb02.jpg', '인텔 i5-450M 2.40GHz: RAM 4GB: HDD 500GB: 13.3" 모니터', Null);
INSERT INTO EC_Product VALUES ('NB03', '노트북컴퓨터','DV6',         '대', 665000, 10,'HP',      'nb03.jpg', '인텔 i3-350M 2.66GHz: RAM 2GB: HDD 250GB: 15.6" 모니터', Null);
INSERT INTO EC_Product VALUES ('CM01', '개인용컴퓨터','HPE-340KL',   '대', 747000, 30,'HP',      'cm01.jpg', '인텔 i750 2.66GHz: RAM 4GB: HDD 1TB: GeForce GTX260',    Null);
INSERT INTO EC_Product VALUES ('CM02', '개인용컴퓨터','DM-C200',     '대', 434000, 20,'Samsung', 'cm02.jpg', '인텔 E5700 3.00GHz: RAM 2GB: HDD 320GB: 내장그래픽',     Null);
INSERT INTO EC_Product VALUES ('CM03', '개인용컴퓨터','T30MS',       '대', 740000, 20,'LG전자',  'cm03.jpg', '인텔 E6700 3.20GHz: RAM 2GB: HDD 500GB: GeForce GT220',  Null);
INSERT INTO EC_Product VALUES ('PRT01','프린터',      'CLX-3185WK',  '대', 235000, 10,'SAMSUNG', 'pt01.jpg', '무선컬러레이저복합기: 600DPI: 개인용',                   Null);
INSERT INTO EC_Product VALUES ('PRT02','프린터',      'CLP-325WK',   '대', 860000,  3,'SAMSUNG', 'pt02.jpg', '무선칼러레이저: 1200DPI: 오피스용',                      Null);
INSERT INTO EC_Product VALUES ('PRT03','프린터',      'K8600',       '대', 272000, 10,'HP',      'pt03.jpg', '잉크젯: 1200DPI: 칼러인쇄 10PPM: 개인용',                Null);
INSERT INTO EC_Product VALUES ('PRT04','프린터',      'CP3525DN',    '대', 482000,  5,'HP',      'pt04.jpg', '칼러레이저젯: 30PPM: USB2.0: 양면: 오피스용',            Null);
INSERT INTO EC_Product VALUES ('TV01', 'TV',          'LN46C632M1F', '대',1060000, 10,'SAMSUNG', 'tv01.jpg', 'PAVV LCD 632: 46" 스탠드형',                             Null);
INSERT INTO EC_Product VALUES ('TV02', 'TV',          '47LD452',     '대', 980000, 10,'LG전자',  'tv02.jpg', 'Xcanvas 120Hz Full-HD급 47": 벽결이형(슬림)',            Null);
INSERT INTO EC_Product VALUES ('TV03', 'TV',          'UN46C8000XF', '대',1785000,  5,'samsung', 'tv03.jpg', 'PAVV 3D LED Full HD: 46"',                               Null);
INSERT INTO EC_Product VALUES ('TV04', 'TV',          '47LX9500',    '대',1920000,  5,'LG전자',  'tv04.jpg', '3D Full LED Slim: 47"',                                  Null);
INSERT INTO EC_Product VALUES ('DK01', '책상',        '1200x745x750','개',  53000,100, Null,     'dk01.jpg',  '사무용 컴퓨터 책상',                                    Null);
INSERT INTO EC_Product VALUES ('CH01', '의자',        '회전용',      '개',  70000,100, Null,     'ch01.jpg', '회전의자: 590x640x980',                                  Null);

/********************************************************************
*  EC_Member 테이블 견본 데이터
********************************************************************/
INSERT INTO EC_Member VALUES ('jupark','1234','박지운','951214-1******',Null,'011-8011-2923','서울특별시 영등포구',Null, '2017/07/11');
INSERT INTO EC_Member VALUES ('imjung','1234','정일미','860807-2******',Null,'011-2242-6666','서울특별시 송파구',  Null, '2017/06/01');
INSERT INTO EC_Member VALUES ('shchoi','1234','최상희','630125-2******',Null,'010-2411-5558','광주광역시 동구',    Null, '2017/11/10'); 
INSERT INTO EC_Member VALUES ('uskang','1234','강욱선','810911-2******',Null,'010-7899-6547','경북 경주시',        Null, '2017/02/01');
INSERT INTO EC_Member VALUES ('kcchoi','1234','최광수','690514-1******',Null,'010-5556-9998','인천광역시 서구',    Null, '2017/05/31');
INSERT INTO EC_Member VALUES ('cscho', '1234','조철상','650707-1******',Null,'010-8884-8884','서울특별시 은평구',  Null, '2017/09/15');
INSERT INTO EC_Member VALUES ('hskim', '1234','김혜수','831122-2******',Null,'010-8228-1112','광주광역시 북구',    Null, '2018/01/14');
INSERT INTO EC_Member VALUES ('sbhong','1234','홍서빈','800110-2******',Null,'010-3922-9921','제주도 서귀포시',    Null, '2018/02/01');
INSERT INTO EC_Member VALUES ('mhlee', '1234','이민형','820222-1******',Null,'010-1020-1010','강원도 춘천시',      Null, '2018/03/03');
INSERT INTO EC_Member VALUES ('jskang','1234','강준상','920303-1******',Null,'010-1115-3333','강원도 원주시',      Null, '2018/04/08');
INSERT INTO EC_Member VALUES ('usko',  '1234','고우선','010102-4******',Null,'010-8874-1452','서울특별시 강남구',  Null, '2018/02/01');
INSERT INTO EC_Member VALUES ('supark','1234','박세우','030914-3******',Null,'010-6666-8745','부산광역시 동래구',  Null, '2018/02/01');
INSERT INTO EC_Member VALUES ('mskim', '1234','김미선','020506-4******',Null,'010-8887-3254','대구광역시 달서구',  Null, '2018/07/11');
INSERT INTO EC_Member VALUES ('ujjung','1234','정유진','901225-2******',Null,'011-2833-9383','서울특별시 종로구',  Null, '2018/07/11');
INSERT INTO EC_Member VALUES ('shlee', '1234','이상혁','870709-1******',Null,'011-8766-9876','대전광역시 유성구',  Null, '2018/07/15');
INSERT INTO EC_Member VALUES ('uychoi','1234','최윤영','911010-2******',Null,'010-6669-7777','대구광역시 수성구',  Null, '2018/07/15'); 

/********************************************************************
*  EC_Basket 테이블 견본 데이터
********************************************************************/
INSERT INTO EC_Basket VALUES  ('180711001','usko', 'TV01',1,'2018/07/11');
INSERT INTO EC_Basket VALUES  ('180711002','hskim','CM01',1,'2018/07/11');
INSERT INTO EC_Basket VALUES  ('180711003','mskim','TV01',1,'2018/07/11');
INSERT INTO EC_Basket VALUES  ('180711004','mhlee','NB02',1,'2018/07/11');
INSERT INTO EC_Basket VALUES  ('180711005','mhlee','CM03',1,'2018/07/11');

/********************************************************************
*  EC_Order 테이블 견본 데이터
********************************************************************/
INSERT INTO EC_Order VALUES ('180205001','usko',  'NB01', 1,'신용카드', 930000,'2018/02/15','2018/02/16','배달');
INSERT INTO EC_Order VALUES ('180204001','supark','NB02', 1,'현금입금', 750000,'2018/02/24','2018/02/25','배달');
INSERT INTO EC_Order VALUES ('180311001','supark','PRT01',1,'현금입금', 235000,'2018/03/11','2018/03/12','배달');
INSERT INTO EC_Order VALUES ('180315001','imjung','TV03', 1,'신용카드',1785000,'2018/03/15','2018/03/17','배달');
INSERT INTO EC_Order VALUES ('180403001','uskang','PRT03',1,'현금입금', 272000,'2018/04/03','2018/04/05','배달');
INSERT INTO EC_Order VALUES ('180412001','cscho', 'CM03', 1,'계좌이체', 740000,'2018/04/12','2018/04/15','배달');
INSERT INTO EC_Order VALUES ('180505001','jskang','TV01', 1,'계좌이체',1060000,'2018/05/07',Null,        '취소'); 
INSERT INTO EC_Order VALUES ('180505002','kcchoi','DK01', 1,'신용카드',  53000,'2018/05/07',Null,        '결제');
INSERT INTO EC_Order VALUES ('180505003','kcchoi','CH01', 1,'계좌이체',  70000,'2018/05/07',Null,        '결제');
INSERT INTO EC_Order VALUES ('180707001','jupark','CM01', 5, Null,     3735000, Null,       Null,        Null);
INSERT INTO EC_Order VALUES ('180707002','jupark','PRT02',5, Null,     4300000, Null,       Null,        Null);
INSERT INTO EC_Order VALUES ('180707003','cscho', 'CM01' ,1, Null,      747000, Null,       Null,        Null);

COMMIT;

/********************************************************************
*  주문처리(EC_Order) 테이블 검색
********************************************************************/
SELECT * FROM EC_Order
/