/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : Oracle
 Source Server Version : 190000
 Source Host           : localhost:1521
 Source Schema         : C##MOVIE_DATABASE

 Target Server Type    : Oracle
 Target Server Version : 190000
 File Encoding         : 65001

 Date: 15/08/2022 13:06:49
*/


-- ----------------------------
-- Table structure for ActedBy
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."ActedBy";
CREATE TABLE "C##MOVIE_DATABASE"."ActedBy" (
  "Title" VARCHAR2(255 BYTE) VISIBLE,
  "Release_Date" DATE VISIBLE,
  "SSN" VARCHAR2(255 BYTE) VISIBLE,
  "Role" VARCHAR2(255 BYTE) VISIBLE,
  "Salary" NUMBER VISIBLE,
  "Id" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ActedBy
-- ----------------------------

-- ----------------------------
-- Table structure for Actor
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Actor";
CREATE TABLE "C##MOVIE_DATABASE"."Actor" (
  "SSN" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Name" VARCHAR2(255 BYTE) VISIBLE,
  "Date_of_Birth" DATE VISIBLE,
  "Description" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Actor
-- ----------------------------

-- ----------------------------
-- Table structure for Actoraward
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Actoraward";
CREATE TABLE "C##MOVIE_DATABASE"."Actoraward" (
  "Award_name" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "SSN" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "year" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "catagory" VARCHAR2(255 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Actoraward
-- ----------------------------

-- ----------------------------
-- Table structure for Award
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Award";
CREATE TABLE "C##MOVIE_DATABASE"."Award" (
  "Award_name" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Country" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Award
-- ----------------------------

-- ----------------------------
-- Table structure for Directors
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Directors";
CREATE TABLE "C##MOVIE_DATABASE"."Directors" (
  "SSN" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Date_of_Birth" DATE VISIBLE,
  "Name" VARCHAR2(255 BYTE) VISIBLE,
  "Description" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Directors
-- ----------------------------
INSERT INTO "C##MOVIE_DATABASE"."Directors" VALUES ('012', TO_DATE('2022-08-15 04:26:26', 'SYYYY-MM-DD HH24:MI:SS'), 'Jane', 'Oof');
INSERT INTO "C##MOVIE_DATABASE"."Directors" VALUES ('013', TO_DATE('2022-08-15 12:49:50', 'SYYYY-MM-DD HH24:MI:SS'), 'Jack', 'Wow');
INSERT INTO "C##MOVIE_DATABASE"."Directors" VALUES ('011', TO_DATE('2022-08-10 11:44:55', 'SYYYY-MM-DD HH24:MI:SS'), 'Pitar', 'Vxd');

-- ----------------------------
-- Table structure for Figurine
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Figurine";
CREATE TABLE "C##MOVIE_DATABASE"."Figurine" (
  "Product_id" NUMBER VISIBLE NOT NULL,
  "size(inch)" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Figurine
-- ----------------------------

-- ----------------------------
-- Table structure for Merchandise
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Merchandise";
CREATE TABLE "C##MOVIE_DATABASE"."Merchandise" (
  "Product_id" NUMBER VISIBLE NOT NULL,
  "description" VARCHAR2(255 BYTE) VISIBLE,
  "Price" NUMBER VISIBLE,
  "In_Stock" VARCHAR2(255 BYTE) VISIBLE,
  "Picture" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Merchandise
-- ----------------------------

-- ----------------------------
-- Table structure for Movies
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Movies";
CREATE TABLE "C##MOVIE_DATABASE"."Movies" (
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Release_Date" DATE VISIBLE NOT NULL,
  "Runtime" NUMBER VISIBLE,
  "Revenue" FLOAT(126) VISIBLE,
  "Genre" VARCHAR2(255 BYTE) VISIBLE,
  "Id" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Movies
-- ----------------------------
INSERT INTO "C##MOVIE_DATABASE"."Movies" VALUES ('The godfather', TO_DATE('2022-08-10 12:29:44', 'SYYYY-MM-DD HH24:MI:SS'), '100', '100', 'Crime', '1');
INSERT INTO "C##MOVIE_DATABASE"."Movies" VALUES ('Tenet ', TO_DATE('2021-05-23 23:43:56', 'SYYYY-MM-DD HH24:MI:SS'), '120', '150', 'Sci-fi', '2');
INSERT INTO "C##MOVIE_DATABASE"."Movies" VALUES ('Gravity', TO_DATE('2022-08-15 12:52:11', 'SYYYY-MM-DD HH24:MI:SS'), '150', '130', 'Sci-fi', '3');

-- ----------------------------
-- Table structure for Poster
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Poster";
CREATE TABLE "C##MOVIE_DATABASE"."Poster" (
  "Product_id" NUMBER VISIBLE NOT NULL,
  "size(cm*cm)" NUMBER VISIBLE,
  "color_scheme" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Poster
-- ----------------------------

-- ----------------------------
-- Table structure for Rated
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Rated";
CREATE TABLE "C##MOVIE_DATABASE"."Rated" (
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Release_Date" DATE VISIBLE NOT NULL,
  "Stars" NUMBER VISIBLE,
  "Id" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Rated
-- ----------------------------

-- ----------------------------
-- Table structure for Review
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Review";
CREATE TABLE "C##MOVIE_DATABASE"."Review" (
  "Review_id" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Date" DATE VISIBLE,
  "Content" VARCHAR2(1000 BYTE) VISIBLE,
  "Votes" VARCHAR2(255 BYTE) VISIBLE,
  "Username" VARCHAR2(255 BYTE) VISIBLE,
  "Title" VARCHAR2(255 BYTE) VISIBLE,
  "show_id" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Review
-- ----------------------------

-- ----------------------------
-- Table structure for Show
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Show";
CREATE TABLE "C##MOVIE_DATABASE"."Show" (
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Genre" VARCHAR2(255 BYTE) VISIBLE,
  "Plot" VARCHAR2(255 BYTE) VISIBLE,
  "Release_Date" DATE VISIBLE NOT NULL,
  "Pictures" VARCHAR2(255 BYTE) VISIBLE,
  "Director_ssn" VARCHAR2(255 BYTE) VISIBLE,
  "Studio_name" VARCHAR2(255 BYTE) VISIBLE,
  "Id" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Show
-- ----------------------------
INSERT INTO "C##MOVIE_DATABASE"."Show" VALUES ('Tenet', 'Sci-fi', 'Yikes', TO_DATE('2021-05-23 23:43:56', 'SYYYY-MM-DD HH24:MI:SS'), 'nai', '012', 'Disney', '2');
INSERT INTO "C##MOVIE_DATABASE"."Show" VALUES ('Gravity', 'Sci-fi', 'wow', TO_DATE('2022-08-15 12:51:11', 'SYYYY-MM-DD HH24:MI:SS'), 'nai', '013', 'Pixar', '3');
INSERT INTO "C##MOVIE_DATABASE"."Show" VALUES ('The Godfather', 'Crime', 'jani na', TO_DATE('2022-08-10 11:45:54', 'SYYYY-MM-DD HH24:MI:SS'), 'nai', '011', 'Pixar', '1');

-- ----------------------------
-- Table structure for ShowAward
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."ShowAward";
CREATE TABLE "C##MOVIE_DATABASE"."ShowAward" (
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Release_Date" DATE VISIBLE NOT NULL,
  "Award_name" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "year" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "catagory" VARCHAR2(255 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ShowAward
-- ----------------------------

-- ----------------------------
-- Table structure for Studio
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Studio";
CREATE TABLE "C##MOVIE_DATABASE"."Studio" (
  "Studio_name" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Headquarters" VARCHAR2(255 BYTE) VISIBLE,
  "Founding_Date" DATE VISIBLE,
  "Country" VARCHAR2(255 BYTE) VISIBLE,
  "Website" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Studio
-- ----------------------------
INSERT INTO "C##MOVIE_DATABASE"."Studio" VALUES ('Mappa', 'Japan', TO_DATE('2022-08-15 12:50:22', 'SYYYY-MM-DD HH24:MI:SS'), 'Japan', 'www.mappa.com');
INSERT INTO "C##MOVIE_DATABASE"."Studio" VALUES ('Disney', 'USA', TO_DATE('2022-08-15 04:27:07', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'www.disney.com');
INSERT INTO "C##MOVIE_DATABASE"."Studio" VALUES ('Pixar', 'USA', TO_DATE('2022-08-10 11:44:22', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'www.pixer.co');

-- ----------------------------
-- Table structure for T_shirt
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."T_shirt";
CREATE TABLE "C##MOVIE_DATABASE"."T_shirt" (
  "Product_id" NUMBER VISIBLE NOT NULL,
  "size" NUMBER VISIBLE,
  "color" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of T_shirt
-- ----------------------------

-- ----------------------------
-- Table structure for Tv_series
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Tv_series";
CREATE TABLE "C##MOVIE_DATABASE"."Tv_series" (
  "Title" VARCHAR2(255 BYTE) VISIBLE,
  "Release_Date" DATE VISIBLE,
  "Number_of_seasons" NUMBER VISIBLE,
  "Number_of_Episodes" NUMBER VISIBLE,
  "Genre" VARCHAR2(255 BYTE) VISIBLE,
  "Id" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Tv_series
-- ----------------------------

-- ----------------------------
-- Table structure for Useraccount
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Useraccount";
CREATE TABLE "C##MOVIE_DATABASE"."Useraccount" (
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Password" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "First_Name" VARCHAR2(255 BYTE) VISIBLE,
  "Last_Name" VARCHAR2(255 BYTE) VISIBLE,
  "Date_of_birth" DATE VISIBLE,
  "Email" VARCHAR2(255 BYTE) VISIBLE,
  "Credit_card_no" NUMBER VISIBLE,
  "Profile_picture" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Useraccount
-- ----------------------------
INSERT INTO "C##MOVIE_DATABASE"."Useraccount" VALUES ('nabid', '124', 'nabid', 'hasan', TO_DATE('2022-08-10 13:53:59', 'SYYYY-MM-DD HH24:MI:SS'), 'nabid.hasan987@gmail.com', '111', 'www');
INSERT INTO "C##MOVIE_DATABASE"."Useraccount" VALUES ('Siam', 'cheggstudy7869@gmail.com', NULL, NULL, NULL, '$2b$04$iPrvN/Mo.VkBupc1zGRPxOaAoOQeR/QRqT08gplgRt7ajpZf.xmH2', NULL, NULL);
INSERT INTO "C##MOVIE_DATABASE"."Useraccount" VALUES ('Amychan0305', 'araminafairy@gmail.com', NULL, NULL, NULL, '$2b$04$SW/nRFb8Un6lcj9CTREQru5wObDboLkILnggSZ5HprP66juRcthcO', NULL, NULL);
INSERT INTO "C##MOVIE_DATABASE"."Useraccount" VALUES ('AVA12', 'tasfia.neha1@gmail.com', NULL, NULL, NULL, '$2b$04$AldOTTG27v2u0Z7Al/MsZeg6kbsMEGw4A/SSVCYWic3m/IY7SPjFm', NULL, NULL);
INSERT INTO "C##MOVIE_DATABASE"."Useraccount" VALUES ('nafis', 'tasfia.nehava@gmail.com', NULL, NULL, NULL, '$2b$04$Je1CEOVvL47dL.IUf1sa4.DT0sa7f99JC.Ekgo2iW74KInoxfig4.', NULL, NULL);
INSERT INTO "C##MOVIE_DATABASE"."Useraccount" VALUES ('LMS', 'tasfia.nehaLMS@gmail.com', NULL, NULL, NULL, '$2b$04$JdXKkz1a.GdfkNJkoh8Jc..zcY.d/kkINvXMxoDXkdyCpv4gCX4Tu', NULL, NULL);
INSERT INTO "C##MOVIE_DATABASE"."Useraccount" VALUES ('neha', 'tasfia.nehanabis@gmail.com', NULL, NULL, NULL, '$2b$04$oZENER68Qdvl/Z1Z.V/5wuBmsrfEoMBX3x9pKP0mtPDTiRv8fpH0W', NULL, NULL);
INSERT INTO "C##MOVIE_DATABASE"."Useraccount" VALUES ('nahin', '$2b$04$ktSN2pKCHD5Ndp8LoW5rw.7S3K6OLZ6pKGJJGRFMmtKB6peXphuQG', NULL, NULL, NULL, '190501339@ugrad.cse.buet.ac.bd', NULL, NULL);
INSERT INTO "C##MOVIE_DATABASE"."Useraccount" VALUES ('ABC', '$2b$04$cMbwCBPId6jOXbE/eCxogOY44jJodotXhcSXZ2N0KGjQ0ZXGYWv/S', NULL, NULL, NULL, 'ABC123@gmail.com', NULL, NULL);

-- ----------------------------
-- Table structure for Voted
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Voted";
CREATE TABLE "C##MOVIE_DATABASE"."Voted" (
  "Review_id" VARCHAR2(255 BYTE) VISIBLE,
  "Username" VARCHAR2(255 BYTE) VISIBLE,
  "Comments" VARCHAR2(255 BYTE) VISIBLE,
  "sl_no" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Voted
-- ----------------------------

-- ----------------------------
-- Table structure for Watchlist
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."Watchlist";
CREATE TABLE "C##MOVIE_DATABASE"."Watchlist" (
  "Username" VARCHAR2(255 BYTE) VISIBLE,
  "Title" VARCHAR2(255 BYTE) VISIBLE,
  "Release_Date" DATE VISIBLE,
  "Id" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of Watchlist
-- ----------------------------

-- ----------------------------
-- Table structure for favourites
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."favourites";
CREATE TABLE "C##MOVIE_DATABASE"."favourites" (
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Title" VARCHAR2(255 BYTE) VISIBLE,
  "Release_Date" DATE VISIBLE,
  "Id" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of favourites
-- ----------------------------

-- ----------------------------
-- Table structure for purchased
-- ----------------------------
DROP TABLE "C##MOVIE_DATABASE"."purchased";
CREATE TABLE "C##MOVIE_DATABASE"."purchased" (
  "Username" VARCHAR2(255 BYTE) VISIBLE,
  "product_id" NUMBER VISIBLE,
  "order_no" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of purchased
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ActedBy
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."ActedBy" ADD CONSTRAINT "SYS_C007708" PRIMARY KEY ("Id");

-- ----------------------------
-- Checks structure for table ActedBy
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."ActedBy" ADD CONSTRAINT "SYS_C007507" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Actor
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Actor" ADD CONSTRAINT "SYS_C007482" PRIMARY KEY ("SSN");

-- ----------------------------
-- Checks structure for table Actor
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Actor" ADD CONSTRAINT "SYS_C007481" CHECK ("SSN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Actor" ADD CONSTRAINT "SYS_C007508" CHECK ("SSN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Actoraward
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007499" PRIMARY KEY ("Award_name", "SSN", "year", "catagory");

-- ----------------------------
-- Checks structure for table Actoraward
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007495" CHECK ("Award_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007496" CHECK ("SSN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007497" CHECK ("year" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007498" CHECK ("catagory" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007509" CHECK ("Award_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007510" CHECK ("SSN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007511" CHECK ("year" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007512" CHECK ("catagory" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Award
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Award" ADD CONSTRAINT "SYS_C007489" PRIMARY KEY ("Award_name");

-- ----------------------------
-- Checks structure for table Award
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Award" ADD CONSTRAINT "SYS_C007488" CHECK ("Award_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Award" ADD CONSTRAINT "SYS_C007513" CHECK ("Award_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Directors
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Directors" ADD CONSTRAINT "SYS_C007480" PRIMARY KEY ("SSN");

-- ----------------------------
-- Checks structure for table Directors
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Directors" ADD CONSTRAINT "SYS_C007479" CHECK ("SSN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Directors" ADD CONSTRAINT "SYS_C007514" CHECK ("SSN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table Figurine
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Figurine" ADD CONSTRAINT "SYS_C007515" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Merchandise
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Merchandise" ADD CONSTRAINT "SYS_C007503" PRIMARY KEY ("Product_id");

-- ----------------------------
-- Checks structure for table Merchandise
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Merchandise" ADD CONSTRAINT "SYS_C007502" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Merchandise" ADD CONSTRAINT "SYS_C007516" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Movies
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Movies" ADD CONSTRAINT "SYS_C007459" PRIMARY KEY ("Id");

-- ----------------------------
-- Checks structure for table Movies
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Movies" ADD CONSTRAINT "SYS_C007457" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Movies" ADD CONSTRAINT "SYS_C007458" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Movies" ADD CONSTRAINT "SYS_C007517" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Movies" ADD CONSTRAINT "SYS_C007518" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Movies" ADD CONSTRAINT "SYS_C007519" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table Poster
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Poster" ADD CONSTRAINT "SYS_C007520" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Rated
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Rated" ADD CONSTRAINT "SYS_C007469" PRIMARY KEY ("Username", "Title", "Release_Date");

-- ----------------------------
-- Checks structure for table Rated
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Rated" ADD CONSTRAINT "SYS_C007521" CHECK ("Username" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Rated" ADD CONSTRAINT "SYS_C007522" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Rated" ADD CONSTRAINT "SYS_C007523" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Review
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Review" ADD CONSTRAINT "SYS_C007440" PRIMARY KEY ("Review_id");

-- ----------------------------
-- Checks structure for table Review
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Review" ADD CONSTRAINT "SYS_C007524" CHECK ("Review_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Show
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Show" ADD CONSTRAINT "SYS_C007447" PRIMARY KEY ("Id");

-- ----------------------------
-- Checks structure for table Show
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Show" ADD CONSTRAINT "SYS_C007445" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Show" ADD CONSTRAINT "SYS_C007446" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Show" ADD CONSTRAINT "SYS_C007525" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Show" ADD CONSTRAINT "SYS_C007526" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Show" ADD CONSTRAINT "SYS_C007527" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Show" ADD CONSTRAINT "SYS_C007705" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ShowAward
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."ShowAward" ADD CONSTRAINT "SYS_C007494" PRIMARY KEY ("Title", "Release_Date", "Award_name", "year", "catagory");

-- ----------------------------
-- Checks structure for table ShowAward
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."ShowAward" ADD CONSTRAINT "SYS_C007528" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."ShowAward" ADD CONSTRAINT "SYS_C007529" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."ShowAward" ADD CONSTRAINT "SYS_C007530" CHECK ("Award_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."ShowAward" ADD CONSTRAINT "SYS_C007531" CHECK ("year" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."ShowAward" ADD CONSTRAINT "SYS_C007532" CHECK ("catagory" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Studio
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Studio" ADD CONSTRAINT "SYS_C007478" PRIMARY KEY ("Studio_name");

-- ----------------------------
-- Checks structure for table Studio
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Studio" ADD CONSTRAINT "SYS_C007477" CHECK ("Studio_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Studio" ADD CONSTRAINT "SYS_C007533" CHECK ("Studio_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table T_shirt
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."T_shirt" ADD CONSTRAINT "SYS_C007505" PRIMARY KEY ("Product_id");

-- ----------------------------
-- Checks structure for table T_shirt
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."T_shirt" ADD CONSTRAINT "SYS_C007504" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."T_shirt" ADD CONSTRAINT "SYS_C007534" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Tv_series
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Tv_series" ADD CONSTRAINT "SYS_C007462" PRIMARY KEY ("Id");

-- ----------------------------
-- Checks structure for table Tv_series
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Tv_series" ADD CONSTRAINT "SYS_C007535" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Tv_series" ADD CONSTRAINT "SYS_C007702" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Useraccount
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Useraccount" ADD CONSTRAINT "SYS_C007436" PRIMARY KEY ("Username");

-- ----------------------------
-- Checks structure for table Useraccount
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Useraccount" ADD CONSTRAINT "SYS_C007428" CHECK ("Username" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Useraccount" ADD CONSTRAINT "SYS_C007429" CHECK ("Password" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Useraccount" ADD CONSTRAINT "SYS_C007536" CHECK ("Username" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Useraccount" ADD CONSTRAINT "SYS_C007537" CHECK ("Password" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Voted
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Voted" ADD CONSTRAINT "SYS_C007455" PRIMARY KEY ("sl_no");

-- ----------------------------
-- Checks structure for table Voted
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Voted" ADD CONSTRAINT "SYS_C007538" CHECK ("sl_no" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Watchlist
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007717" PRIMARY KEY ("Id");

-- ----------------------------
-- Checks structure for table Watchlist
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007539" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007716" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table favourites
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."favourites" ADD CONSTRAINT "SYS_C007713" PRIMARY KEY ("Username", "Id");

-- ----------------------------
-- Checks structure for table favourites
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."favourites" ADD CONSTRAINT "SYS_C007540" CHECK ("Username" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."favourites" ADD CONSTRAINT "SYS_C007541" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."favourites" ADD CONSTRAINT "SYS_C007712" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table purchased
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."purchased" ADD CONSTRAINT "SYS_C007542" CHECK ("order_no" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ActedBy
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."ActedBy" ADD CONSTRAINT "ActedBykey1" FOREIGN KEY ("SSN") REFERENCES "C##MOVIE_DATABASE"."Actor" ("SSN") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."ActedBy" ADD CONSTRAINT "ActedBykey2" FOREIGN KEY ("Id") REFERENCES "C##MOVIE_DATABASE"."Movies" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."ActedBy" ADD CONSTRAINT "ActedBykey3" FOREIGN KEY ("Id") REFERENCES "C##MOVIE_DATABASE"."Tv_series" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Actoraward
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "actorawardkey1" FOREIGN KEY ("SSN") REFERENCES "C##MOVIE_DATABASE"."Actor" ("SSN") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Actoraward" ADD CONSTRAINT "actorwardkey2" FOREIGN KEY ("Award_name") REFERENCES "C##MOVIE_DATABASE"."Award" ("Award_name") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Rated
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Rated" ADD CONSTRAINT "orratedkey2" FOREIGN KEY ("Username") REFERENCES "C##MOVIE_DATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Rated" ADD CONSTRAINT "ratedkey1" FOREIGN KEY ("Id") REFERENCES "C##MOVIE_DATABASE"."Show" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Review
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Review" ADD CONSTRAINT "username1" FOREIGN KEY ("Username") REFERENCES "C##MOVIE_DATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Review" ADD CONSTRAINT "username2" FOREIGN KEY ("show_id") REFERENCES "C##MOVIE_DATABASE"."Show" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Show
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Show" ADD CONSTRAINT "showkey1" FOREIGN KEY ("Director_ssn") REFERENCES "C##MOVIE_DATABASE"."Directors" ("SSN") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Show" ADD CONSTRAINT "showkey2" FOREIGN KEY ("Studio_name") REFERENCES "C##MOVIE_DATABASE"."Studio" ("Studio_name") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ShowAward
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."ShowAward" ADD CONSTRAINT "showawardkey2" FOREIGN KEY ("Award_name") REFERENCES "C##MOVIE_DATABASE"."Award" ("Award_name") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table T_shirt
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."T_shirt" ADD CONSTRAINT "thsirtkey1" FOREIGN KEY ("Product_id") REFERENCES "C##MOVIE_DATABASE"."Merchandise" ("Product_id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Voted
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Voted" ADD CONSTRAINT "Review_id" FOREIGN KEY ("Review_id") REFERENCES "C##MOVIE_DATABASE"."Review" ("Review_id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Voted" ADD CONSTRAINT "Username" FOREIGN KEY ("Username") REFERENCES "C##MOVIE_DATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Watchlist
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007476" FOREIGN KEY ("Username") REFERENCES "C##MOVIE_DATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."Watchlist" ADD CONSTRAINT "watchlistkey1" FOREIGN KEY ("Id") REFERENCES "C##MOVIE_DATABASE"."Show" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table favourites
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."favourites" ADD CONSTRAINT "favkey1" FOREIGN KEY ("Id") REFERENCES "C##MOVIE_DATABASE"."Show" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."favourites" ADD CONSTRAINT "favkey2" FOREIGN KEY ("Username") REFERENCES "C##MOVIE_DATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table purchased
-- ----------------------------
ALTER TABLE "C##MOVIE_DATABASE"."purchased" ADD CONSTRAINT "purchasedkey1" FOREIGN KEY ("Username") REFERENCES "C##MOVIE_DATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIE_DATABASE"."purchased" ADD CONSTRAINT "purchasedkey2" FOREIGN KEY ("product_id") REFERENCES "C##MOVIE_DATABASE"."Merchandise" ("Product_id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
