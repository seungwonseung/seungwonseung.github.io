/*자유게시판 더미데이터 생성 */
DELIMITER $$ /* 프로시저 만들기 위한 구분문자 DELIMITER 사이에 공백 지우면 에러남 */
CREATE PROCEDURE auto_bd(IN count INT) /*auto_bd 이름의 프로시저 생성 호출시 들어오는 숫자를 count 변수에 저장*/
BEGIN
    DECLARE i INT DEFAULT 1;/* 변수 I에 1 초기화 */
    WHILE (i <= count) DO/*1부터 호출시 입력한 숫자만큼 반복*/
		  INSERT INTO board (title, content, author)VALUES('자유게시판-admin' , '내용', 'admin');
		  INSERT INTO board(title, content, author, lev, par) VALUES('댓글', '댓글 내용-son', 'son', 1, i*2); /*댓글*/
		  INSERT INTO board (title, content, author)VALUES('자유게시판-kang' , '내용', 'kang');
		  INSERT INTO board(title, content, author, lev, par) VALUES('댓글', '댓글 내용-admin', 'admin', 1, i*3);
		  INSERT INTO board (title, content, author)VALUES('자유게시판-hong' , '내용', 'hong'); 
		  INSERT INTO board (title, content, author)VALUES('자유게시판-son' , '내용', 'son'); 
		  INSERT INTO board (title, content, author)VALUES('자유게시판-lee' , '내용', 'lee');
		  UPDATE board SET par=bno WHERE par IS NULL;
        SET i = i + 1; /* 루프가 끝나기전 I변수 1증가 */
    END WHILE; /* 반복  */
END$$
DELIMITER $$ /* 프로시저 종료 지점 마찬가지로 DELIMITER 사이 공백 지우면 에러남.*/

CALL auto_bd(200); /*() 안의 숫자만큼 반복 실행 */

SELECT * FROM board;

DROP PROCEDURE auto_bd;
/* ===================================================================================================================================== */




/* 학생 게시판 더미데이터 생성*/
DELIMITER $$ /* 프로시저 만들기 위한 구분문자 DELIMITER 사이에 공백 지우면 에러남 */
CREATE PROCEDURE auto_stu(IN count INT) /*auto_stu 이름의 프로시저 생성 호출시 들어오는 숫자를 count 변수에 저장*/
BEGIN
    DECLARE i INT DEFAULT 1;/* 변수 I에 1 초기화 */
    WHILE (i <= count) DO/*1부터 호출시 입력한 숫자만큼 반복*/
		  INSERT INTO board_stu (title, content, author)VALUES('학생게시판-kang' , '내용', 'kang'); 
			INSERT INTO board_stu(title, content, author, lev, par) VALUES('댓글', '댓글 내용-hong', 'hong', 1, i*2); /*댓글*/
		  INSERT INTO board_stu (title, content, author)VALUES('학생게시판-hong' , '내용', 'hong'); 
		  	INSERT INTO board_stu(title, content, author, lev, par) VALUES('댓글', '댓글 내용-kang', 'kang', 1, i*3);
		  UPDATE board_stu SET par=bno WHERE par IS NULL;
        SET i = i + 1; /* 루프가 끝나기전 I변수 1증가 */
    END WHILE; /* 반복  */
END$$
DELIMITER $$ /* 프로시저 종료 지점 마찬가지로 DELIMITER 사이 공백 지우면 에러남.*/
--
CALL auto_stu(500); /* 프로시저 실행 */

SELECT * FROM board_stu;

DROP PROCEDURE auto_stu;
/* -------------------------------------------------------------------------------- */


/*선생님 게시판 더미데이터 생성*/ 
DELIMITER $$ /* 프로시저 만들기 위한 구분문자 DELIMITER 사이에 공백 지우면 에러남 */
CREATE PROCEDURE auto_tea(IN count INT) /*auto_insert 이름의 프로시저 생성 호출시 들어오는 숫자를 count 변수에 저장*/
BEGIN
    DECLARE i INT DEFAULT 1;/* 변수 I에 1 초기화 */
    WHILE (i <= count) DO/*1부터 호출시 입력한 숫자만큼 반복*/
		  INSERT INTO board_tea (title, content, author)VALUES('선생님게시판-son' , '내용', 'son');
		  	INSERT INTO board_tea(title, content, author, lev, par) VALUES('댓글', '댓글 내용-son', 'son', 1, i*2); /*댓글*/
		  INSERT INTO board_tea (title, content, author)VALUES('선생님게시판-lee', '내용', 'lee');
		  INSERT INTO board_tea (title, content, author, lev, par)VALUES('댓글', '댓글 내용-lee', 'lee', 1, i*3);
		  UPDATE board_tea SET par=bno WHERE par IS NULL;
        SET i = i + 1; /* 루프가 끝나기전 I변수 1증가 */
    END WHILE; /* 반복  */
END$$
DELIMITER $$ /* 프로시저 종료 지점 마찬가지로 DELIMITER 사이 공백 지우면 에러남.*/
--
CALL auto_tea(500);

SELECT * FROM board_tea;

DROP PROCEDURE auto_tea;



