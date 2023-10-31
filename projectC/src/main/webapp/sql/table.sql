--고객 테이블
CREATE TABLE customer(
id varchar2(50) PRIMARY KEY,
password varchar2(50),
name varchar2(30),
tel varchar2(20),
email varchar2(100)
);

--상품 테이블(clothesContent(2000) clothesImage(100))
CREATE TABLE clothes(
clothesNum number(6) PRIMARY KEY,		
clothesKind char(1), -- outer: 1, top:2 , bottom: 3 , shoes: 4
price2 number(7) default 0,
clothesName varchar2(200),
clothesContent varchar2(2000) DEFAULT NULL,
clothesImage varchar2(100) DEFAULT 'default.jpg',
clothesCount number(10),
useyn char default 'y', -- 판매 : y, 품절 : n
pregDate DATE DEFAULT sysdate
);

--스타일링 테이블
CREATE TABLE styling(
snum number(5) PRIMARY KEY,
clothesNum1 number(5),
clothesNum2 number(5),
clothesNum3 number(5),
clothesNum4 number(5),
stylingContent varchar2(2000),		-- 내용 글
picture varchar2(200), -- 착용 사진 업로드 파일명 (여러개를 ,로 구분해서 저장하기 )
styleDate DATE DEFAULT sysdate,
CONSTRAINT fk_styling_clothesNum1 FOREIGN KEY (clothesNum1) REFERENCES clothes(clothesNum),
CONSTRAINT fk_styling_clothesNum2 FOREIGN KEY (clothesNum2) REFERENCES clothes(clothesNum),
CONSTRAINT fk_styling_clothesNum3 FOREIGN KEY (clothesNum3) REFERENCES clothes(clothesNum),
CONSTRAINT fk_styling_clothesNum4 FOREIGN KEY (clothesNum4) REFERENCES clothes(clothesNum)
);

--주문 테이블
CREATE TABLE orderC (
    orderNum number(10) PRIMARY KEY,
    id varchar2(20),
    orderDate DATE DEFAULT SYSDATE,
    orderQuantity number(5),
    CONSTRAINT fk_orderC_id FOREIGN KEY (id) REFERENCES customer(id)
);

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

--답변
CREATE TABLE CustomerAnswer(
anum NUMBER(5) PRIMARY KEY not null,
question number(5) not null, --question 테이블의 외래키
answerWriter varchar2(50)not null,
answerContents varchar2(2000),
answerDate DATE DEFAULT sysdate,
ip varchar2(20) default '127.0.0.1'
);

--공지사항 테이블
CREATE TABLE notice(
content varchar2(3000)
);

--공지사항 테이블
CREATE TABLE notice(
noticeNum number(5) primary key not null,
writer varchar2(20) not null,
noticeTitle varchar2(200),
noticeContent varchar2(3000),
ip varchar2(15) default '127.0.0.1',  -- 작성자 ip
noticeDate date default sysdate
);

--상세 주문 테이블
CREATE TABLE order_detail(
odNum number(10) primary key,
orderNum number(10),
clothesNum number(5),
orderDetailQuantity number(5),
detailResult char(1) default 1,
constraint fk_orderC_detail foreign key(orderNum) references orderC(orderNum),
constraint fk_clothes_detail foreign key(clothesNum) references clothes(clothesNum));

--관리자 테이블 , 추후 사용
create table admin(
    id varchar2(20) primary key,
    password varchar2(20),
    name varchar2(40),
    email varchar2(40),
    phone varchar2(20));

--주문 내역 테이블
CREATE TABLE c_buy(
pbuydate DATE,
clothesNum number(6),
id varchar2(50),
cname varchar2(100), 
cprice number(10),
cquantity number(6),
csize varchar2(50),   
buydate DATE DEFAULT sysdate,
CONSTRAINT fk_customer_id FOREIGN KEY (id) REFERENCES customer(id),
CONSTRAINT fk_clothes_clothesNum FOREIGN KEY (clothesNum) REFERENCES clothes(clothesNum)
);