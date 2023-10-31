--고객센터 QnA테이블
--질문
create table CustomerQuestion(
qNum number(5)primary key not null,
questionWriter varchar2(50) not null,
questionTitle varchar2(200) not null,
questionContent varchar2(3000) not null,
questionDate date default sysdate,
ip varchar2(15) default '127.0.0.1',
answerCount number(10) default '0'
);
create sequence CustomerQuestion_qnum_seq;
drop sequence CustomerQuestion_qnum_seq;
drop table CustomerQuestion;

select * from CUSTOMERQUESTION;
--답변
CREATE TABLE CustomerAnswer(
anum NUMBER(5) PRIMARY KEY not null,
question number(5) not null, --question 테이블의 외래키
answerWriter varchar2(50)not null,
answerContents varchar2(2000),
answerDate DATE DEFAULT sysdate,
ip varchar2(20) default '127.0.0.1'
);

CREATE SEQUENCE CustomerAnswer_anum_seq;
DROP SEQUENCE CustomerAnswer_anum_seq;

select * from CustomerAnswer;
DROP TABLE CustomerAnswer;
TRUNCATE TABLE CustomerQnA;