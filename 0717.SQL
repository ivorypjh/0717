SELECT CONCAT(name, " : ", popu)
FROM tCity;

CREATE TABLE tCity
(
	name CHAR(10) PRIMARY KEY,
	area INT NULL ,
	popu INT NULL ,
	metro CHAR(1) NOT NULL,
	region CHAR(6) NOT NULL
);

INSERT INTO tCity VALUES ('서울',605,974,'y','경기');
INSERT INTO tCity VALUES ('부산',765,342,'y','경상');
INSERT INTO tCity VALUES ('오산',42,21,'n','경기');
INSERT INTO tCity VALUES ('청주',940,83,'n','충청');
INSERT INTO tCity VALUES ('전주',205,65,'n','전라');
INSERT INTO tCity VALUES ('순천',910,27,'n','전라');
INSERT INTO tCity VALUES ('춘천',1116,27,'n','강원');
INSERT INTO tCity VALUES ('홍천',1819,7,'n','강원');

SELECT * FROM tCity;

CREATE TABLE tStaff
(
	name CHAR (15) PRIMARY KEY,
	depart CHAR (10) NOT NULL,
	gender CHAR(3) NOT NULL,
	joindate DATE NOT NULL,
	grade CHAR(10) NOT NULL,
	salary INT NOT NULL,
	score DECIMAL(5,2) NULL
);

INSERT INTO tStaff VALUES ('김유신','총무부','남','2000-2-3','이사',420,88.8);
INSERT INTO tStaff VALUES ('유관순','영업부','여','2009-3-1','과장',380,NULL);
INSERT INTO tStaff VALUES ('안중근','인사과','남','2012-5-5','대리',256,76.5);
INSERT INTO tStaff VALUES ('윤봉길','영업부','남','2015-8-15','과장',350,71.25);
INSERT INTO tStaff VALUES ('강감찬','영업부','남','2018-10-9','사원',320,56.0);
INSERT INTO tStaff VALUES ('정몽주','총무부','남','2010-9-16','대리',370,89.5);
INSERT INTO tStaff VALUES ('허난설헌','인사과','여','2020-1-5','사원',285,44.5);
INSERT INTO tStaff VALUES ('신사임당','영업부','여','2013-6-19','부장',400,92.0);
INSERT INTO tStaff VALUES ('성삼문','영업부','남','2014-6-8','대리',285,87.75);
INSERT INTO tStaff VALUES ('논개','인사과','여','2010-9-16','대리',340,46.2);
INSERT INTO tStaff VALUES ('황진이','인사과','여','2012-5-5','사원',275,52.5);
INSERT INTO tStaff VALUES ('이율곡','총무부','남','2016-3-8','과장',385,65.4);
INSERT INTO tStaff VALUES ('이사부','총무부','남','2000-2-3','대리',375,50);
INSERT INTO tStaff VALUES ('안창호','영업부','남','2015-8-15','사원',370,74.2);
INSERT INTO tStaff VALUES ('을지문덕','영업부','남','2019-6-29','사원',330,NULL);
INSERT INTO tStaff VALUES ('정약용','총무부','남','2020-3-14','과장',380,69.8);
INSERT INTO tStaff VALUES ('홍길동','인사과','남','2019-8-8','차장',380,77.7);
INSERT INTO tStaff VALUES ('대조영','총무부','남','2020-7-7','차장',290,49.9);
INSERT INTO tStaff VALUES ('장보고','인사과','남','2005-4-1','부장',440,58.3);
INSERT INTO tStaff VALUES ('선덕여왕','인사과','여','2017-8-3','사원',315,45.1);

SELECT * FROM tStaff;

DESC tStaff;

DESC tCity;

CREATE TABLE DEPT(
	DEPTNO INT(2),
	DNAME VARCHAR(14) ,
	LOC VARCHAR(13),
	CONSTRAINT PK_DEPT PRIMARY KEY(DEPTNO)
);


CREATE TABLE EMP(
	EMPNO INT(4),
	ENAME VARCHAR(10),
	JOB VARCHAR(9),
	MGR INT(4),
	HIREDATE DATE,
	SAL FLOAT(7,2),
	COMM FLOAT(7,2),
	DEPTNO INT(2),
	CONSTRAINT PK_EMP PRIMARY KEY(EMPNO),
	CONSTRAINT FK_DEPTNO FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO)
);

