-- 특정 테이블 조회
select *
from kopo_product_volume

-- 테이블 전체 조회
show tables;

select * 
from kopo_product_volume;


CREATE TABLE anal_product_volume_hkcode(
	REGIONID VARCHAR(20),
	PRODUCTGOURP VARCHAR(20),
	YEARWEEK VARCHAR(10),
	QTY DOUBLE
);

DROP TABLE anal_product_volume_hkcode;


SELECT *
FROM anal_product_volume_hkcode;

INSERT INTO anal_product_volume_hkcode 
VALUES ('서울','TV','202502',2000)


-- create database with utf-encoding
create database analdb2 default character set utf8mb4 collate utf8mb4_general_ci;

-- create user
create user analuser@'%' identified by 'analuser' 

-- grant privileges
grant all privileges on *.* to analuser@'%' with grant option

-- 권한 부여
flush privileges

select len( trim('aa ') )

SELECT user, host, plugin FROM mysql.user WHERE user = 'analuser';

select to_('2019.02.25','YYYY.MM.DD')

select concat (REGIONID,'_',PRODUCTGROUP)
from KOPO_PRODUCT_VOLUME

select SUBSTR('111',1,2)

select '2025'

from KOPO_PRODUCT_VOLUME


select CAST('2019.02.25' as DATE)

SELECT TO_DATE('2019.02.25', 'YYYY.MM.DD')+1/12/(60/30)
FROM DUAL

SELECT 1/12/(60/30)
FROM DUAL

SELECT STR_TO_DATE('2019.02.25', '%Y.%m.%d') + INTERVAL (1/12/(60/30)) DAY
FROM DUAL;


select date_add( cast('2019.02.25' as date), interval 1 second )
from DUAL


select *
from kopo_channel_seasonality_new

select regionid, sum(qty)
from KOPO_CHANNEL_SEASONALITY_NEW 
group by cube(regionid)

SELECT regionid, SUM(qty)
FROM KOPO_CHANNEL_SEASONALITY_NEW 
GROUP BY CUBE(regionid);

SELECT regionid, SUM(qty)
FROM KOPO_CHANNEL_SEASONALITY_NEW 
GROUP BY CUBE(regionid)
ORDER BY regionid

SELECT regionid, SUM(qty)
FROM KOPO_CHANNEL_SEASONALITY_NEW 
GROUP BY rollup(regionid)

select * 
from join_region_master

select * 
from join_kopo_product_volume 

insert into join_kopo_product_volume
values('A05','ST0005','202520',6000)


SELECT B.REGIONID, 
	A.REGIONNAME,
	B.PRODUCT,
	B.YEARWEEK,
	B.QTY
FROM JOIN_REGION_MASTER A
INNER JOIN JOIN_KOPO_PRODUCT_VOLUME B
ON A.REGIONID  = B.REGIONID


SELECT A.REGIONID, 
	B.REGIONNAME,
	A.PRODUCT,
	A.YEARWEEK,
	A.QTY
FROM JOIN_KOPO_PRODUCT_VOLUME A
RIGHT JOIN JOIN_REGION_MASTER B
ON A.REGIONID  = B.REGIONID

SELECT *
FROM JOIN_KOPO_PRODUCT_VOLUME

-- LEFT JOIN: A의 모든 행 + B에서 일치하는 행
SELECT A.REGIONID, 
       B.REGIONNAME,
       A.PRODUCT,
       A.YEARWEEK,
       A.QTY
FROM JOIN_KOPO_PRODUCT_VOLUME A
LEFT JOIN JOIN_REGION_MASTER B
ON A.REGIONID = B.REGIONID
UNION ALL
-- RIGHT JOIN: B의 모든 행 + A에서 일치하는 행 (LEFT JOIN과 중복되지 않는 행만)
SELECT A.REGIONID, 
       B.REGIONNAME,
       A.PRODUCT,
       A.YEARWEEK,
       A.QTY
FROM JOIN_KOPO_PRODUCT_VOLUME A
RIGHT JOIN JOIN_REGION_MASTER B
ON A.REGIONID = B.REGIONID
WHERE A.REGIONID IS NULL;


on a.regionid, B.regionid



SELECT DATE_FORMAT(
  STR_TO_DATE('2019.02.25', '%Y.%m.%d') + INTERVAL (1/12/(60/30)) DAY,
  '%Y.%m.%d %H:%i:%s'
) FROM DUAL;



SELECT STR_TO_DATE('2019.02.25', '%Y.%m.%d') + INTERVAL (1/12/(60/30)) DAY
FROM DUAL;

select A.*,
	   DATE_ADD( NOW(), interval 7 DAY) as NEXT_BATCH
from KOPO_PRODUCT_VOLUME A

select CURTIME()

SHOW VARIABLES LIKE 'lower_case_table_names';

select * 
from number_example

SHOW VARIABLES LIKE 'lower_case_table_names';










