--------------------------------------------------------
--  파일이 생성됨 - 화요일-9월-29-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BCGB_BCGBNUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BCGB_BCGBNUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BCOMMENT_BCNUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BCOMMENT_BCNUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BCVOTE_BCGBNUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BCVOTE_BCGBNUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence B_BNUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "B_BNUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence B_CATNUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "B_CATNUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence B_L_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "B_L_NUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CA_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CA_NUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HIDNUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HIDNUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence I_NUM2_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "I_NUM2_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1060 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence I_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "I_NUM_SEQ"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LIST_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LIST_NUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence L_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "L_NUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence M_UCODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "M_UCODE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence UPLOAD_FILE_FID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "UPLOAD_FILE_FID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BCATEGORY
--------------------------------------------------------

  CREATE TABLE "BCATEGORY" 
   (	"CATNUM" NUMBER, 
	"CATNAME" VARCHAR2(30), 
	"BTYPE" VARCHAR2(30), 
	"BMEMO" VARCHAR2(150)
   ) ;
--------------------------------------------------------
--  DDL for Table BCOMMENT
--------------------------------------------------------

  CREATE TABLE "BCOMMENT" 
   (	"BCNUM" NUMBER, 
	"UCODE" NUMBER, 
	"PUCODE" NUMBER, 
	"BNUM" NUMBER, 
	"BCCONTENT" VARCHAR2(500), 
	"BCGRP" NUMBER, 
	"BCINDENT" NUMBER DEFAULT 0, 
	"BCSTEP" NUMBER DEFAULT 0, 
	"BCGOOD" NUMBER DEFAULT 0, 
	"BCBAD" NUMBER DEFAULT 0, 
	"CDATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UDATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP
   ) ;
