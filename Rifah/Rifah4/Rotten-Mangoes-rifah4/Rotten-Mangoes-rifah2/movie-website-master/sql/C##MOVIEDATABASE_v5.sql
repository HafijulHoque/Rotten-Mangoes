/*
 Navicat Premium Data Transfer

 Source Server         : test1
 Source Server Type    : Oracle
 Source Server Version : 190000
 Source Schema         : C##MOVIEDATABASE

 Target Server Type    : Oracle
 Target Server Version : 190000
 File Encoding         : 65001

 Date: 31/08/2022 13:55:10
*/


-- ----------------------------
-- Table structure for ActedBy
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."ActedBy";
CREATE TABLE "C##MOVIEDATABASE"."ActedBy" (
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
DROP TABLE "C##MOVIEDATABASE"."Actor";
CREATE TABLE "C##MOVIEDATABASE"."Actor" (
  "SSN" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Name" VARCHAR2(255 BYTE) VISIBLE,
  "Date_of_Birth" DATE VISIBLE,
  "Description" VARCHAR2(255 BYTE) VISIBLE,
  "Picture" VARCHAR2(255 BYTE) VISIBLE,
  "Net_worth" NUMBER(10,0) VISIBLE
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
-- Records of Actor
-- ----------------------------
INSERT INTO "C##MOVIEDATABASE"."Actor" VALUES ('01', 'John David Washington', TO_DATE('1984-07-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'John David Washington is an American actor, producer, and former professional football player. He played college football at Morehouse College and signed with the St. Louis Rams as an undrafted free agent in 2006.', '/img/actorpic/img1.jpg', NULL);
INSERT INTO "C##MOVIEDATABASE"."Actor" VALUES ('02', 'Matthew Perry', TO_DATE('1969-08-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Matthew Langford Perry is an American-Canadian actor, comedian, and producer. He is best known for his role as Chandler Bing on the NBC television sitcom Friends, which ran from 1994 to 2004.', '/img/actorpic/img1.jpg', NULL);
INSERT INTO "C##MOVIEDATABASE"."Actor" VALUES ('03', 'Simone Ashley', TO_DATE('1995-03-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Simone Ashwini Pillai, known professionally as Simone Ashley, is a British actress. She is known for her breakout role in the Netflix period drama Bridgerton.', '/img/actorpic/img1.jpg', NULL);
INSERT INTO "C##MOVIEDATABASE"."Actor" VALUES ('04', 'Bryan Cranston', TO_DATE('1956-03-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Bryan Lee Cranston is an American actor and filmmaker. He is best known for portraying Walter White in the AMC crime drama series Breaking Bad and Hal in the Fox sitcom Malcolm in the Middle.', '/img/actorpic/img1.jpg', NULL);
INSERT INTO "C##MOVIEDATABASE"."Actor" VALUES ('05', 'Millie Bobby Brown', TO_DATE('2004-02-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Millie Bobby Brown is a British actress, model, and producer. She gained recognition for playing Eleven in the Netflix science fiction series Stranger Things.', '/img/actorpic/img1.jpg', NULL);

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
-- Records of Actoraward
-- ----------------------------

-- ----------------------------
-- Table structure for Award
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Award";
CREATE TABLE "C##MOVIEDATABASE"."Award" (
  "Award_name" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Country" VARCHAR2(255 BYTE) VISIBLE,
  "Details" VARCHAR2(255 BYTE) VISIBLE
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
-- Records of Award
-- ----------------------------
INSERT INTO "C##MOVIEDATABASE"."Award" VALUES ('The Oscars ', 'USA', 'Each January, the entertainment community and film fans around the world turn their attention to the Academy Awards. Interest and anticipation builds up to watch the glamorous ceremony and learn who will receive the highest honors in filmmaking. ');
INSERT INTO "C##MOVIEDATABASE"."Award" VALUES ('BAFTA Film Awards', 'UK', NULL);
INSERT INTO "C##MOVIEDATABASE"."Award" VALUES ('Golden Globe Awards', 'USA', NULL);
INSERT INTO "C##MOVIEDATABASE"."Award" VALUES ('British Independent Film Awards ', 'UK', NULL);

-- ----------------------------
-- Table structure for Cart
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Cart";
CREATE TABLE "C##MOVIEDATABASE"."Cart" (
  "Cart_id" NUMBER(10,0) VISIBLE NOT NULL,
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Total_price" NUMBER(20,0) VISIBLE
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
-- Records of Cart
-- ----------------------------

-- ----------------------------
-- Table structure for Directors
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Directors";
CREATE TABLE "C##MOVIEDATABASE"."Directors" (
  "SSN" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Date_of_Birth" DATE VISIBLE,
  "Name" VARCHAR2(255 BYTE) VISIBLE,
  "Description" VARCHAR2(255 BYTE) VISIBLE,
  "Picture" VARCHAR2(255 BYTE) VISIBLE,
  "Noteable_work" VARCHAR2(255 BYTE) VISIBLE
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
INSERT INTO "C##MOVIEDATABASE"."Directors" VALUES ('012', TO_DATE('1970-07-30 04:26:26', 'SYYYY-MM-DD HH24:MI:SS'), 'Christopher Nolan', 'Christopher Nolan CBE is a British-American film director, producer, and screenwriter. His films have grossed more than US$5 billion worldwide and have garnered 11 Academy Awards from 36 nominations.', '/img/actorpic/img1.jpg', NULL);
INSERT INTO "C##MOVIEDATABASE"."Directors" VALUES ('013', TO_DATE('2022-08-15 12:49:50', 'SYYYY-MM-DD HH24:MI:SS'), 'Alfonso Cuar¢n', 'Alfonso Cuar¢n Orozco is a Mexican filmmaker. He is known for directing films in a variety of genres including the family drama A Little Princess, the romantic drama Great Expectations.', '/img/actorpic/img1.jpg', NULL);
INSERT INTO "C##MOVIEDATABASE"."Directors" VALUES ('014', TO_DATE('1965-08-13 03:05:12', 'SYYYY-MM-DD HH24:MI:SS'), 'David Crane', 'David Crane (born August 13, 1957) is an American writer and producer. He is best known as one of the co-creators of the television sitcoms Friends and Episodes.', '/img/actorpic/img1.jpg', NULL);
INSERT INTO "C##MOVIEDATABASE"."Directors" VALUES ('015', TO_DATE('1976-03-22 03:13:14', 'SYYYY-MM-DD HH24:MI:SS'), 'Reese Witherspoon', 'Laura Jeanne Reese Witherspoon is an American actress and producer. She is the recipient of various accolades, including an Academy Award, a British Academy Film Award, a Primetime Emmy Award, and two Golden Globe Awards.', '/img/actorpic/img1.jpg', NULL);
INSERT INTO "C##MOVIEDATABASE"."Directors" VALUES ('011', TO_DATE('1939-05-08 11:44:55', 'SYYYY-MM-DD HH24:MI:SS'), 'Francis Ford Coppola', 'Francis Ford Coppola is an American film director, producer, and screenwriter. He is considered one of the major figures of the New Hollywood filmmaking movement of the 1960s and 1970s. Coppola is the recipient of six Golden Globe Awards.', '/img/actorpic/img1.jpg', NULL);

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
-- Records of Figurine
-- ----------------------------
INSERT INTO "C##MOVIEDATABASE"."Figurine" VALUES ('11', '10');
INSERT INTO "C##MOVIEDATABASE"."Figurine" VALUES ('12', '6');
INSERT INTO "C##MOVIEDATABASE"."Figurine" VALUES ('13', '8');
INSERT INTO "C##MOVIEDATABASE"."Figurine" VALUES ('14', '4');
INSERT INTO "C##MOVIEDATABASE"."Figurine" VALUES ('15', '13');

-- ----------------------------
-- Table structure for Merch_order
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Merch_order";
CREATE TABLE "C##MOVIEDATABASE"."Merch_order" (
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Product_id" NUMBER(10,0) VISIBLE NOT NULL,
  "Price" NUMBER VISIBLE,
  "Bool" NUMBER VISIBLE
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
-- Records of Merch_order
-- ----------------------------
INSERT INTO "C##MOVIEDATABASE"."Merch_order" VALUES ('Hafijul', '3', '180', '0');
INSERT INTO "C##MOVIEDATABASE"."Merch_order" VALUES ('Hafijul', '2', '300', '1');
INSERT INTO "C##MOVIEDATABASE"."Merch_order" VALUES ('Farhan', '5', '220', '0');

-- ----------------------------
-- Table structure for Merchandise
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Merchandise";
CREATE TABLE "C##MOVIEDATABASE"."Merchandise" (
  "Product_id" NUMBER VISIBLE NOT NULL,
  "description" VARCHAR2(255 BYTE) VISIBLE,
  "Price" NUMBER VISIBLE,
  "In_Stock" NUMBER(10,0) VISIBLE,
  "Picture" VARCHAR2(255 BYTE) VISIBLE
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
-- Records of Merchandise
-- ----------------------------
INSERT INTO "C##MOVIEDATABASE"."Merchandise" VALUES ('12', 'figurine', '450', '100', NULL);
INSERT INTO "C##MOVIEDATABASE"."Merchandise" VALUES ('13', 'figurine', '780', '100', NULL);
INSERT INTO "C##MOVIEDATABASE"."Merchandise" VALUES ('14', 'figurine', '340', '100', NULL);
INSERT INTO "C##MOVIEDATABASE"."Merchandise" VALUES ('15', 'figurine', '1260', '100', NULL);
INSERT INTO "C##MOVIEDATABASE"."Merchandise" VALUES ('3', 'tshirt', '180', '98', NULL);
INSERT INTO "C##MOVIEDATABASE"."Merchandise" VALUES ('4', 'tshirt', '330', '100', NULL);
INSERT INTO "C##MOVIEDATABASE"."Merchandise" VALUES ('5', 'tshirt', '220', '94', NULL);
INSERT INTO "C##MOVIEDATABASE"."Merchandise" VALUES ('1', 'tshirt', '250', '97', '/img/Merchandise/Tshirts/godfather.jpeg');
INSERT INTO "C##MOVIEDATABASE"."Merchandise" VALUES ('2', 'tshirt', '300', '97', '/img/Merchandise/Tshirts/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Merchandise" VALUES ('11', 'figurine', '570', '100', '/img/Merchandise/Figurines/friends_monica.jpg');

-- ----------------------------
-- Table structure for Movies
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Movies";
CREATE TABLE "C##MOVIEDATABASE"."Movies" (
  "Title" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Release_Date" DATE VISIBLE NOT NULL,
  "Runtime" NUMBER VISIBLE,
  "Revenue" FLOAT(126) VISIBLE,
  "Genre" VARCHAR2(255 BYTE) VISIBLE,
  "Id" NUMBER VISIBLE NOT NULL,
  "Picture" VARCHAR2(255 BYTE) VISIBLE
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
INSERT INTO "C##MOVIEDATABASE"."Movies" VALUES ('The godfather', TO_DATE('1972-03-24 11:45:54', 'SYYYY-MM-DD HH24:MI:SS'), '180', '291', 'Crime', '12', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Movies" VALUES ('Tenet ', TO_DATE('2020-08-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '150', '365.3', 'Sci-fi', '11', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Movies" VALUES ('Gravity', TO_DATE('2014-01-01 12:51:11', 'SYYYY-MM-DD HH24:MI:SS'), '91', '723', 'Sci-fi', '14', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Movies" VALUES ('Roman Holiday', TO_DATE('1953-02-19 03:18:09', 'SYYYY-MM-DD HH24:MI:SS'), '118', '12', 'Romance', '15', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Movies" VALUES ('Romeo + Juliet', TO_DATE('1996-08-26 03:23:44', 'SYYYY-MM-DD HH24:MI:SS'), '120', '147.6', 'Tragedy', '13', '/img/movies/tenet.jpg');

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
-- Records of Poster
-- ----------------------------

-- ----------------------------
-- Table structure for Rated
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Rated";
CREATE TABLE "C##MOVIEDATABASE"."Rated" (
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Rating" NUMBER VISIBLE,
  "Id" NUMBER VISIBLE NOT NULL,
  "Comment" VARCHAR2(255 BYTE) VISIBLE,
  "addtofav" NUMBER(10,0) VISIBLE
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
-- Records of Rated
-- ----------------------------
INSERT INTO "C##MOVIEDATABASE"."Rated" VALUES ('Farhan', '4', '25', 'bhalo na ', '1');
INSERT INTO "C##MOVIEDATABASE"."Rated" VALUES ('Farhan', '3', '21', 'personal fav', '1');
INSERT INTO "C##MOVIEDATABASE"."Rated" VALUES ('Hafijul', '3', '11', NULL, '1');
INSERT INTO "C##MOVIEDATABASE"."Rated" VALUES ('Hafijul', '3', '24', 'kala pani', '1');

-- ----------------------------
-- Table structure for Review
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Review";
CREATE TABLE "C##MOVIEDATABASE"."Review" (
  "Review_id" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "Date" DATE VISIBLE,
  "Content" VARCHAR2(1000 BYTE) VISIBLE,
  "Votes" VARCHAR2(255 BYTE) VISIBLE,
  "Username" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
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
INSERT INTO "C##MOVIEDATABASE"."Review" VALUES ('3', TO_DATE('2022-08-18 16:02:57', 'SYYYY-MM-DD HH24:MI:SS'), 'Asib tumi emon keno?', '0', 'Hafijul', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Review" VALUES ('19', TO_DATE('2022-08-27 12:30:16', 'SYYYY-MM-DD HH24:MI:SS'), 'eto pera kenno', '1', 'Farhan', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Review" VALUES ('67', TO_DATE('2022-08-27 12:32:07', 'SYYYY-MM-DD HH24:MI:SS'), 'Aj amar mon bhalo nei', '1', 'Farhan', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Review" VALUES ('3', TO_DATE('2022-08-18 16:02:57', 'SYYYY-MM-DD HH24:MI:SS'), 'Asib tumi emon keno?', '0', 'Farhan', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Review" VALUES ('46', TO_DATE('2022-08-15 10:57:18', 'SYYYY-MM-DD HH24:MI:SS'), 'eto pera kenno', '1', 'Farhan', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Review" VALUES ('4', TO_DATE('2022-08-15 11:01:41', 'SYYYY-MM-DD HH24:MI:SS'), 'eto pera kenno', '1', 'Farhan', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Review" VALUES ('96', TO_DATE('2022-08-15 11:00:51', 'SYYYY-MM-DD HH24:MI:SS'), 'eto pera kenno', '1', 'Farhan', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Review" VALUES ('56', TO_DATE('2022-08-15 11:04:36', 'SYYYY-MM-DD HH24:MI:SS'), 'eto pera kenno', '1', 'Hafijul', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Review" VALUES ('62', TO_DATE('2022-08-24 22:09:46', 'SYYYY-MM-DD HH24:MI:SS'), 'eto pera kenno', '1', 'Hafijul', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Review" VALUES ('71', TO_DATE('2022-08-24 22:15:25', 'SYYYY-MM-DD HH24:MI:SS'), 'eto pera kenno', '1', 'Hafijul', NULL, NULL);

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
  "Studio_name" VARCHAR2(255 BYTE) VISIBLE,
  "Id" NUMBER VISIBLE NOT NULL,
  "Picture" VARCHAR2(255 BYTE) VISIBLE
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
INSERT INTO "C##MOVIEDATABASE"."Show" VALUES ('Tenet', 'Sci-fi', 'When a few objects that can be manipulated and used as weapons in the future fall into the wrong hands, a CIA operative, known as the Protagonist, must save the world.', TO_DATE('2020-08-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '/img/movies/tenet.jpg', '012', 'Syncopy', '11', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Show" VALUES ('Gravity', 'Sci-fi', 'On an outer space mission, Dr Ryan Stone, an engineer, and Matt Kowalski, an astronaut, are hit by high-speed space debris. As the situation gets dire, Stone, the lone survivor, rises to the occasion.', TO_DATE('2014-01-01 12:51:11', 'SYYYY-MM-DD HH24:MI:SS'), '/img/movies/gravity.jpg', '013', 'Warner Bros. Pictures', '12', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Show" VALUES ('Roman Holiday', 'Romance', 'Stuck with boredom in her luxurious confinement, a princess escapes from her guardians and falls in love with an American news reporter in Rome.', TO_DATE('1953-02-19 03:18:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '015', 'Warner Bros. Pictures', '15', NULL);
INSERT INTO "C##MOVIEDATABASE"."Show" VALUES ('Romeo + Juliet', 'Tragedy', 'The rivalry between Verona''s two well-established families, the Capulets and the Montagues, affects the relationship of their children Romeo and Juliet.', TO_DATE('1996-08-26 03:23:44', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '011', 'Pixar', '13', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Show" VALUES ('The Godfather', 'Crime', 'Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.', TO_DATE('1972-03-24 11:45:54', 'SYYYY-MM-DD HH24:MI:SS'), '/img/movies/godfather.jpg', '011', 'Paramount Pictures', '14', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Show" VALUES ('Friends', 'Sitcom', 'Follow the lives of six reckless adults living in Manhattan, as they indulge in adventures which make their lives both troublesome and happening.', TO_DATE('1994-08-15 13:13:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '014', 'Warner Bros. Pictures', '21', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Show" VALUES ('Brooklyn Nine-Nine', 'Sitcom', 'Ray Holt, an eccentric commanding officer, and his diverse and quirky team of odd detectives solve crimes in Brooklyn, New York City.', TO_DATE('2017-03-15 16:16:25', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '013', 'Paramount Pictures', '22', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Show" VALUES ('Bridgerton', 'Romance', 'During the Regency era in England, eight close-knit siblings of the powerful Bridgerton family attempt to find love.', TO_DATE('2020-06-26 03:11:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '015', 'Pixar', '23', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Show" VALUES ('Breaking Bad', 'Drama', 'Walter White, a chemistry teacher, discovers that he has cancer and decides to get into the meth-making business to repay his medical debts. His priorities begin to change when he partners with Jesse.', TO_DATE('2008-03-12 03:16:14', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '015', 'Syncopy', '24', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Show" VALUES ('Stranger Things', 'Mystery', 'When a little boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.', TO_DATE('2016-05-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '014', 'Paramount Pictures', '25', '/img/movies/tenet.jpg');

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
-- Records of ShowAward
-- ----------------------------

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
INSERT INTO "C##MOVIEDATABASE"."Studio" VALUES ('nabiderstudio', 'dhaka', TO_DATE('2022-08-09 08:50:38', 'SYYYY-MM-DD HH24:MI:SS'), 'Bangladesh', 'www.nabid.com');
INSERT INTO "C##MOVIEDATABASE"."Studio" VALUES ('Disney', 'Usa', TO_DATE('2022-08-15 00:43:25', 'SYYYY-MM-DD HH24:MI:SS'), 'Usa', 'www.disney.com');
INSERT INTO "C##MOVIEDATABASE"."Studio" VALUES ('Mappa', 'Japan', TO_DATE('2022-08-15 12:50:22', 'SYYYY-MM-DD HH24:MI:SS'), 'Japan', 'www.mappa.com');
INSERT INTO "C##MOVIEDATABASE"."Studio" VALUES ('Syncopy', 'USA', TO_DATE('2001-01-01 02:47:40', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'www.syncopy.com');
INSERT INTO "C##MOVIEDATABASE"."Studio" VALUES ('Warner Bros. Pictures', 'USA', TO_DATE('1923-04-04 02:52:52', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', '
www.warnerbros.com');
INSERT INTO "C##MOVIEDATABASE"."Studio" VALUES ('Paramount Pictures', 'USA', TO_DATE('1912-05-08 02:57:01', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'www.paramountpictures.com/');
INSERT INTO "C##MOVIEDATABASE"."Studio" VALUES ('Pixar', 'USA', TO_DATE('2022-08-10 11:44:22', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'www.pixer.co');

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
-- Records of T_shirt
-- ----------------------------
INSERT INTO "C##MOVIEDATABASE"."T_shirt" VALUES ('1', '40', 'black');
INSERT INTO "C##MOVIEDATABASE"."T_shirt" VALUES ('3', '46', 'red');
INSERT INTO "C##MOVIEDATABASE"."T_shirt" VALUES ('4', '42', 'white');
INSERT INTO "C##MOVIEDATABASE"."T_shirt" VALUES ('5', '39', 'black');
INSERT INTO "C##MOVIEDATABASE"."T_shirt" VALUES ('2', '36', 'purple');

-- ----------------------------
-- Table structure for Tv_series
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Tv_series";
CREATE TABLE "C##MOVIEDATABASE"."Tv_series" (
  "Title" VARCHAR2(255 BYTE) VISIBLE,
  "Release_Date" DATE VISIBLE,
  "Number_of_seasons" NUMBER VISIBLE,
  "Number_of_Episodes" NUMBER VISIBLE,
  "Genre" VARCHAR2(255 BYTE) VISIBLE,
  "Id" NUMBER VISIBLE NOT NULL,
  "Picture" VARCHAR2(255 BYTE) VISIBLE
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
-- Records of Tv_series
-- ----------------------------
INSERT INTO "C##MOVIEDATABASE"."Tv_series" VALUES ('Friends', TO_DATE('1994-08-15 13:13:57', 'SYYYY-MM-DD HH24:MI:SS'), '10', '250', 'Sitcom', '21', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Tv_series" VALUES ('Brooklyn Nine-Nine', TO_DATE('2017-03-15 16:16:25', 'SYYYY-MM-DD HH24:MI:SS'), '8', '180', 'Sitcom', '22', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Tv_series" VALUES ('Bridgerton', TO_DATE('2020-06-26 03:11:04', 'SYYYY-MM-DD HH24:MI:SS'), '2', '16', 'Romance', '23', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Tv_series" VALUES ('Breaking Bad', TO_DATE('2008-03-12 03:16:14', 'SYYYY-MM-DD HH24:MI:SS'), '5', '62', 'Drama', '24', '/img/movies/tenet.jpg');
INSERT INTO "C##MOVIEDATABASE"."Tv_series" VALUES ('Stranger Things', TO_DATE('2016-05-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '34', 'Mystery', '25', '/img/movies/tenet.jpg');

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
  "Credit_card_no" NUMBER(3,0) VISIBLE,
  "Bio" VARCHAR2(255 BYTE) VISIBLE,
  "Picture" BLOB VISIBLE,
  "Secretcode" VARCHAR2(255 BYTE) VISIBLE
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
INSERT INTO "C##MOVIEDATABASE"."Useraccount" VALUES ('e2e', '$2b$04$fZo70sIZ4kRALo42yaTT8.x632058llnwDmw8/BojzKZkL.dRF4uC', NULL, NULL, NULL, 'nabid.hasan987@gmail.com', NULL, 'voda', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Useraccount" VALUES ('Hafijul', '$2b$04$9lNRmYXK2zYJv5tHZ0fvt.eKMlALAiMdiPs.2jqQvQCOe8wYsE.4W', NULL, 'Chowdhury', NULL, NULL, '124', 'Eto perA KENO naaa', NULL, 'nabid');
INSERT INTO "C##MOVIEDATABASE"."Useraccount" VALUES ('Nabid12', '$2b$04$M6Qvu/1xwO89AN5l1/tlROsCY1A9sL9qJrLgfwhZxaQ3pGg7QS4Xe', NULL, NULL, NULL, '1905013@ugrad.cse.buet.ac.bd', NULL, 'nabid toke chudbe', NULL, NULL);
INSERT INTO "C##MOVIEDATABASE"."Useraccount" VALUES ('Farhan', '$2b$04$wT86n75kKBe1z5WQ1bvKoODdV1e38ZWEEXX3owa3jbDhtjwoDedl6', 'Tanvir', 'saad', NULL, 'tanvirsaad@gmail.com', NULL, 'Ami fukboi', NULL, 'tanvir');

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
-- Records of Voted
-- ----------------------------

-- ----------------------------
-- Table structure for Watchlist
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."Watchlist";
CREATE TABLE "C##MOVIEDATABASE"."Watchlist" (
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
-- Records of Watchlist
-- ----------------------------
INSERT INTO "C##MOVIEDATABASE"."Watchlist" VALUES ('Hafijul', NULL, NULL, '14');

-- ----------------------------
-- Table structure for favourites
-- ----------------------------
DROP TABLE "C##MOVIEDATABASE"."favourites";
CREATE TABLE "C##MOVIEDATABASE"."favourites" (
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
-- Records of favourites
-- ----------------------------
INSERT INTO "C##MOVIEDATABASE"."favourites" VALUES ('Farhan', NULL, NULL, '21');
INSERT INTO "C##MOVIEDATABASE"."favourites" VALUES ('Hafijul', NULL, NULL, '11');
INSERT INTO "C##MOVIEDATABASE"."favourites" VALUES ('Hafijul', NULL, NULL, '24');
INSERT INTO "C##MOVIEDATABASE"."favourites" VALUES ('Farhan', NULL, NULL, '25');

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
-- Records of purchased
-- ----------------------------

-- ----------------------------
-- Function structure for ADDTOWATCHLIST
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##MOVIEDATABASE"."ADDTOWATCHLIST" AS
BEGIN
 INSERT INTO "C##MOVIEDATABASE."Watchlist"("Username","Id")
VALUES(USERNAME,ID);
COMMIT;
     END;
/

-- ----------------------------
-- Function structure for ADDTOWATCHLIST2
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##MOVIEDATABASE"."ADDTOWATCHLIST2" AS
BEGIN
 INSERT INTO "C##MOVIEDATABASE"."Watchlist"("Username","Id")
VALUES (USERNAME,ID);
COMMIT;
     END;
/

-- ----------------------------
-- Function structure for FORGETPASS
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##MOVIEDATABASE"."FORGETPASS" AS
BEGIN
     UPDATE "C##MOVIEDATABASE"."Useraccount"
        SET "Password"=PASSWORD
        WHERE "Username" =USERNAME AND "Secretcode"=SECRETCODE;
COMMIT;
     END;
/

-- ----------------------------
-- Function structure for GETUSERBYID
-- ----------------------------
CREATE OR REPLACE
FUNCTION "C##MOVIEDATABASE"."GETUSERBYID" AS
BEGIN
         SELECT "Username" INTO MSG
        FROM "C##MOVIEDATABASE"."Useraccount"
        WHERE "Username" = Username;
  RETURN MSG ;

END ;
/

-- ----------------------------
-- Function structure for UPDATEFAV
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##MOVIEDATABASE"."UPDATEFAV" AS
BEGIN
FOR R IN (SELECT "Username","Rating","Id","addtofav" FROM "C##MOVIEDATABASE"."Rated" )
LOOP
IF R."Rating">2 AND R."addtofav"=0 then
INSERT INTO "C##MOVIEDATABASE"."favourites"("Username","Id")
VALUES(R."Username",R."Id");
UPDATE "C##MOVIEDATABASE"."Rated"
SET "addtofav"=1;
END IF;
END LOOP;
COMMIT;
     END;
/

-- ----------------------------
-- Function structure for UPDATEPASS
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##MOVIEDATABASE"."UPDATEPASS" AS
BEGIN
     UPDATE "C##MOVIEDATABASE"."Useraccount"
        SET "Password"=PASSWORD
        WHERE "Username" =USERNAME;
COMMIT;
     END;
/

-- ----------------------------
-- Primary Key structure for table ActedBy
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."ActedBy" ADD CONSTRAINT "SYS_C007708" PRIMARY KEY ("Id");

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
-- Checks structure for table Cart
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Cart" ADD CONSTRAINT "SYS_C007881" CHECK ("Cart_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Cart" ADD CONSTRAINT "SYS_C007882" CHECK ("Username" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
-- Checks structure for table Merch_order
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Merch_order" ADD CONSTRAINT "SYS_C007883" CHECK ("Username" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Merch_order" ADD CONSTRAINT "SYS_C007884" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Merchandise
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Merchandise" ADD CONSTRAINT "SYS_C007503" PRIMARY KEY ("Product_id");

-- ----------------------------
-- Checks structure for table Merchandise
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Merchandise" ADD CONSTRAINT "SYS_C007502" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table Merchandise
-- ----------------------------
CREATE TRIGGER "C##MOVIEDATABASE"."trigger2" AFTER UPDATE ON "C##MOVIEDATABASE"."Merchandise" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
BEGIN
DELETE FROM "C##MOVIEDATABASE"."Merch_order"
WHERE "Bool"=1;


END;
/

-- ----------------------------
-- Primary Key structure for table Movies
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Movies" ADD CONSTRAINT "SYS_C007459" PRIMARY KEY ("Id");

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
ALTER TABLE "C##MOVIEDATABASE"."Rated" ADD CONSTRAINT "SYS_C007469" PRIMARY KEY ("Username", "Id");

-- ----------------------------
-- Checks structure for table Rated
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Rated" ADD CONSTRAINT "SYS_C007845" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Review
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Review" ADD CONSTRAINT "SYS_C007440" PRIMARY KEY ("Review_id", "Username");

-- ----------------------------
-- Checks structure for table Review
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Review" ADD CONSTRAINT "SYS_C007875" CHECK ("Review_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Show
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "SYS_C007447" PRIMARY KEY ("Id");

-- ----------------------------
-- Checks structure for table Show
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "SYS_C007445" CHECK ("Title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "SYS_C007446" CHECK ("Release_Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "SYS_C007705" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
-- Checks structure for table T_shirt
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."T_shirt" ADD CONSTRAINT "SYS_C007885" CHECK ("Product_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table Tv_series
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Tv_series" ADD CONSTRAINT "SYS_C007462" PRIMARY KEY ("Id");

-- ----------------------------
-- Checks structure for table Tv_series
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Tv_series" ADD CONSTRAINT "SYS_C007702" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
ALTER TABLE "C##MOVIEDATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007717" PRIMARY KEY ("Id");

-- ----------------------------
-- Checks structure for table Watchlist
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007716" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table favourites
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."favourites" ADD CONSTRAINT "SYS_C007713" PRIMARY KEY ("Username", "Id");

-- ----------------------------
-- Checks structure for table favourites
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."favourites" ADD CONSTRAINT "SYS_C007712" CHECK ("Id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
ALTER TABLE "C##MOVIEDATABASE"."ActedBy" ADD CONSTRAINT "ActedBykey1" FOREIGN KEY ("SSN") REFERENCES "C##MOVIEDATABASE"."Actor" ("SSN") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."ActedBy" ADD CONSTRAINT "ActedBykey2" FOREIGN KEY ("Id") REFERENCES "C##MOVIEDATABASE"."Movies" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."ActedBy" ADD CONSTRAINT "ActedBykey3" FOREIGN KEY ("Id") REFERENCES "C##MOVIEDATABASE"."Tv_series" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
-- Foreign Keys structure for table Poster
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Poster" ADD CONSTRAINT "SYS_C007515" FOREIGN KEY ("Product_id") REFERENCES "C##MOVIEDATABASE"."Merchandise" ("Product_id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Rated
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Rated" ADD CONSTRAINT "orratedkey2" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Rated" ADD CONSTRAINT "ratedkey1" FOREIGN KEY ("Id") REFERENCES "C##MOVIEDATABASE"."Show" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Review
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Review" ADD CONSTRAINT "username1" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Review" ADD CONSTRAINT "username2" FOREIGN KEY ("show_id") REFERENCES "C##MOVIEDATABASE"."Show" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Show
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "showkey1" FOREIGN KEY ("Director_ssn") REFERENCES "C##MOVIEDATABASE"."Directors" ("SSN") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Show" ADD CONSTRAINT "showkey2" FOREIGN KEY ("Studio_name") REFERENCES "C##MOVIEDATABASE"."Studio" ("Studio_name") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ShowAward
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."ShowAward" ADD CONSTRAINT "showawardkey2" FOREIGN KEY ("Award_name") REFERENCES "C##MOVIEDATABASE"."Award" ("Award_name") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Voted
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Voted" ADD CONSTRAINT "Username" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table Watchlist
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."Watchlist" ADD CONSTRAINT "SYS_C007476" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."Watchlist" ADD CONSTRAINT "watchlistkey1" FOREIGN KEY ("Id") REFERENCES "C##MOVIEDATABASE"."Show" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table favourites
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."favourites" ADD CONSTRAINT "favkey1" FOREIGN KEY ("Id") REFERENCES "C##MOVIEDATABASE"."Show" ("Id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."favourites" ADD CONSTRAINT "favkey2" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table purchased
-- ----------------------------
ALTER TABLE "C##MOVIEDATABASE"."purchased" ADD CONSTRAINT "purchasedkey1" FOREIGN KEY ("Username") REFERENCES "C##MOVIEDATABASE"."Useraccount" ("Username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##MOVIEDATABASE"."purchased" ADD CONSTRAINT "purchasedkey2" FOREIGN KEY ("product_id") REFERENCES "C##MOVIEDATABASE"."Merchandise" ("Product_id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

CREATE OR REPLACE TRIGGER "C##MOVIEDATABASE"."trigger2" AFTER UPDATE  ON "C##MOVIEDATABASE"."Merchandise" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW
DECLARE
BEGIN
    DELETE FROM "C##MOVIEDATABASE"."Merch_order"
    WHERE "Bool"=1;


END;
/



CREATE OR REPLACE PROCEDURE UPDATEFAV IS
BEGIN
    FOR R IN (SELECT "Username","Rating","Id","addtofav" FROM "C##MOVIEDATABASE"."Rated" )
        LOOP
            IF R."Rating">2 AND R."addtofav"=0 then
                INSERT INTO "C##MOVIEDATABASE"."favourites"("Username","Id")
                VALUES(R."Username",R."Id");
                UPDATE "C##MOVIEDATABASE"."Rated"
                SET "addtofav"=1;
            END IF;
        END LOOP;
    COMMIT;
END;
/


CREATE OR REPLACE PROCEDURE UPDATEPASS(USERNAME IN VARCHAR2,PASSWORD IN VARCHAR2) IS
BEGIN
    UPDATE "C##MOVIEDATABASE"."Useraccount"
    SET "Password"=PASSWORD
    WHERE "Username" =USERNAME;
    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE FORGETPASS(USERNAME IN VARCHAR2,PASSWORD IN VARCHAR2,SECRETCODE IN VARCHAR2) IS
BEGIN
    UPDATE "C##MOVIEDATABASE"."Useraccount"
    SET "Password"=PASSWORD
    WHERE "Username" =USERNAME AND "Secretcode"=SECRETCODE;
    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE ADDTOWATCHLIST2(USERNAME IN VARCHAR2,ID IN VARCHAR2) IS
BEGIN
    INSERT INTO "C##MOVIEDATABASE"."Watchlist"("Username","Id")
    VALUES (USERNAME,ID);
    COMMIT;
END;
/
