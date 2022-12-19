--------------------------------------------------------
--  ������ ������ - ȭ����-9��-29-2020   
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
Insert into BCATEGORY (CATNUM,CATNAME,BTYPE,BMEMO) values (0,'���Ӹ� ����','blog',null);
Insert into BCATEGORY (CATNUM,CATNAME,BTYPE,BMEMO) values (1,'������','blog',null);
Insert into BCATEGORY (CATNUM,CATNAME,BTYPE,BMEMO) values (2,'������','album',null);
Insert into BCATEGORY (CATNUM,CATNAME,BTYPE,BMEMO) values (3,'QA','blog',null);
Insert into BCATEGORY (CATNUM,CATNAME,BTYPE,BMEMO) values (41,'���Խ���1','blog',null);
REM INSERTING into BCOMMENT
SET DEFINE OFF;
Insert into BCOMMENT (BCNUM,UCODE,PUCODE,BNUM,BCCONTENT,BCGRP,BCINDENT,BCSTEP,BCGOOD,BCBAD,CDATE,UDATE) values (1,21,1,8,'����׽�Ʈ 1?',1,0,0,0,1,to_timestamp('20/09/25 13:57:19.170000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:57:19.170000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BCOMMENT (BCNUM,UCODE,PUCODE,BNUM,BCCONTENT,BCGRP,BCINDENT,BCSTEP,BCGOOD,BCBAD,CDATE,UDATE) values (21,45,1,14,'����Ʈ �����մϴ�.?',21,0,0,1,0,to_timestamp('20/09/28 10:52:37.476000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/28 10:52:37.476000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into BCVOTE
SET DEFINE OFF;
Insert into BCVOTE (BCGBNUM,BNUM,BCNUM,UCODE,VOTED) values (1,8,1,21,'BAD');
Insert into BCVOTE (BCGBNUM,BNUM,BCNUM,UCODE,VOTED) values (21,14,21,45,'GOOD');
REM INSERTING into BLISTING
SET DEFINE OFF;
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (1,14,7,'�巹�� ����',1,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (2,14,5,'�縻',1,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (3,14,3,'���� ����',1,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (4,14,1,'����',1,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (5,14,34,'��Ƽ��',1,2);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (6,14,32,'�鵵 ũ��',1,2);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (7,14,30,'�鵵��',1,2);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (8,14,28,'�������Ʈ',1,2);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (9,14,26,'�μ�',1,2);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (10,14,57,'�˷�����',1,3);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (11,14,55,'��Ÿ��',1,3);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (12,14,70,'����',1,4);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (13,14,68,'����Ȯ�μ�',1,4);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (14,14,66,'�ź���',1,4);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (21,22,1047,'��������1',2,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (22,22,3,'���� ����',2,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (23,22,1,'����',1,1);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (24,22,62,'����',1,4);
Insert into BLISTING (BLINUM,BNUM,I_NUM,INAME,ICOUNT,CA_NUM) values (25,22,61,'����',1,4);
REM INSERTING into BOARD
SET DEFINE OFF;
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (7,2,4,1,'�׽�Ʈ �� 2 ��� ','11<div></div><div><br></div><div><br></div><img src="http://localhost:9080/pfpkg/tmpphoto/coding-924920_1920.jpg" name="coding-924920_1920.jpg" class="img_file"><img src="http://localhost:9080/pfpkg/tmpphoto/code-1839406_1920.jpg" name="code-1839406_1920.jpg" class="img_file">',8,to_timestamp('20/09/25 13:51:22.678000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 16:32:20.390000000','RR/MM/DD HH24:MI:SSXFF'),7,0,0,'photo\7\s\thumb_sunflowers-5579060_1920.jpg',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (8,3,7,1,'�׽�Ʈ �� 3 ����','�׽�Ʈ �� 3 ���&nbsp;',7,to_timestamp('20/09/25 13:51:37.283000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:51:37.283000000','RR/MM/DD HH24:MI:SSXFF'),8,0,0,'null',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (9,3,7,2,'[���]�׽�Ʈ �� 3 ����','[���]<div><br></div><div>�ٳ���</div>',6,to_timestamp('20/09/25 13:52:08.708000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:52:08.708000000','RR/MM/DD HH24:MI:SSXFF'),8,2,1,'null',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (10,1,1,2,'[���]�׽�Ʈ �� 1 ��� ','[���]<div><br></div><div><span style="font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;">�ٳ���</span><br></div>',0,to_timestamp('20/09/25 13:52:22.223000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:52:22.223000000','RR/MM/DD HH24:MI:SSXFF'),6,1,1,'null',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (11,2,4,2,'�������� ����� ���ȵ˴ϴ�. ','<div></div><img src="http://localhost:9080/pfpkg/tmpphoto/code-1839406_1920.jpg" name="code-1839406_1920.jpg" class="img_file">',7,to_timestamp('20/09/25 13:52:59.413000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:52:59.413000000','RR/MM/DD HH24:MI:SSXFF'),11,0,0,'photo\11\s\thumb_code-1839406_1920.jpg',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (6,1,1,1,'�׽�Ʈ �� 1 ��� ','�׽�Ʈ �� 1&nbsp; ���&nbsp;',4,to_timestamp('20/09/25 13:51:00.042000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:51:00.042000000','RR/MM/DD HH24:MI:SSXFF'),6,0,0,'null',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (12,3,7,21,'[���]�׽�Ʈ �� 3 ����','[���]<div>����� ���</div>',2,to_timestamp('20/09/25 13:57:34.079000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 13:57:34.079000000','RR/MM/DD HH24:MI:SSXFF'),8,1,1,'null',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (14,1,1,1,'������ ��õ����Ʈ �Դϴ�. ','������ ��õ����Ʈ �Դϴ�.&nbsp;',16,to_timestamp('20/09/25 15:39:10.149000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 15:39:10.149000000','RR/MM/DD HH24:MI:SSXFF'),14,0,0,'null','������ ��õ����Ʈ',null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (15,2,4,1,'121212','<div></div><div></div><div></div><img src="http://localhost:9080/pfpkg/tmpphoto/sunflowers-5579060_1920.jpg" name="sunflowers-5579060_1920.jpg" class="img_file"><div><br></div><div></div><br>',4,to_timestamp('20/09/25 16:34:15.407000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/25 16:34:15.407000000','RR/MM/DD HH24:MI:SSXFF'),15,0,0,'photo\15\s\thumb_sunflowers-5579060_1920.jpg',null,null,null,null);
Insert into BOARD (BNUM,BCATEGORY,HIDCATEGORY,UCODE,BTITLE,TCONTENT,BHITS,BCDATE,BUDATE,BGROUP,BSTEP,BINDENT,THUMBNAIL,LNAME,COL1,COL2,COL3) values (22,1,1,45,'�۾��� �׽�Ʈ with packing list 1 ','<b>�۾��� �׽�Ʈ with packing list 1&nbsp;</b>
								
									<div><b><br></b></div><div></div><img src="http://localhost:9080/pfpkg/tmpphoto/sunflowers-5579060_1920.jpg" name="sunflowers-5579060_1920.jpg" class="img_file">',1,to_timestamp('20/09/28 10:49:44.146000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/28 10:49:44.146000000','RR/MM/DD HH24:MI:SSXFF'),22,0,0,'photo\22\s\thumb_sunflowers-5579060_1920.jpg','����Ʈ2',null,null,null);
REM INSERTING into BOARD_UPLOAD_FILE
SET DEFINE OFF;
REM INSERTING into HEADID
SET DEFINE OFF;
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (1,1,'��_���Ӹ�1');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (2,1,'��_���Ӹ�2');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (3,1,'��_���Ӹ�3');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (4,2,'��_���Ӹ�1');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (5,2,'��_���Ӹ�2');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (6,2,'��_���Ӹ�3');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (7,3,'Q_���Ӹ�1');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (8,3,'Q_���Ӹ�2');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (9,3,'Q_���Ӹ�3');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (41,41,'�����Ӹ�1');
Insert into HEADID (HIDNUM,CATNUM,HIDNAME) values (42,41,'�����Ӹ�2');
REM INSERTING into ITEM
SET DEFINE OFF;
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,1,'����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,2,'������','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,3,'���� ����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,4,'�ӿ�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,5,'�縻','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,6,'�ݹ���','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,7,'�巹�� ����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,8,'��Ʈ','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,9,'����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,10,'����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,11,'�Ź�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,12,'������','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,13,'�Ȱ�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,14,'����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,15,'���','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,16,'�尩','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,17,'����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,18,'û����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,19,'�򸮴� ����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,20,'��Ʈ','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,21,'�ĵ�Ƽ','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,22,'���� ����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,23,'�ĸ���','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,24,'���۶�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,25,'��ī��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,26,'�μ�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,27,'���� û����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,28,'�������Ʈ','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,29,'����ũ','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,30,'�鵵��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,31,'�������','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,32,'�鵵 ũ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,33,'���','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,34,'��Ƽ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,35,'�ٵ����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,36,'��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,37,'��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,38,'��Ǫ','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,39,'��ũ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,40,'ġ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,41,'ġ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,42,'ĩ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,43,'Ŭ��¡ ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,44,'Ƽ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,45,'�ڵ� ũ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,46,'���','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,47,'��� ��������','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,48,'���� ũ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,49,'��/ �ν�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (2,50,'��Ų �ɾ� ��ǰ','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,51,'�����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,52,'�����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,53,'������','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,54,'�ֹ̾�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,55,'��Ÿ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,56,'������','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,57,'�˷�����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,58,'������','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,59,'���Ⱦ�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (3,60,'õ�� ���Ա�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,61,'����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,62,'����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,63,'ž�±�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,64,'��Ʈ','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,65,'���̾','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,66,'�ź���','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,67,'�ſ� ī��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,68,'����Ȯ�μ�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,69,'��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,70,'����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (4,71,'������','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,72,'���� ���͸�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,73,'�����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,74,'�̾���','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,75,'��Ʈ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,76,'������','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,77,'ī�޶�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (5,78,'�º� PC','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,79,'�ð�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,80,'��� ����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,81,'ĳ���� ���� ��','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,82,'���','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,83,'����','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,84,'���� �ȴ�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,85,'���۶�','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (6,86,'ĳ���� �ڹ���','null',1);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,1041,'��������1',null,42);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,1040,'��������1',null,41);
Insert into ITEM (CA_NUM,I_NUM,I_NAME,I_DESCRIPTION,LNUM) values (1,1047,'��������1',null,47);
REM INSERTING into I_CATEGORY
SET DEFINE OFF;
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (1,'�Ƿ�');
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (2,'����');
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (3,'�ǰ�');
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (4,'����');
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (5,'������ǰ');
Insert into I_CATEGORY (CA_NUM,CA_NAME) values (6,'��Ÿ');
REM INSERTING into LIST
SET DEFINE OFF;
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (1,1,'������ ����Ʈ',to_timestamp('20/09/25 12:42:35.329000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (22,1,'������ ��õ����Ʈ',to_timestamp('20/09/25 15:38:32.436000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (41,41,'���ο��Ʈ',to_timestamp('20/09/28 09:44:01.364000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (42,44,'������Ʈ',to_timestamp('20/09/28 10:16:06.537000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (47,45,'����Ʈ2',to_timestamp('20/09/28 10:41:20.765000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into LIST (LNUM,UCODE,LNAME,CDATE) values (48,45,'��������õlist',to_timestamp('20/09/28 10:51:38.719000000','RR/MM/DD HH24:MI:SSXFF'));
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
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (1,'admin@admin.com','qqaaqq','������','010-1234-5678','������',to_timestamp('20/09/25 12:42:34.516000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (2,'del','del','del','del','������11',to_timestamp('20/09/25 13:01:02.703000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (21,'del','del','del','del','darcy_rev',to_timestamp('20/09/25 13:54:54.865000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (41,'del','del','del','del','�׽���1_rev',to_timestamp('20/09/28 09:33:17.509000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (42,'del','del','del','del','�׽���1_rev',to_timestamp('20/09/28 10:02:12.735000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (43,'del','del','del','del','�׽���1_rev',to_timestamp('20/09/28 10:09:02.336000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (44,'del','del','del','del','�׽���1_rev',to_timestamp('20/09/28 10:13:15.394000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (45,'del','del','del','del','�׽���1_rev',to_timestamp('20/09/28 10:31:21.066000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (46,'tester1@gmail.com','qqaaqq','ȫ�浿1','010-1111-1111','�׽���2',to_timestamp('20/09/28 10:58:13.303000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (47,'tester2@gmail.com','qqaaqq','ȫ�浿2','010-1111-1111','�׽���3',to_timestamp('20/09/28 10:58:13.358000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (48,'tester3@gmail.com','qqaaqq','ȫ�浿3','010-1111-1111','�׽���4',to_timestamp('20/09/28 10:58:13.360000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (49,'tester4@gmail.com','qqaaqq','ȫ�浿4','010-1111-1111','�׽���5',to_timestamp('20/09/28 10:58:13.362000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (50,'tester5@gmail.com','qqaaqq','ȫ�浿5','010-1111-1111','�׽���6',to_timestamp('20/09/28 10:58:13.364000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (51,'tester6@gmail.com','qqaaqq','ȫ�浿6','010-1111-1111','�׽���7',to_timestamp('20/09/28 10:58:13.366000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (52,'tester7@gmail.com','qqaaqq','ȫ�浿7','010-1111-1111','�׽���8',to_timestamp('20/09/28 10:58:13.368000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (53,'tester8@gmail.com','qqaaqq','ȫ�浿8','010-1111-1111','�׽���9',to_timestamp('20/09/28 10:58:13.371000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (54,'tester9@gmail.com','qqaaqq','ȫ�浿9','010-1111-1111','�׽���10',to_timestamp('20/09/28 10:58:13.373000000','RR/MM/DD HH24:MI:SSXFF'),'none',null);
Insert into MEMBER (UCODE,ID,PW,NAME,TEL,NICKNAME,CDATE,SESSIONKEY,SESSIONLIMIT) values (55,'del','del','del','del','�׽���11',to_timestamp('20/09/28 10:58:13.375000000','RR/MM/DD HH24:MI:SSXFF'),'del',null);
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
