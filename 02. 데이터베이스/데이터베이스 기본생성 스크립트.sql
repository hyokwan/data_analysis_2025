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