INSERT INTO DEPT VALUES(10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES(30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES(40,'OPERATIONS','BOSTON');

INSERT INTO EMP VALUES
(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20);
INSERT INTO EMP VALUES
(7499,'ALLEN','SALESMAN',7698,'1981-2-20',1600,300,30);
INSERT INTO EMP VALUES
(7521,'WARD','SALESMAN',7698,'1981-2-22',1250,500,30);
INSERT INTO EMP VALUES
(7566,'JONES','MANAGER',7839,'1981-4-2',2975,NULL,20);
INSERT INTO EMP VALUES
(7654,'MARTIN','SALESMAN',7698,'1981-9-28',1250,1400,30);
INSERT INTO EMP VALUES
(7698,'BLAKE','MANAGER',7839,'1981-5-1',2850,NULL,30);
INSERT INTO EMP VALUES
(7782,'CLARK','MANAGER',7839,'1981-6-9',2450,NULL,10);
INSERT INTO EMP VALUES
(7788,'SCOTT','ANALYST',7566,'1987-7-13',3000,NULL,20);
INSERT INTO EMP VALUES
(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10);
INSERT INTO EMP VALUES
(7844,'TURNER','SALESMAN',7698,'1981-9-8',1500,0,30);
INSERT INTO EMP VALUES
(7876,'ADAMS','CLERK',7788,'1987-7-13',1100,NULL,20);
INSERT INTO EMP VALUES
(7900,'JAMES','CLERK',7698,'1981-12-3',950,NULL,30);
INSERT INTO EMP VALUES
(7902,'FORD','ANALYST',7566,'1981-12-3',3000,NULL,20);
INSERT INTO EMP VALUES
(7934,'MILLER','CLERK',7782,'1982-1-23',1300,NULL,10);

CREATE TABLE SALGRADE
      ( GRADE INT,
	LOSAL INT,
	HISAL INT );
INSERT INTO SALGRADE VALUES (1,700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);

COMMIT;

SELECT * FROM DEPT;

SELECT * FROM EMP;

SELECT * FROM SALGRADE;


-- 회원테이블
create table usertbl(
userid char(15) not null primary key,
name varchar(20) not null,
birthyear int not null, 
addr char(100),
mobile char(11),
mdate date)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 구매테이블
create table buytbl(
num int auto_increment primary key,
userid char(8) not null,
productname char(10),
groupname char(10),
price int not null,
amount int not null,
foreign key (userid) references usertbl(userid) on delete cascade)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 데이터 삽입
insert into usertbl values('kty', '김태연',1989,'전주','01011111111', '1989-3-9');
insert into usertbl values('bsj', '배수지',1994,'광주','01022222222', '1994-10-10');
insert into usertbl values('ksh', '김설현',1995,'부천','01033333333', '1995-1-3');
insert into usertbl values('bjh', '배주현',1991,'대구','01044444444', '1991-3-29');
insert into usertbl values('ghr', '구하라',1991,'광주','01055555555', '1991-1-13');
insert into usertbl values('san', '산다라박',1984,'부산','01066666666', '1984-11-12');
insert into usertbl values('jsm', '전소미',2001,'캐나다','01077777777', '2001-3-9');
insert into usertbl values('lhl', '이효리',1979,'서울','01088888888', '1979-5-10');
insert into usertbl values('iyou', '아이유',1993,'서울','01099999999', '1993-5-19');
insert into usertbl values('ailee', '에일리',1989,'미국','01000000000', '1989-5-30');

commit;

insert into buytbl values(null, 'kty', '운동화', '잡화', 30, 2);
insert into buytbl values(null, 'kty', '노트북', '전자', 1000, 1);
insert into buytbl values(null, 'jsm', '운동화', '잡화', 30, 1);
insert into buytbl values(null, 'lhl', '모니터', '전자', 200, 1);
insert into buytbl values(null, 'bsj', '모니터', '전자', 200, 1);
insert into buytbl values(null, 'kty', '청바지', '잡화', 100, 1);
insert into buytbl values(null, 'lhl', '책', '서적', 15, 2);
insert into buytbl values(null, 'iyou', '책', '서적', 15, 7);
insert into buytbl values(null, 'iyou', '컴퓨터', '전자', 500, 1);
insert into buytbl values(null, 'bsj', '노트북', '전자', 1000, 1);
insert into buytbl values(null, 'bjh', '메모리', '전자', 50, 4);
insert into buytbl values(null, 'ailee', '운동화', '잡화', 30, 2);
insert into buytbl values(null, 'ghr', '운동화', '잡화', 30, 1);

commit;

SELECT DISTINCT  region
FROM tCity;

-- tCity 테이블에서 region 과 name 모두 동일한 데이터를 제거하고 조회
SELECT region, name
from tCity;

-- tCity 테이블에서 name 내림차순, popu 오름차순, area 의 내림차순으로 정렬
SELECT *
FROM tCity
ORDER BY name DESC, popu, area DESC;

-- SELECT에서 만든 별명과 인덱스를 이용
SELECT name AS 지역명, area AS 면적, popu
from tCity
order by 지역명, 2 DESC;

DESC buytbl;

SELECT *
from buytbl 
ORDER BY amount DESC, groupname, price, num;

DESC tStaff;

-- tStaff 테이블에서 salary가 작은 사람부터, 동일하면 score가 높은 사람부터
SELECT *
from tStaff
ORDER BY salary, score DESC;

-- tCity 테이블에서 면적이 500을 넘으면서 인구가 500 이하인 지역만 출력
-- 여기서는 POPU, AREA 모두 6개의 데이터를 골라낸 후 확인하기에 차이는 없음
SELECT *
FROM tCity
WHERE popu <= 500 AND area >= 500 
ORDER BY area DESC, popu;

-- tCity 테이블에서 metro가 y인 지역만 출력
SELECT *
FROM tCity
WHERE BINARY (metro) = LOWER('Y')
ORDER BY popu;


SELECT *
FROM tCity;

-- tStaff 테이블에서 score가 NULL인 모든 칼럼 조회
-- score의 값이 'NULL'인 데이터를 조회하므로 결과가 없음
SELECT *
from tStaff
WHERE score != NULL;

SELECT *
from tStaff
WHERE score IS not NULL;

-- EMP 테이블에서 COMM의 값이 NULL인 데이터의 ENAME과 SAL, COMM을 조회
SELECT ENAME, SAL, COMM 
from EMP
WHERE COMM IS NULL 
ORDER BY SAL DESC, ENAME;

-- tStaff 테이블에서 salary가 300 미만이거나 score 가 70을 넘는 직원 조회
SELECT *
FROM tStaff
where (score > 70 or salary < 300) and gender = '여'
ORDER BY name, salary DESC;

-- tCity 테이블에서 name에 천이 포함된 모든 데이터 조회하기
SELECT name
from tCity
WHERE name LIKE '%천%';

-- EMP 테이블에서 ename에 L이 2개 포함된 데이터 조회
SELECT *
from EMP
WHERE ENAME LIKE '%L%L%';

-- sale에 30%가 포함된 데이터 조회하기
-- # 뒤에 나오는 것은 일반 문자로 취급한다는 의미
sale LIKE '%30#%%' ESCAPE '#'

-- tStaff 테이블에서 joindate가 8월인 사원을 조회
SELECT *
from tStaff
WHERE joindate LIKE '%-08-%'
ORDER BY name;

-- tCity 테이블에서 popu가 20 과 50 사이인 데이터 조회
SELECT *
from tCity
WHERE popu BETWEEN 20 and 50;

-- tStaff 테이블에서 joindate가 2018년인 데이터 조회
SELECT *
FROM tStaff
WHERE joindate BETWEEN '2018-01-01' and '2018-12-31'
ORDER BY name;
-- WHERE joindate LIKE "2018%";

-- tCity 테이블에서 region이 경기 또는 전라 인 데이터 조회
SELECT *
FROM tCity
where region not in ('경기', '전라');
-- WHERE region = '경기' or region = '전라';

-- tCity 테이블에서 area 가 넓은 5개 데이터 조회
SELECT *
FROM tCity
order by area DESC 
LIMIT 5;

-- tCity 테이블에서 area 가 넓은 5개 다음 3개 데이터 조회
SELECT *
FROM tCity
order by area DESC 
LIMIT 5, 3;

-- tStaff 테이블에서 score 5위부터 10위까지인 데이터 조회
SELECT name, depart, joindate, grade, salary, score 
FROM tStaff
order BY score DESC 
LIMIT 6
OFFSET 4;

-- tStaff 테이블에서 name 과 score 를 조회하는데
-- score 의 소수는 반올림해서 정수로 표현
SELECT name, ROUND(score, -1)
from tStaff;

SELECT CHAR_LENGTH('문자열'), LENGTH('문자열'); 
-- CHAR_LENGTH 는 문자열 길이를 나타내서 3이고 
-- LENGTH 는 BYTE 수를 나타내므로 9

-- EMP 테이블에서 HIREDATE 가 1981년인 데이터 조회
SELECT *
from EMP
WHERE SUBSTRING(HIREDATE, 1, 4) = '1981'
ORDER BY EMPNO; 

-- EMP 테이블에서 ENAME 이 E 로 끝나는 사원 정보 조회
SELECT ENAME
from EMP
WHERE SUBSTRING(ENAME, LENGTH(ENAME), 1) = 'E' ;

-- EMP 테이블에서 HIREDATE 는 날짜를 가지는 컬럼
SELECT ENAME, CURRENT_DATE() - HIREDATE
from EMP;