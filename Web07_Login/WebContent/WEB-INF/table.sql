SELECT * FROM (SELECT result1.*, ROWNUM as rnum
	FROM ( SELECT num,writer,title,orgFileName, fileSize,regdate FROM board_file
		   WHERE title LIKE '%' || ? || '%' OR content LIKE '%' || ? || '%'
		   ORDER BY num DESC ) result1)
		--Like '%안녕%' 안녕이 포함,
		--Like '안녕%' 안녕으로 시작,
		--Like 안녕으로 검색한다.
		--Like '%' || '안녕' || '%'
		--Like 작성자 검사냐 내용검사냐
WHERE rnum BETWEEN ? and ?


SELECT * FROM board_file ORDER BY num DESC;

CREATE TABLE board_gallery(
	num NUMBER PRIMARY KEY,
	writer VARCHAR2(100),
	caption VARCHAR2(200),
	imagePath VARCHAR2(100),
	regdate DATE
);
CREATE SEQUENCE board_gallery_seq;


CREATE TABLE board_file(
	num NUMBER PRIMARY KEY,
	writer VARCHAR2(100) NOT NULL,
	title VARCHAR2(100) NOT NULL,
	orgFileName VARCHAR2(100) NOT NULL, --원본 파일명
	saveFileName VARCHAR2(100) NOT NULL, --서버에 실제로 저장된 파일명
	fileSize NUMBER NOT NULL,
	regdate date
);

CREATE SEQUENCE board_file_seq;



-- 사용자(회원) 정보를 저장할 테이블
CREATE TABLE users(
	id VARCHAR2(100) PRIMARY KEY,
	pwd VARCHAR2(100) NOT NULL,
	email VARCHAR2(100),
	profile VARCHAR2(100), -- 프로필 이미지 경로를 저장할 칼럼
	regdate DATE
);


create table company(
	num number primary key,
	
)
