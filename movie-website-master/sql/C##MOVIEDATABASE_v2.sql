/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : Oracle
 Source Server Version : 190000
 Source Host           : localhost:1521
 Source Schema         : C##MOVIEDATABASE

 Target Server Type    : Oracle
 Target Server Version : 190000
 File Encoding         : 65001

 Date: 20/07/2022 02:38:49
*/


-- ----------------------------
-- Table structure for ActedBy
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."ActedBy";
CREATE TABLE "C##MOVIEDATABASE"."ActedBy" (
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Release_Date" DATE VISIBLE NOT NULL,
  "SSN" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Role" VARCHAR2(255 BYTE) VISIBLE,
  "Salary" NUMBER VISIBLE
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
-- Table structure for Actor
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Actor";
CREATE TABLE "C##MOVIEDATABASE"."Actor" (
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
-- Table structure for Actoraward
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Actoraward";
CREATE TABLE "C##MOVIEDATABASE"."Actoraward" (
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
-- Table structure for Award
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Award";
CREATE TABLE "C##MOVIEDATABASE"."Award" (
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
-- Table structure for Directors
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Directors";
CREATE TABLE "C##MOVIEDATABASE"."Directors" (
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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for Figurine
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Figurine";
CREATE TABLE "C##MOVIEDATABASE"."Figurine" (
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
-- Table structure for Merchandise
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Merchandise";
CREATE TABLE "C##MOVIEDATABASE"."Merchandise" (
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
-- Table structure for Movies
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Movies";
CREATE TABLE "C##MOVIEDATABASE"."Movies" (
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Release_Date" DATE VISIBLE NOT NULL,
  "Runtime" NUMBER VISIBLE,
  "Revenue" FLOAT(126) VISIBLE
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
-- Table structure for Poster
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Poster";
CREATE TABLE "C##MOVIEDATABASE"."Poster" (
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
-- Table structure for Rated
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Rated";
CREATE TABLE "C##MOVIEDATABASE"."Rated" (
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Release_Date" DATE VISIBLE NOT NULL,
  "Stars" NUMBER VISIBLE
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
-- Table structure for Review
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Review";
CREATE TABLE "C##MOVIEDATABASE"."Review" (
  "Review_id" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Date" DATE VISIBLE NOT NULL,
  "Content" VARCHAR2(1000 BYTE) VISIBLE NOT NULL,
  "Votes" VARCHAR2(255 BYTE) VISIBLE,
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL
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
-- Table structure for Show
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Show";
CREATE TABLE "C##MOVIEDATABASE"."Show" (
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Genre" VARCHAR2(255 BYTE) VISIBLE,
  "Plot" VARCHAR2(255 BYTE) VISIBLE,
  "Release_Date" DATE VISIBLE NOT NULL,
  "Pictures" VARCHAR2(255 BYTE) VISIBLE,
  "Director_ssn" VARCHAR2(255 BYTE) VISIBLE,
  "Studio_name" VARCHAR2(255 BYTE) VISIBLE
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
-- Table structure for ShowAward
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."ShowAward";
CREATE TABLE "C##MOVIEDATABASE"."ShowAward" (
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
-- Table structure for Studio
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Studio";
CREATE TABLE "C##MOVIEDATABASE"."Studio" (
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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for T_shirt
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."T_shirt";
CREATE TABLE "C##MOVIEDATABASE"."T_shirt" (
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
-- Table structure for Tv_series
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Tv_series";
CREATE TABLE "C##MOVIEDATABASE"."Tv_series" (
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Release_Date" DATE VISIBLE NOT NULL,
  "Number_of_seasons" NUMBER VISIBLE,
  "Number_of_Episodes" NUMBER VISIBLE
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
-- Table structure for Useraccount
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Useraccount";
CREATE TABLE "C##MOVIEDATABASE"."Useraccount" (
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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for Voted
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Voted";
CREATE TABLE "C##MOVIEDATABASE"."Voted" (
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
-- Table structure for Watchlist
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Watchlist";
CREATE TABLE "C##MOVIEDATABASE"."Watchlist" (
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Release_Date" DATE VISIBLE NOT NULL
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
-- Table structure for favourites
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."favourites";
CREATE TABLE "C##MOVIEDATABASE"."favourites" (
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Release_Date" DATE VISIBLE NOT NULL
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
-- Table structure for purchased
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."purchased";
CREATE TABLE "C##MOVIEDATABASE"."purchased" (
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
-- Checks structure for table ActedBy
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."ActedBy" ADD CONSTRAINT "SYS_C007483" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."ActedBy" ADD CONSTRAINT "SYS_C007484" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."ActedBy" ADD CONSTRAINT "SYS_C007485" CHECK ("SSN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Actor
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Actor" ADD CONSTRAINT "SYS_C007482" PRIMARY KEY ("SSN");

-- ----------------------------
-- Checks structure for table Actor
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Actor" ADD CONSTRAINT "SYS_C007481" CHECK ("SSN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Actoraward
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007499" PRIMARY KEY ("Award_name", "SSN", "year", "catagory");

-- ----------------------------
-- Checks structure for table Actoraward
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007495" CHECK ("Award_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007496" CHECK ("SSN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007497" CHECK ("year" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Actoraward" ADD CONSTRAINT "SYS_C007498" CHECK ("catagory" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Award
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Award" ADD CONSTRAINT "SYS_C007489" PRIMARY KEY ("Award_name");

-- ----------------------------
-- Checks structure for table Award
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Award" ADD CONSTRAINT "SYS_C007488" CHECK ("Award_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Directors
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Directors" ADD CONSTRAINT "SYS_C007480" PRIMARY KEY ("SSN");

-- ----------------------------
-- Checks structure for table Directors
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Directors" ADD CONSTRAINT "SYS_C007479" CHECK ("SSN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Figurine
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Figurine" ADD CONSTRAINT "SYS_C007509" PRIMARY KEY ("Product_id");

-- ----------------------------
-- Checks structure for table Figurine
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Figurine" ADD CONSTRAINT "SYS_C007507" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Figurine" ADD CONSTRAINT "SYS_C007508" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Merchandise
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Merchandise" ADD CONSTRAINT "SYS_C007503" PRIMARY KEY ("Product_id");

-- ----------------------------
-- Checks structure for table Merchandise
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Merchandise" ADD CONSTRAINT "SYS_C007502" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Movies
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Movies" ADD CONSTRAINT "SYS_C007459" PRIMARY KEY ("Title", "Release_Date");

-- ----------------------------
-- Checks structure for table Movies
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Movies" ADD CONSTRAINT "SYS_C007457" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Movies" ADD CONSTRAINT "SYS_C007458" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Poster
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Poster" ADD CONSTRAINT "SYS_C007514" PRIMARY KEY ("Product_id");

-- ----------------------------
-- Checks structure for table Poster
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Poster" ADD CONSTRAINT "SYS_C007511" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Poster" ADD CONSTRAINT "SYS_C007512" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Poster" ADD CONSTRAINT "SYS_C007513" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Rated
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Rated" ADD CONSTRAINT "SYS_C007469" PRIMARY KEY ("Username", "Title", "Release_Date");

-- ----------------------------
-- Primary Key structure for table Review
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Review" ADD CONSTRAINT "SYS_C007440" PRIMARY KEY ("Review_id");

-- ----------------------------
-- Checks structure for table Review
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Review" ADD CONSTRAINT "SYS_C007437" CHECK ("Review_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Review" ADD CONSTRAINT "SYS_C007438" CHECK ("Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Review" ADD CONSTRAINT "SYS_C007439" CHECK ("Content" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Review" ADD CONSTRAINT "SYS_C007441" CHECK ("Username" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Show
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "SYS_C007447" PRIMARY KEY ("Title", "Release_Date");

-- ----------------------------
-- Checks structure for table Show
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "SYS_C007445" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "SYS_C007446" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ShowAward
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."ShowAward" ADD CONSTRAINT "SYS_C007494" PRIMARY KEY ("Title", "Release_Date", "Award_name", "year", "catagory");

-- ----------------------------
-- Primary Key structure for table Studio
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Studio" ADD CONSTRAINT "SYS_C007478" PRIMARY KEY ("Studio_name");

-- ----------------------------
-- Checks structure for table Studio
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Studio" ADD CONSTRAINT "SYS_C007477" CHECK ("Studio_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table T_shirt
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."T_shirt" ADD CONSTRAINT "SYS_C007505" PRIMARY KEY ("Product_id");

-- ----------------------------
-- Checks structure for table T_shirt
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."T_shirt" ADD CONSTRAINT "SYS_C007504" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Tv_series
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Tv_series" ADD CONSTRAINT "SYS_C007462" PRIMARY KEY ("Title", "Release_Date");

-- ----------------------------
-- Primary Key structure for table Useraccount
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Useraccount" ADD CONSTRAINT "SYS_C007436" PRIMARY KEY ("Username");

-- ----------------------------
-- Checks structure for table Useraccount
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Useraccount" ADD CONSTRAINT "SYS_C007428" CHECK ("Username" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Useraccount" ADD CONSTRAINT "SYS_C007429" CHECK ("Password" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Voted
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Voted" ADD CONSTRAINT "SYS_C007455" PRIMARY KEY ("sl_no");

-- ----------------------------
-- Primary Key structure for table Watchlist
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007474" PRIMARY KEY ("Username", "Title", "Release_Date");

-- ----------------------------
-- Checks structure for table Watchlist
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007471" CHECK ("Username" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007472" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007473" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table favourites
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."favourites" ADD CONSTRAINT "SYS_C007470" PRIMARY KEY ("Username", "Title", "Release_Date");

-- ----------------------------
-- Primary Key structure for table purchased
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."purchased" ADD CONSTRAINT "SYS_C007517" PRIMARY KEY ("order_no");

-- ----------------------------
-- Checks structure for table purchased
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."purchased" ADD CONSTRAINT "SYS_C007516" CHECK ("order_no" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ActedBy
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."ActedBy" ADD CONSTRAINT "actedbykeys" FOREIGN KEY ("Title", "Release_Date") REFERENCES "C##MOVIEDATABASE"."Show" ("Title", "Release_Date") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."ActedBy" ADD CONSTRAINT "actedkeys2" FOREIGN KEY ("SSN") REFERENCES "C##MOVIEDATABASE"."Actor" ("SSN") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Actoraward
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Actoraward" ADD CONSTRAINT "actorawardkey1" FOREIGN KEY ("SSN") REFERENCES "C##MOVIEDATABASE"."Actor" ("SSN") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Actoraward" ADD CONSTRAINT "actorwardkey2" FOREIGN KEY ("Award_name") REFERENCES "C##MOVIEDATABASE"."Award" ("Award_name") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Figurine
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Figurine" ADD CONSTRAINT "SYS_C007510" FOREIGN KEY ("Product_id") REFERENCES "C##MOVIEDATABASE"."Merchandise" ("Product_id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Movies
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Movies" ADD CONSTRAINT "SYS_C007" FOREIGN KEY ("Title", "Release_Date") REFERENCES "C##MOVIEDATABASE"."Show" ("Title", "Release_Date") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Poster
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Poster" ADD CONSTRAINT "SYS_C007515" FOREIGN KEY ("Product_id") REFERENCES "C##MOVIEDATABASE"."Merchandise" ("Product_id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Rated
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Rated" ADD CONSTRAINT "originalrkey" FOREIGN KEY ("Title", "Release_Date") REFERENCES "C##MOVIEDATABASE"."Show" ("Title", "Release_Date") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Rated" ADD CONSTRAINT "orratedkey2" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Review
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Review" ADD CONSTRAINT "username1" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Show
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "showkey1" FOREIGN KEY ("Director_ssn") REFERENCES "C##MOVIEDATABASE"."Directors" ("SSN") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "showkey2" FOREIGN KEY ("Studio_name") REFERENCES "C##MOVIEDATABASE"."Studio" ("Studio_name") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ShowAward
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."ShowAward" ADD CONSTRAINT "showawardkey2" FOREIGN KEY ("Award_name") REFERENCES "C##MOVIEDATABASE"."Award" ("Award_name") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."ShowAward" ADD CONSTRAINT "showwardkey1" FOREIGN KEY ("Title", "Release_Date") REFERENCES "C##MOVIEDATABASE"."Show" ("Title", "Release_Date") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table T_shirt
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."T_shirt" ADD CONSTRAINT "thsirtkey1" FOREIGN KEY ("Product_id") REFERENCES "C##MOVIEDATABASE"."Merchandise" ("Product_id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Tv_series
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Tv_series" ADD CONSTRAINT "tvseries" FOREIGN KEY ("Title", "Release_Date") REFERENCES "C##MOVIEDATABASE"."Show" ("Title", "Release_Date") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Voted
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Voted" ADD CONSTRAINT "Review_id" FOREIGN KEY ("Review_id") REFERENCES "C##MOVIEDATABASE"."Review" ("Review_id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Voted" ADD CONSTRAINT "Username" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Watchlist
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007475" FOREIGN KEY ("Title", "Release_Date") REFERENCES "C##MOVIEDATABASE"."Show" ("Title", "Release_Date") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007476" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table favourites
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."favourites" ADD CONSTRAINT "SYS_C007465" FOREIGN KEY ("Title", "Release_Date") REFERENCES "C##MOVIEDATABASE"."Show" ("Title", "Release_Date") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."favourites" ADD CONSTRAINT "SYS_C007466" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table purchased
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."purchased" ADD CONSTRAINT "purchasedkey1" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."purchased" ADD CONSTRAINT "purchasedkey2" FOREIGN KEY ("product_id") REFERENCES "C##MOVIEDATABASE"."Merchandise" ("Product_id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
