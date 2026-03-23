CREATE DATABASE club;

/*

[Entities / 개체]
	- admin
	- user 

[admins / 속성]
	- id			(BIGSERIAL) -- 자동으로 증가하는 숫자.
	- name			(VARCHAR(30))	
	- dept			(VARCHAR(50))
	- position		(VARCHAR(50))
	- hire_date		(DATE) -- 'YYYY-MM-DD'
	
[users / 속성]
	- id			(BIGSERIAL) -- 자동으로 증가하는 숫자.
	- name			(VARCHAR(30))	
	- dept			(VARCHAR(50))
	- hire_date		(DATE) -- 'YYYY-MM-DD'
*/

CREATE TABLE admins(
	id bigserial,
	name varchar(30),
	dept varchar(50),
	pos varchar(50),
	hire_date date
);

CREATE TABLE users(
	id bigserial,
	name varchar(30),
	dept varchar(50),
	hire_date date
);


INSERT INTO admins(
	name, dept, pos, hire_date
)
VALUES
	('홍길동', '컴퓨터공학', '회장', '2002-12-1'),
	('임꺽정', '기계공학', '부회장', '2004-3-6');

INSERT INTO users(
	name, dept, hire_date
)
VALUES
	('이순신', '건설환경도시공학', '2006-5-5'),
	('이성계', '유아교육', '2002-5-27'),
	('세종대왕', '소프트웨어공학', '2003-7-6'),
	('문종', '커뮤니케이션디자인', '2006-4-19'),
	('단종', '체육교육', '2007-11-11');


-- 테이블별로 각각 전체 조회
SELECT * FROM admins;
SELECT * FROM users;


SELECT name, dept FROM users ORDER BY id;
SELECT name, dept FROM users WHERE dept LIKE '%공학%';