--------------------------------------------------------
--  DDL for Table BCVOTE
--------------------------------------------------------

  CREATE TABLE "BCVOTE" 
   (	"BCGBNUM" NUMBER, 
	"BNUM" NUMBER, 
	"BCNUM" NUMBER, 
	"UCODE" NUMBER, 
	"VOTED" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table BLISTING
--------------------------------------------------------

  CREATE TABLE "BLISTING" 
   (	"BLINUM" NUMBER, 
	"BNUM" NUMBER, 
	"I_NUM" NUMBER, 
	"INAME" VARCHAR2(30), 
	"ICOUNT" NUMBER, 
	"CA_NUM" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "BOARD" 
   (	"BNUM" NUMBER, 
	"BCATEGORY" NUMBER, 
	"HIDCATEGORY" NUMBER, 
	"UCODE" NUMBER, 
	"BTITLE" VARCHAR2(120), 
	"BCONTENT" BLOB, 
	"TCONTENT" VARCHAR2(1500), 
	"BHITS" NUMBER DEFAULT 0, 
	"BCDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"BUDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"BGROUP" NUMBER(5,0), 
	"BSTEP" NUMBER(5,0) DEFAULT 0, 
	"BINDENT" NUMBER(5,0) DEFAULT 0, 
	"THUMBNAIL" VARCHAR2(100), 
	"LNAME" VARCHAR2(30), 
	"COL1" VARCHAR2(30), 
	"COL2" VARCHAR2(30), 
	"COL3" VARCHAR2(30)
   ) ;
--------------------------------------------------------
--  DDL for Table BOARD_UPLOAD_FILE
--------------------------------------------------------

  CREATE TABLE "BOARD_UPLOAD_FILE" 
   (	"FID" NUMBER(10,0), 
	"BNUM" NUMBER(10,0), 
	"FNAME" VARCHAR2(150), 
	"FSIZE" VARCHAR2(45), 
	"FTYPE" VARCHAR2(50), 
	"FDATA" BLOB, 
	"THUMBFNAME" VARCHAR2(150), 
	"THUMBFDATA" BLOB, 
	"THUMBFSIZE" VARCHAR2(45), 
	"CDATE" TIMESTAMP (6) DEFAULT systimeStamp, 
	"UDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"ISTHUMB" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table HEADID
--------------------------------------------------------

  CREATE TABLE "HEADID" 
   (	"HIDNUM" NUMBER, 
	"CATNUM" NUMBER, 
	"HIDNAME" VARCHAR2(30)
   ) ;
--------------------------------------------------------
--  DDL for Table ITEM
--------------------------------------------------------

  CREATE TABLE "ITEM" 
   (	"CA_NUM" NUMBER, 
	"I_NUM" NUMBER, 
	"I_NAME" VARCHAR2(20), 
	"I_DESCRIPTION" VARCHAR2(500), 
	"LNUM" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table I_CATEGORY
--------------------------------------------------------

  CREATE TABLE "I_CATEGORY" 
   (	"CA_NUM" NUMBER, 
	"CA_NAME" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table LIST
--------------------------------------------------------

  CREATE TABLE "LIST" 
   (	"LNUM" NUMBER, 
	"UCODE" NUMBER, 
	"LNAME" VARCHAR2(50), 
	"CDATE" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table LISTING
--------------------------------------------------------

  CREATE TABLE "LISTING" 
   (	"LINUM" NUMBER, 
	"LNUM" NUMBER, 
	"I_NUM" NUMBER, 
	"CHECKED" VARCHAR2(10), 
	"ICOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"UCODE" NUMBER, 
	"ID" VARCHAR2(30), 
	"PW" VARCHAR2(20), 
	"NAME" VARCHAR2(20), 
	"TEL" VARCHAR2(20), 
	"NICKNAME" VARCHAR2(20), 
	"CDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"SESSIONKEY" VARCHAR2(50) DEFAULT 'none', 
	"SESSIONLIMIT" TIMESTAMP (6)
   ) ;
REM INSERTING into BCATEGORY
SET DEFINE OFF;
Insert into BCATEGORY (CATNUM,CATNAME,BTYPE,BMEMO) values (0,'말머리 없음','blog',null);
Insert into BCATEGORY (CATNUM,CATNAME,BTYPE,BMEMO) values (1,'여행팁','blog',null);
Insert into BCATEGORY (CATNUM,CATNAME,BTYPE,BMEMO) values (2,'갤러리','album',null);
Insert into BCATEGORY (CATNUM,CATNAME,BTYPE,BMEMO) values (3,'QA','blog',null);
Insert into BCATEGORY (CATNUM,CATNAME,BTYPE,BMEMO) values (41,'새게시판1','blog',null);
REM INSERTING into BCOMMENT
SET DEFINE OFF;
Insert into BCOMMENT (BCNUM,UCODE,PUCODE,BNUM,BCCONTENT,BCGRP,BCINDENT,BCSTEP,BCGOOD,BCBAD,CDATE,UDATE) values (1,21,1,8,'댓글테스트 1?',1,0,0,0,1,to_timestamp('20/09/25 13:57:19.170000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:57:19.170000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BCOMMENT (BCNUM,UCODE,PUCODE,BNUM,BCCONTENT,BCGRP,BCINDENT,BCSTEP,BCGOOD,BCBAD,CDATE,UDATE) values (21,45,1,14,'리스트 감사합니다.?',21,0,0,1,0,to_timestamp('20/09/28 10:52:37.476000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/28 10:52:37.476000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into BCVOTE
SET DEFINE OFF;
Insert into BCVOTE (BCGBNUM,BNUM,BCNUM,UCODE,VOTED) values (1,8,1,21,'BAD');
Insert into BCVOTE (BCGBNUM,BNUM,BCNUM,UCODE,VOTED) values (21,14,21,45,'GOOD');
REM INSERTING into BLISTING
SET DEFINE OFF;
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (1,14,7,'드레스 셔츠',1,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (2,14,5,'양말',1,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (3,14,3,'러닝 셔츠',1,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (4,14,1,'셔츠',1,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (5,14,34,'물티슈',1,2);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (6,14,32,'면도 크림',1,2);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (7,14,30,'면도기',1,2);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (8,14,28,'데오드란트',1,2);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (9,14,26,'로션',1,2);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (10,14,57,'알러지약',1,3);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (11,14,55,'비타민',1,3);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (12,14,70,'현금',1,4);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (13,14,68,'예약확인서',1,4);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (14,14,66,'신분증',1,4);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (21,22,1047,'내아이템1',2,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (22,22,3,'러닝 셔츠',2,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (23,22,1,'셔츠',1,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (24,22,62,'여권',1,4);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (25,22,61,'비자',1,4);
REM INSERTING into BOARD
SET DEFINE OFF;
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (7,2,4,1,'테스트 글 2 사과 ','11<div></div><div><br></div><div><br></div><img src="http://localhost:9080/pfpkg/tmpphoto/coding-924920_1920.jpg" name="coding-924920_1920.jpg" class="img_file"><img src="http://localhost:9080/pfpkg/tmpphoto/code-1839406_1920.jpg" name="code-1839406_1920.jpg" class="img_file">',8,to_timestamp('20/09/25 13:51:22.678000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 16:32:20.390000000','RR/MM/DD HH24:MI:SSXFF'),7,0,0,'photo\7\s\thumb_sunflowers-5579060_1920.jpg',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (8,3,7,1,'테스트 글 3 포도','테스트 글 3 사과&nbsp;',7,to_timestamp('20/09/25 13:51:37.283000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:51:37.283000000','RR/MM/DD HH24:MI:SSXFF'),8,0,0,'null',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (9,3,7,2,'[답글]테스트 글 3 포도','[답글]<div><br></div><div>바나나</div>',6,to_timestamp('20/09/25 13:52:08.708000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:52:08.708000000','RR/MM/DD HH24:MI:SSXFF'),8,2,1,'null',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (10,1,1,2,'[답글]테스트 글 1 사과 ','[답글]<div><br></div><div><span style="font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;">바나나</span><br></div>',0,to_timestamp('20/09/25 13:52:22.223000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:52:22.223000000','RR/MM/DD HH24:MI:SSXFF'),6,1,1,'null',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (11,2,4,2,'갤러리는 답글이 허용안됩니다. ','<div></div><img src="http://localhost:9080/pfpkg/tmpphoto/code-1839406_1920.jpg" name="code-1839406_1920.jpg" class="img_file">',7,to_timestamp('20/09/25 13:52:59.413000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:52:59.413000000','RR/MM/DD HH24:MI:SSXFF'),11,0,0,'photo\11\s\thumb_code-1839406_1920.jpg',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (6,1,1,1,'테스트 글 1 사과 ','테스트 글 1&nbsp; 사과&nbsp;',4,to_timestamp('20/09/25 13:51:00.042000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:51:00.042000000','RR/MM/DD HH24:MI:SSXFF'),6,0,0,'null',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (12,3,7,21,'[답글]테스트 글 3 포도','[답글]<div>답글의 답글</div>',2,to_timestamp('20/09/25 13:57:34.079000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:57:34.079000000','RR/MM/DD HH24:MI:SSXFF'),8,1,1,'null',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (14,1,1,1,'관리자 추천리스트 입니다. ','관리자 추천리스트 입니다.&nbsp;',16,to_timestamp('20/09/25 15:39:10.149000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 15:39:10.149000000','RR/MM/DD HH24:MI:SSXFF'),14,0,0,'null','관리자 추천리스트',null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (15,2,4,1,'121212','<div></div><div></div><div></div><img src="http://localhost:9080/pfpkg/tmpphoto/sunflowers-5579060_1920.jpg" name="sunflowers-5579060_1920.jpg" class="img_file"><div><br></div><div></div><br>',4,to_timestamp('20/09/25 16:34:15.407000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 16:34:15.407000000','RR/MM/DD HH24:MI:SSXFF'),15,0,0,'photo\15\s\thumb_sunflowers-5579060_1920.jpg',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (22,1,1,45,'글쓰기 테스트 with packing list 1 ','<b>글쓰기 테스트 with packing list 1&nbsp;</b>
								
									<div><b><br></b></div><div></div><img src="http://localhost:9080/pfpkg/tmpphoto/sunflowers-5579060_1920.jpg" name="sunflowers-5579060_1920.jpg" class="img_file">',1,to_timestamp('20/09/28 10:49:44.146000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/28 10:49:44.146000000','RR/MM/DD HH24:MI:SSXFF'),22,0,0,'photo\22\s\thumb_sunflowers-5579060_1920.jpg','리스트2',null,null,null);
REM INSERTING into BOARD_UPLOAD_FILE
SET DEFINE OFF;
REM INSERTING into HEADID
SET DEFINE OFF;
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (1,1,'팁_말머리1');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (2,1,'팁_말머리2');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (3,1,'팁_말머리3');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (4,2,'갤_말머리1');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (5,2,'갤_말머리2');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (6,2,'갤_말머리3');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (7,3,'Q_말머리1');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (8,3,'Q_말머리2');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (9,3,'Q_말머리3');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (41,41,'새말머리1');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (42,41,'새말머리2');
REM INSERTING into ITEM
SET DEFINE OFF;
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,1,'셔츠','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,2,'스웨터','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,3,'러닝 셔츠','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,4,'속옷','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,5,'양말','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,6,'반바지','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,7,'드레스 셔츠','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,8,'벨트','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,9,'모자','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,10,'수건','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,11,'신발','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,12,'슬리퍼','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,13,'안경','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,14,'자켓','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,15,'잠옷','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,16,'장갑','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,17,'조끼','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,18,'청바지','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,19,'츄리닝 바지','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,20,'코트','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,21,'후드티','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,22,'정장 바지','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,23,'후리스','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,24,'선글라스','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,25,'스카프','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,26,'로션','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,27,'구강 청결제','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,28,'데오드란트','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,29,'마스크','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,30,'면도기','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,31,'손톱깎이','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,32,'면도 크림','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,33,'면봉','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,34,'물티슈','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,35,'바디워시','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,36,'비누','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,37,'빗','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,38,'샴푸','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,39,'썬크림','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,40,'치실','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,41,'치약','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,42,'칫솔','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,43,'클렌징 폼','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,44,'티슈','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,45,'핸드 크림','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,46,'향수','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,47,'헤어 스프레이','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,48,'수분 크림','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,49,'젤/ 왁스','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,50,'스킨 케어 제품','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,51,'감기약','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,52,'두통약','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,53,'반찬고','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,54,'멀미약','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,55,'비타민','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,56,'수면제','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,57,'알러지약','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,58,'진통제','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,59,'점안액','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,60,'천식 흡입기','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,61,'비자','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,62,'여권','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,63,'탑승권','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,64,'노트','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,65,'다이어리','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,66,'신분증','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,67,'신용 카드','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,68,'예약확인서','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,69,'펜','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,70,'현금','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,71,'보험증','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,72,'보조 배터리','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,73,'어댑터','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,74,'이어폰','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,75,'노트북','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,76,'충전기','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,77,'카메라','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,78,'태블릿 PC','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,79,'시계','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,80,'비닐 봉투','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,81,'캐리어 네임 택','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,82,'담요','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,83,'목배게','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,84,'수면 안대','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,85,'지퍼락','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,86,'캐리어 자물쇠','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,1041,'내아이템1',null,42);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,1040,'새아이템1',null,41);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,1047,'내아이템1',null,47);
REM INSERTING into I_CATEGORY
SET DEFINE OFF;
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (1,'의류');
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (2,'위생');
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (3,'건강');
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (4,'서류');
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (5,'전자제품');
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (6,'기타');
REM INSERTING into LIST
SET DEFINE OFF;
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (1,1,'관리자 리스트',to_timestamp('20/09/25 12:42:35.329000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (22,1,'관리자 추천리스트',to_timestamp('20/09/25 15:38:32.436000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (41,41,'새로운리스트',to_timestamp('20/09/28 09:44:01.364000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (42,44,'내리스트',to_timestamp('20/09/28 10:16:06.537000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (47,45,'리스트2',to_timestamp('20/09/28 10:41:20.765000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (48,45,'관리자추천list',to_timestamp('20/09/28 10:51:38.719000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into LISTING
SET DEFINE OFF;
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (31,22,3,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (32,22,1,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (33,22,34,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (34,22,32,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (35,22,30,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (29,22,7,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (36,22,28,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (30,22,5,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (37,22,26,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (38,22,57,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (39,22,55,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (40,22,66,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (41,22,68,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (42,22,70,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (83,41,1,'true',2);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (84,41,26,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (85,41,62,'true',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (86,41,61,'true',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (87,41,78,'true',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (88,42,1041,'false',3);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (89,42,3,'true',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (90,42,1,'true',2);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (91,42,62,'true',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (92,42,61,'true',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (119,47,3,'false',2);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (120,47,1,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (81,41,1040,'true',2);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (82,41,3,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (121,47,62,'true',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (122,47,61,'true',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (123,48,7,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (124,48,5,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (125,48,3,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (126,48,1,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (127,48,34,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (128,48,32,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (118,47,1047,'false',2);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (129,48,30,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (130,48,28,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (131,48,26,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (132,48,57,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (133,48,55,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (134,48,70,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (135,48,68,'false',1);
Insert into LISTING (LINUM,LNUM,I_NUM,CHECKED,ICOUNT) values (136,48,66,'false',1);
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (1,'admin@admin.com','qqaaqq','관리자','010-1234-5678','관리자',to_timestamp('20/09/25 12:42:34.516000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (2,'del','del','del','del','선데이11',to_timestamp('20/09/25 13:01:02.703000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (21,'del','del','del','del','darcy_rev',to_timestamp('20/09/25 13:54:54.865000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (41,'del','del','del','del','테스터1_rev',to_timestamp('20/09/28 09:33:17.509000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (42,'del','del','del','del','테스터1_rev',to_timestamp('20/09/28 10:02:12.735000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (43,'del','del','del','del','테스터1_rev',to_timestamp('20/09/28 10:09:02.336000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (44,'del','del','del','del','테스터1_rev',to_timestamp('20/09/28 10:13:15.394000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (45,'del','del','del','del','테스터1_rev',to_timestamp('20/09/28 10:31:21.066000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (46,'tester1@gmail.com','qqaaqq','홍길동1','010-1111-1111','테스터2',to_timestamp('20/09/28 10:58:13.303000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (47,'tester2@gmail.com','qqaaqq','홍길동2','010-1111-1111','테스터3',to_timestamp('20/09/28 10:58:13.358000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (48,'tester3@gmail.com','qqaaqq','홍길동3','010-1111-1111','테스터4',to_timestamp('20/09/28 10:58:13.360000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (49,'tester4@gmail.com','qqaaqq','홍길동4','010-1111-1111','테스터5',to_timestamp('20/09/28 10:58:13.362000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (50,'tester5@gmail.com','qqaaqq','홍길동5','010-1111-1111','테스터6',to_timestamp('20/09/28 10:58:13.364000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (51,'tester6@gmail.com','qqaaqq','홍길동6','010-1111-1111','테스터7',to_timestamp('20/09/28 10:58:13.366000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (52,'tester7@gmail.com','qqaaqq','홍길동7','010-1111-1111','테스터8',to_timestamp('20/09/28 10:58:13.368000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (53,'tester8@gmail.com','qqaaqq','홍길동8','010-1111-1111','테스터9',to_timestamp('20/09/28 10:58:13.371000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (54,'tester9@gmail.com','qqaaqq','홍길동9','010-1111-1111','테스터10',to_timestamp('20/09/28 10:58:13.373000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (55,'del','del','del','del','테스터11',to_timestamp('20/09/28 10:58:13.375000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
--------------------------------------------------------
--  Constraints for Table BCVOTE
--------------------------------------------------------

  ALTER TABLE "BCVOTE" ADD PRIMARY KEY ("BCGBNUM") ENABLE;
  ALTER TABLE "BCVOTE" ADD CHECK (voted = 'GOOD' or voted='BAD') ENABLE;
  ALTER TABLE "BCVOTE" MODIFY ("UCODE" NOT NULL ENABLE);
  ALTER TABLE "BCVOTE" MODIFY ("BCNUM" NOT NULL ENABLE);
  ALTER TABLE "BCVOTE" MODIFY ("BNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARD_UPLOAD_FILE
--------------------------------------------------------

  ALTER TABLE "BOARD_UPLOAD_FILE" ADD PRIMARY KEY ("FID") ENABLE;
  ALTER TABLE "BOARD_UPLOAD_FILE" ADD CHECK (isThumb ='true' or isThumb= 'false') ENABLE;
--------------------------------------------------------
--  Constraints for Table HEADID
--------------------------------------------------------

  ALTER TABLE "HEADID" ADD PRIMARY KEY ("HIDNUM") ENABLE;
  ALTER TABLE "HEADID" MODIFY ("HIDNAME" NOT NULL ENABLE);
  ALTER TABLE "HEADID" MODIFY ("CATNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD PRIMARY KEY ("UCODE") ENABLE;
  ALTER TABLE "MEMBER" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("TEL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("PW" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BLISTING
--------------------------------------------------------

  ALTER TABLE "BLISTING" ADD PRIMARY KEY ("BLINUM") ENABLE;
--------------------------------------------------------
--  Constraints for Table LISTING
--------------------------------------------------------

  ALTER TABLE "LISTING" ADD PRIMARY KEY ("LINUM") ENABLE;
--------------------------------------------------------
--  Constraints for Table ITEM
--------------------------------------------------------

  ALTER TABLE "ITEM" ADD PRIMARY KEY ("I_NUM") ENABLE;
  ALTER TABLE "ITEM" MODIFY ("LNUM" NOT NULL ENABLE);
  ALTER TABLE "ITEM" MODIFY ("I_NAME" NOT NULL ENABLE);
  ALTER TABLE "ITEM" MODIFY ("CA_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" ADD PRIMARY KEY ("BNUM") ENABLE;
  ALTER TABLE "BOARD" MODIFY ("BTITLE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("UCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BCATEGORY
--------------------------------------------------------

  ALTER TABLE "BCATEGORY" ADD PRIMARY KEY ("CATNUM") ENABLE;
  ALTER TABLE "BCATEGORY" ADD CHECK (btype ='blog' or btype= 'album') ENABLE;
  ALTER TABLE "BCATEGORY" MODIFY ("BTYPE" NOT NULL ENABLE);
  ALTER TABLE "BCATEGORY" MODIFY ("CATNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table I_CATEGORY
--------------------------------------------------------

  ALTER TABLE "I_CATEGORY" ADD PRIMARY KEY ("CA_NUM") ENABLE;
--------------------------------------------------------
--  Constraints for Table LIST
--------------------------------------------------------

  ALTER TABLE "LIST" ADD PRIMARY KEY ("LNUM") ENABLE;
  ALTER TABLE "LIST" MODIFY ("LNAME" NOT NULL ENABLE);
  ALTER TABLE "LIST" MODIFY ("UCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BCOMMENT
--------------------------------------------------------

  ALTER TABLE "BCOMMENT" ADD PRIMARY KEY ("BCNUM") ENABLE;
  ALTER TABLE "BCOMMENT" ADD CHECK (bcIndent=0 or bcIndent = 1) ENABLE;
  ALTER TABLE "BCOMMENT" MODIFY ("BCCONTENT" NOT NULL ENABLE);
  ALTER TABLE "BCOMMENT" MODIFY ("BNUM" NOT NULL ENABLE);
  ALTER TABLE "BCOMMENT" MODIFY ("PUCODE" NOT NULL ENABLE);
  ALTER TABLE "BCOMMENT" MODIFY ("UCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BCOMMENT
--------------------------------------------------------

  ALTER TABLE "BCOMMENT" ADD FOREIGN KEY ("BNUM")
	  REFERENCES "BOARD" ("BNUM") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BCOMMENT" ADD FOREIGN KEY ("UCODE")
	  REFERENCES "MEMBER" ("UCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BCVOTE
--------------------------------------------------------

  ALTER TABLE "BCVOTE" ADD FOREIGN KEY ("BNUM")
	  REFERENCES "BOARD" ("BNUM") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BCVOTE" ADD FOREIGN KEY ("BCNUM")
	  REFERENCES "BCOMMENT" ("BCNUM") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BCVOTE" ADD FOREIGN KEY ("UCODE")
	  REFERENCES "MEMBER" ("UCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BLISTING
--------------------------------------------------------

  ALTER TABLE "BLISTING" ADD FOREIGN KEY ("BNUM")
	  REFERENCES "BOARD" ("BNUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" ADD FOREIGN KEY ("BCATEGORY")
	  REFERENCES "BCATEGORY" ("CATNUM") ENABLE;
  ALTER TABLE "BOARD" ADD FOREIGN KEY ("HIDCATEGORY")
	  REFERENCES "HEADID" ("HIDNUM") ENABLE;
  ALTER TABLE "BOARD" ADD FOREIGN KEY ("UCODE")
	  REFERENCES "MEMBER" ("UCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARD_UPLOAD_FILE
--------------------------------------------------------

  ALTER TABLE "BOARD_UPLOAD_FILE" ADD FOREIGN KEY ("BNUM")
	  REFERENCES "BOARD" ("BNUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HEADID
--------------------------------------------------------

  ALTER TABLE "HEADID" ADD FOREIGN KEY ("CATNUM")
	  REFERENCES "BCATEGORY" ("CATNUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEM
--------------------------------------------------------

  ALTER TABLE "ITEM" ADD FOREIGN KEY ("CA_NUM")
	  REFERENCES "I_CATEGORY" ("CA_NUM") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ITEM" ADD CONSTRAINT "SYS_C0011992" FOREIGN KEY ("LNUM")
	  REFERENCES "LIST" ("LNUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIST
--------------------------------------------------------

  ALTER TABLE "LIST" ADD FOREIGN KEY ("UCODE")
	  REFERENCES "MEMBER" ("UCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LISTING
--------------------------------------------------------

  ALTER TABLE "LISTING" ADD FOREIGN KEY ("LNUM")
	  REFERENCES "LIST" ("LNUM") ON DELETE CASCADE ENABLE;
  ALTER TABLE "LISTING" ADD FOREIGN KEY ("I_NUM")
	  REFERENCES "ITEM" ("I_NUM") ENABLE;
