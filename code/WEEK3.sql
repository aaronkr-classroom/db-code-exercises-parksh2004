
/*

[Entities / 개체]
	- Professor
	
[Properties / 속성]
	- id			(BIGSERIAL) -- 자동으로 증가하는 숫자.
	- name			(VARCHAR(30))	
	- dept			(VARCHAR(50))
	- salary		(NUMBERIC)
	- salary_lavel	(NUMBERIC)
	- hire_date		(DATE) -- 'YYYY-MM-DD'
*/

CREATE TABLE prof(
	id bigserial,
	name varchar(30),
	dept varchar(50),
	salary numeric,
	salary_level numeric,
	hire_date date
);

-- 데이터 삽입하기.

INSERT INTO prof(
	name, dept, salary, salary_level, hire_date
)
VALUES
	('김정은', '컴퓨터공학', 100000, 2, '1998-12-1'),
	('김정일', '컴퓨터공학', 70000, 2, '2525-3-6'),
	('김정이', '컴퓨터공학', 80000, 2, '4412-5-7'),
	('김정삼', '컴퓨터공학', 90000, 2, '5252-2-14'),
	('김정사', '컴퓨터공학', 120000, 2, '3311-11-20');

-- 데이터 검색하기

SELECT * FROM prof;

SELECT name, salary FROM prof ORDER BY salary DESC;

