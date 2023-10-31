--공지사항 테이블
CREATE TABLE notice(
noticeNum number(5) primary key not null,
writer varchar2(20) not null,
noticeTitle varchar2(200),
noticeContent varchar2(3000),
ip varchar2(15) default '127.0.0.1',  -- 작성자 ip
noticeDate date default sysdate
);
drop sequence notice_noticeNum_seq;
create sequence notice_noticeNum_seq; 
insert into notice(noticeNum,writer,noticeTitle,noticeContent)
values(notice_noticeNum_seq.nextval,'test','테스트 중','제발 되라');
DROP TABLE notice;

select * from notice;
-------------------------------------------------------------------------------
INSERT INTO notice(noticeNum,writer,noticeTitle,noticeContent) 
values(notice_noticeNum_seq.nextval,'운영자','고객센터 업무시간 안내','고객 센터 업무 시간을 변경합니다.벨로의 고객센터 업무시간이 아래처럼 변경이 됩니다.계속 휴무 일하기 싫음.게시판으로 문의를 주시면 시간날 때 가끔 처리 해드리도록 하겠습니다. 이상 더욱 더 노력하는 벨로가 되겠습니다~.');
INSERT INTO notice(noticeNum,writer,noticeTitle,noticeContent) 
values(notice_noticeNum_seq.nextval,'운영자','모델 사이즈 안내','안녕하세요 벨로 입니다.저희 벨로에 모델분들에 스펙을 좀 말씀드릴게여.넌 허리가 몇이니? 24요. 힙은? 34요.이상입니다.');
INSERT INTO notice(noticeNum,writer,noticeTitle,noticeContent) 
values(notice_noticeNum_seq.nextval,'운영자','통화량 폭주로 인한 고객센터 이용 안내','안녕하세요 벨로입니다. 지속적으로 상담하는 척 하고 있으나 좀 있어보일려고 이런 공지 하나 띄웁니다. 전화 하지말고 게시판에 문의 해주세요 전화 없어서 어차피 못받아요');
INSERT INTO notice(noticeNum,writer,noticeTitle,noticeContent) 
values(notice_noticeNum_seq.nextval,'운영자','게시판 운영 정책변경','안녕하세요 벨로 입니다. 빠른상담을 위해 교환/반품, 상품문의, 배송문의, 후기 등 각 게시글 특성에 맞지 않는 게시판에 작성 시 게시글 특성에 맞는 각 게시판으로 자동 이동되오니 참고 부탁드립니다!');
INSERT INTO notice(noticeNum,writer,noticeTitle,noticeContent) 
values(notice_noticeNum_seq.nextval,'운영자','추석 연휴 고객센터 휴무 안내','안녕하세요 벨로입니다. 추석 연휴를 맞아 9월 28일~ 10월 3일 까지 쉽니다. 오에!');
INSERT INTO notice(noticeNum,writer,noticeTitle,noticeContent) 
values(notice_noticeNum_seq.nextval,'운영자','반품 및 교환 안내','안녕하세요 벨로입니다.그딴 거 없습니다. 그냥 입으시죠');
INSERT INTO notice(noticeNum,writer,noticeTitle,noticeContent) 
values(notice_noticeNum_seq.nextval,'운영자','사이즈 측정법 안내','안녕하세요 벨로입니다.사이즈는 줄 자로 잘 재시면 됩니다.');
INSERT INTO notice(noticeNum,writer,noticeTitle,noticeContent) 
values(notice_noticeNum_seq.nextval,'운영자','소재별 세탁법','안녕하세요 벨로입니다.소재별로 따로 세탁을 해야 하는데 모르겠고 그냥 어머니한테 맞기면 됩니다.');
INSERT INTO notice(noticeNum,writer,noticeTitle,noticeContent) 
values(notice_noticeNum_seq.nextval,'운영자','쇼핑 가이드 안내','안녕하세요 벨로입니다. 저희 벨로는 원하시는 상품을 고르시고 장바구니에 담으신 다음 구매를 해주시면 마치 진짜 산 것 처럼 기대와 만족감을 얻으실 수 있습니다.');
INSERT INTO notice(noticeNum,writer,noticeTitle,noticeContent) 
values(notice_noticeNum_seq.nextval,'운영자','★벨로 모델 채용 안내★','안녕하세요 벨로입니다. 저희 벨로에서 같이 일하실 피팅모델을 구합니다 자세한 사항은 아래 링크에서 확인해주세요');
