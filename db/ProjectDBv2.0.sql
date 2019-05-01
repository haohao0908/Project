DROP TABLE IF EXISTS "public"."adminpush";
DROP TABLE IF EXISTS "public"."listwork";
DROP TABLE IF EXISTS "public"."projectlist";
DROP TABLE IF EXISTS "public"."projecthint";
DROP TABLE IF EXISTS "public"."teammember";
DROP TABLE IF EXISTS "public"."workhint";
DROP TABLE IF EXISTS "public"."list";
DROP TABLE IF EXISTS "public"."project";
DROP TABLE IF EXISTS "public"."projectpermission";
DROP TABLE IF EXISTS "public"."work";
DROP TABLE IF EXISTS "public"."member";


-- ----------------------------
-- Sequence structure for adminpush_adminpush_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."adminpush_adminpush_serno_seq";
CREATE SEQUENCE "public"."adminpush_adminpush_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for list_list_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."list_list_serno_seq";
CREATE SEQUENCE "public"."list_list_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for listwork_list_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."listwork_list_serno_seq";
CREATE SEQUENCE "public"."listwork_list_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for listwork_listwork_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."listwork_listwork_serno_seq";
CREATE SEQUENCE "public"."listwork_listwork_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for listwork_work_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."listwork_work_serno_seq";
CREATE SEQUENCE "public"."listwork_work_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for project_projectpermission_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."project_projectpermission_serno_seq";
CREATE SEQUENCE "public"."project_projectpermission_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for projecthint_projecthint_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."projecthint_projecthint_serno_seq";
CREATE SEQUENCE "public"."projecthint_projecthint_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for projectlist_list_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."projectlist_list_serno_seq";
CREATE SEQUENCE "public"."projectlist_list_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for projectlist_projectlist_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."projectlist_projectlist_serno_seq";
CREATE SEQUENCE "public"."projectlist_projectlist_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for projectpermission_projectpermission_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."projectpermission_projectpermission_serno_seq";
CREATE SEQUENCE "public"."projectpermission_projectpermission_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;


-- ----------------------------
-- Sequence structure for teammember_teammember_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."teammember_teammember_serno_seq";
CREATE SEQUENCE "public"."teammember_teammember_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for work_work_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."work_work_serno_seq";
CREATE SEQUENCE "public"."work_work_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for workhint_work_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."workhint_work_serno_seq";
CREATE SEQUENCE "public"."workhint_work_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for workhint_workhint_serno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."workhint_workhint_serno_seq";
CREATE SEQUENCE "public"."workhint_workhint_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for adminpush
-- ----------------------------
DROP TABLE IF EXISTS "public"."adminpush";
CREATE TABLE "public"."adminpush" (
  "adminpush_serno" int4 NOT NULL DEFAULT nextval('adminpush_adminpush_serno_seq'::regclass),
  "project_id" varchar(255) COLLATE "pg_catalog"."default",
  "adminpush_content" varchar(255) COLLATE "pg_catalog"."default",
  "adminpush_startdate" timestamp(6),
  "adminpush_enddate" timestamp(6)
)
;

-- ----------------------------
-- Records of adminpush
-- ----------------------------
INSERT INTO "public"."adminpush" VALUES (1, NULL, '提醒一', '2019-05-25 17:18:15', '2019-05-25 17:18:15');
INSERT INTO "public"."adminpush" VALUES (2, NULL, '提醒二', '2019-06-11 16:18:15', '2019-05-25 17:18:15');
INSERT INTO "public"."adminpush" VALUES (3, NULL, '提醒三', '2019-03-12 15:18:15', '2019-05-25 17:18:15');
INSERT INTO "public"."adminpush" VALUES (4, NULL, '提醒四', '2019-01-13 14:18:15', '2019-05-25 17:18:15');
INSERT INTO "public"."adminpush" VALUES (5, NULL, '提醒五', '2019-03-23 13:18:15', '2019-05-25 17:18:15');
INSERT INTO "public"."adminpush" VALUES (6, NULL, '提醒六', '2019-06-23 12:18:15', '2019-05-25 17:18:15');
INSERT INTO "public"."adminpush" VALUES (7, NULL, '提醒七', '2019-07-11 11:18:15', '2019-05-25 17:18:15');
INSERT INTO "public"."adminpush" VALUES (8, NULL, '提醒八', '2019-05-12 10:18:15', '2019-05-25 17:18:15');
INSERT INTO "public"."adminpush" VALUES (9, NULL, '提醒九', '2019-07-24 19:18:15', '2019-05-25 17:18:15');
INSERT INTO "public"."adminpush" VALUES (10, NULL, '提醒十', '2019-01-13 18:18:15', '2019-05-25 17:18:15');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS "public"."list";
CREATE TABLE "public"."list" (
  "list_serno" int4 NOT NULL DEFAULT nextval('list_list_serno_seq'::regclass),
  "list_name" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO "public"."list" VALUES (1, '列表一');
INSERT INTO "public"."list" VALUES (2, '列表二');
INSERT INTO "public"."list" VALUES (3, '列表三');
INSERT INTO "public"."list" VALUES (4, '列表四');
INSERT INTO "public"."list" VALUES (5, '列表五');
INSERT INTO "public"."list" VALUES (6, '列表六');
INSERT INTO "public"."list" VALUES (7, '列表七');
INSERT INTO "public"."list" VALUES (8, '列表八');
INSERT INTO "public"."list" VALUES (9, '列表九');
INSERT INTO "public"."list" VALUES (10, '列表十');

-- ----------------------------
-- Table structure for listwork
-- ----------------------------
DROP TABLE IF EXISTS "public"."listwork";
CREATE TABLE "public"."listwork" (
  "listwork_serno" int4 NOT NULL DEFAULT nextval('listwork_listwork_serno_seq'::regclass),
  "list_serno" int4 NOT NULL DEFAULT nextval('listwork_list_serno_seq'::regclass),
  "work_serno" int4 NOT NULL DEFAULT nextval('listwork_work_serno_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS "public"."member";
CREATE TABLE "public"."member" (
  "user_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "photo" bytea,
  "member_name" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "member_password" varchar(255) COLLATE "pg_catalog"."default",
  "linebotpush" bool DEFAULT false
)
;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO "public"."member" VALUES ('A001', E'1.jpg', '張小明', 'N1056444@gmail.com', 'A123a123b123', 't');
INSERT INTO "public"."member" VALUES ('B001', E'2.jpg', '王大陸', '105615644@gmail.com', 'saa156wq166', 'f');
INSERT INTO "public"."member" VALUES ('C003', E'1.jpg', '徐天良', '1046444@gmail.com', 'asd556q2', 'f');
INSERT INTO "public"."member" VALUES ('D001', E'1.jpg', '章詒', 'B1356444@gmail.com', 'qw0233sd', 't');
INSERT INTO "public"."member" VALUES ('E001', E'3.jpg', '天心', 'A1066444@gmail.com', 'wqed156dvs', 't');
INSERT INTO "public"."member" VALUES ('F001', E'4.jpg', '費德勒', 'A1057444@gmail.com', 'asd561dsv', 'f');
INSERT INTO "public"."member" VALUES ('G001', E'A01.jpg', '古拉爵', 'D1056844@gmail.com', '1r5bww2', 'f');
INSERT INTO "public"."member" VALUES ('H001', E'SAD.jpg', '史瓦尼', '1026444@gmail.com', 'wefq65w', 't');
INSERT INTO "public"."member" VALUES ('I001', E'QWE.jpg', '特斯拉', 'Q10556444@gmail.com', 'b1sf912d', 'f');
INSERT INTO "public"."member" VALUES ('J001', E'ERT.jpg', '雅柏格', 'V1056744@gmail.com', 'qwe15b65r', 'f');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS "public"."project";
CREATE TABLE "public"."project" (
  "project_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "projectpermission_serno" int4 NOT NULL DEFAULT nextval('project_projectpermission_serno_seq'::regclass),
  "project_password" varchar(255) COLLATE "pg_catalog"."default",
  "project_name" varchar(255) COLLATE "pg_catalog"."default",
  "project_startdate" timestamp(6),
  "project_enddate" timestamp(6)
)
;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO "public"."project" VALUES ('A001', 1, '001A', '專案一', '2019-01-26 15:12:17', '2019-02-05 18:47:17');
INSERT INTO "public"."project" VALUES ('B001', 2, '001A', '專案二', '2019-02-26 18:41:17', '2019-06-07 19:46:17');
INSERT INTO "public"."project" VALUES ('C001', 3, '001A', '專案三', '2019-03-26 19:35:17', '2019-07-08 20:45:17');
INSERT INTO "public"."project" VALUES ('D001', 4, '001A', '專案四', '2019-04-26 21:18:17', '2019-08-09 07:44:17');
INSERT INTO "public"."project" VALUES ('E001', 5, '001A', '專案五', '2019-01-22 08:25:17', '2019-09-10 08:43:17');
INSERT INTO "public"."project" VALUES ('F001', 6, '001A', '專案六', '2019-01-28 19:55:17', '2019-10-11 10:42:17');
INSERT INTO "public"."project" VALUES ('G001', 7, '001A', '專案七', '2019-01-29 15:15:17', '2019-11-12 15:41:17');
INSERT INTO "public"."project" VALUES ('H001', 8, '001A', '專案八', '2019-01-30 13:12:17', '2019-12-13 16:40:17');
INSERT INTO "public"."project" VALUES ('I001', 9, '001A', '專案九', '2019-02-15 15:48:17', '2019-08-14 17:39:17');
INSERT INTO "public"."project" VALUES ('J001', 10, '001A', '專案十', '2019-03-21 17:38:17', '2019-07-15 18:38:17');

-- ----------------------------
-- Table structure for projecthint
-- ----------------------------
DROP TABLE IF EXISTS "public"."projecthint";
CREATE TABLE "public"."projecthint" (
  "projecthint_serno" int4 NOT NULL DEFAULT nextval('projecthint_projecthint_serno_seq'::regclass),
  "user_id" varchar(255) COLLATE "pg_catalog"."default",
  "project_id" varchar(255) COLLATE "pg_catalog"."default",
  "project_hint" bool DEFAULT false
)
;

-- ----------------------------
-- Records of projecthint
-- ----------------------------
INSERT INTO "public"."projecthint" VALUES (1, NULL, NULL, 't');
INSERT INTO "public"."projecthint" VALUES (2, NULL, NULL, 'f');
INSERT INTO "public"."projecthint" VALUES (3, NULL, NULL, 't');
INSERT INTO "public"."projecthint" VALUES (4, NULL, NULL, 't');
INSERT INTO "public"."projecthint" VALUES (5, NULL, NULL, 't');
INSERT INTO "public"."projecthint" VALUES (6, NULL, NULL, 't');
INSERT INTO "public"."projecthint" VALUES (7, NULL, NULL, 't');
INSERT INTO "public"."projecthint" VALUES (8, NULL, NULL, 'f');
INSERT INTO "public"."projecthint" VALUES (9, NULL, NULL, 'f');
INSERT INTO "public"."projecthint" VALUES (10, NULL, NULL, 'f');

-- ----------------------------
-- Table structure for projectlist
-- ----------------------------
DROP TABLE IF EXISTS "public"."projectlist";
CREATE TABLE "public"."projectlist" (
  "projectlist_serno" int4 NOT NULL DEFAULT nextval('projectlist_projectlist_serno_seq'::regclass),
  "project_id" varchar(255) COLLATE "pg_catalog"."default",
  "list_serno" int4 NOT NULL DEFAULT nextval('projectlist_list_serno_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for projectpermission
-- ----------------------------
DROP TABLE IF EXISTS "public"."projectpermission";
CREATE TABLE "public"."projectpermission" (
  "projectpermission_serno" int4 NOT NULL DEFAULT nextval('projectpermission_projectpermission_serno_seq'::regclass),
  "list_permission" bool DEFAULT false,
  "add_work" bool DEFAULT false,
  "edit_work" bool DEFAULT false,
  "delete_work" bool DEFAULT false
)
;

-- ----------------------------
-- Records of projectpermission
-- ----------------------------
INSERT INTO "public"."projectpermission" VALUES (1, 't', 't', 'f', 't');
INSERT INTO "public"."projectpermission" VALUES (2, 't', 'f', 'f', 't');
INSERT INTO "public"."projectpermission" VALUES (3, 't', 't', 'f', 't');
INSERT INTO "public"."projectpermission" VALUES (4, 't', 'f', 'f', 't');
INSERT INTO "public"."projectpermission" VALUES (5, 't', 't', 'f', 't');
INSERT INTO "public"."projectpermission" VALUES (6, 't', 't', 'f', 't');
INSERT INTO "public"."projectpermission" VALUES (7, 't', 't', 'f', 't');
INSERT INTO "public"."projectpermission" VALUES (8, 't', 't', 't', 't');
INSERT INTO "public"."projectpermission" VALUES (9, 't', 't', 'f', 't');
INSERT INTO "public"."projectpermission" VALUES (10, 'f', 't', 'f', 't');

-- ----------------------------
-- Table structure for teammember
-- ----------------------------
DROP TABLE IF EXISTS "public"."teammember";
CREATE TABLE "public"."teammember" (
  "teammember_serno" int4 NOT NULL DEFAULT nextval('teammember_teammember_serno_seq'::regclass),
  "user_id" varchar(255) COLLATE "pg_catalog"."default",
  "project_id" varchar(255) COLLATE "pg_catalog"."default",
  "group_id" varchar(255) COLLATE "pg_catalog"."default",
  "isadmin" bool DEFAULT false
)
;

-- ----------------------------
-- Records of teammember
-- ----------------------------
INSERT INTO "public"."teammember" VALUES (1, NULL, NULL, 'A001', 't');
INSERT INTO "public"."teammember" VALUES (2, NULL, NULL, 'B001', 'f');
INSERT INTO "public"."teammember" VALUES (3, NULL, NULL, 'C001', 't');
INSERT INTO "public"."teammember" VALUES (4, NULL, NULL, 'D001', 'f');
INSERT INTO "public"."teammember" VALUES (5, NULL, NULL, 'E001', 't');
INSERT INTO "public"."teammember" VALUES (6, NULL, NULL, 'F001', 'f');
INSERT INTO "public"."teammember" VALUES (7, NULL, NULL, 'G001', 't');
INSERT INTO "public"."teammember" VALUES (8, NULL, NULL, 'H001', 't');
INSERT INTO "public"."teammember" VALUES (9, NULL, NULL, 'I001', 'f');
INSERT INTO "public"."teammember" VALUES (10, NULL, NULL, 'J001', 'f');

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS "public"."work";
CREATE TABLE "public"."work" (
  "work_serno" int4 NOT NULL DEFAULT nextval('work_work_serno_seq'::regclass),
  "work_title" varchar(255) COLLATE "pg_catalog"."default",
  "work_content" varchar(255) COLLATE "pg_catalog"."default",
  "deadline" timestamp(6),
  "tag" varchar(255) COLLATE "pg_catalog"."default",
  "file" varchar(255) COLLATE "pg_catalog"."default",
  "first_principal" varchar(255) COLLATE "pg_catalog"."default",
  "second_principal" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO "public"."work" VALUES (1, '工作一', '這是工作一', '2019-05-25 17:18:15', '@工作', 'zip檔案', '王曉明', '張大陸');
INSERT INTO "public"."work" VALUES (2, '工作二', '這是工作二', '2019-05-25 17:18:15', '@工作', 'zip檔案', '測豐碩', '張辜陸');
INSERT INTO "public"."work" VALUES (3, '工作三', '這是工作三', '2019-05-25 17:18:15', '@工作', 'zip檔案', '一條先', '德先');
INSERT INTO "public"."work" VALUES (4, '工作四', '這是工作四', '2019-05-25 17:18:15', '@工作', 'zip檔案', '餔普忒', '特踢');
INSERT INTO "public"."work" VALUES (5, '工作五', '這是工作五', '2019-05-25 17:18:15', '@工作', 'zip檔案', '謀辜', '估三大');
INSERT INTO "public"."work" VALUES (6, '工作六', '這是工作六', '2019-05-25 17:18:15', '@工作', 'zip檔案', '特蘇噴', '章三大');
INSERT INTO "public"."work" VALUES (7, '工作七', '這是工作七', '2019-05-25 17:18:15', '@工作', 'zip檔案', '辜三是', '一二心');
INSERT INTO "public"."work" VALUES (8, '工作八', '這是工作八', '2019-05-25 17:18:15', '@工作', 'zip檔案', '陳世強', '揚威祥');
INSERT INTO "public"."work" VALUES (9, '工作九', '這是工作九', '2019-05-25 17:18:15', '@工作', 'zip檔案', '章德馨', '斯紅葉');
INSERT INTO "public"."work" VALUES (10, '工作十', '這是工作十', '2019-05-25 17:18:15', '@工作', 'zip檔案', '陳博生', '李正彥');

-- ----------------------------
-- Table structure for workhint
-- ----------------------------
DROP TABLE IF EXISTS "public"."workhint";
CREATE TABLE "public"."workhint" (
  "workhint_serno" int4 NOT NULL DEFAULT nextval('workhint_workhint_serno_seq'::regclass),
  "user_id" varchar(255) COLLATE "pg_catalog"."default",
  "work_serno" int4 NOT NULL DEFAULT nextval('workhint_work_serno_seq'::regclass),
  "work_hint" bool DEFAULT false
)
;

-- ----------------------------
-- Records of workhint
-- ----------------------------
INSERT INTO "public"."workhint" VALUES (1, NULL, 1, 't');
INSERT INTO "public"."workhint" VALUES (2, NULL, 2, 't');
INSERT INTO "public"."workhint" VALUES (3, NULL, 3, 'f');
INSERT INTO "public"."workhint" VALUES (4, NULL, 4, 'f');
INSERT INTO "public"."workhint" VALUES (5, NULL, 5, 't');
INSERT INTO "public"."workhint" VALUES (6, NULL, 6, 't');
INSERT INTO "public"."workhint" VALUES (7, NULL, 7, 't');
INSERT INTO "public"."workhint" VALUES (8, NULL, 8, 'f');
INSERT INTO "public"."workhint" VALUES (9, NULL, 9, 't');
INSERT INTO "public"."workhint" VALUES (10, NULL, 10, 't');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."adminpush_adminpush_serno_seq"
OWNED BY "public"."adminpush"."adminpush_serno";
SELECT setval('"public"."adminpush_adminpush_serno_seq"', 20, true);
ALTER SEQUENCE "public"."list_list_serno_seq"
OWNED BY "public"."list"."list_serno";
SELECT setval('"public"."list_list_serno_seq"', 20, true);
ALTER SEQUENCE "public"."listwork_list_serno_seq"
OWNED BY "public"."listwork"."list_serno";
SELECT setval('"public"."listwork_list_serno_seq"', 20, true);
ALTER SEQUENCE "public"."listwork_listwork_serno_seq"
OWNED BY "public"."listwork"."listwork_serno";
SELECT setval('"public"."listwork_listwork_serno_seq"', 20, true);
ALTER SEQUENCE "public"."listwork_work_serno_seq"
OWNED BY "public"."listwork"."work_serno";
SELECT setval('"public"."listwork_work_serno_seq"', 20, true);
ALTER SEQUENCE "public"."project_projectpermission_serno_seq"
OWNED BY "public"."project"."projectpermission_serno";
SELECT setval('"public"."project_projectpermission_serno_seq"', 20, true);
ALTER SEQUENCE "public"."projecthint_projecthint_serno_seq"
OWNED BY "public"."projecthint"."projecthint_serno";
SELECT setval('"public"."projecthint_projecthint_serno_seq"', 20, true);
ALTER SEQUENCE "public"."projectlist_list_serno_seq"
OWNED BY "public"."projectlist"."list_serno";
SELECT setval('"public"."projectlist_list_serno_seq"', 20, true);
ALTER SEQUENCE "public"."projectlist_projectlist_serno_seq"
OWNED BY "public"."projectlist"."projectlist_serno";
SELECT setval('"public"."projectlist_projectlist_serno_seq"', 20, true);
ALTER SEQUENCE "public"."projectpermission_projectpermission_serno_seq"
OWNED BY "public"."projectpermission"."projectpermission_serno";
SELECT setval('"public"."projectpermission_projectpermission_serno_seq"', 20, true);
ALTER SEQUENCE "public"."teammember_teammember_serno_seq"
OWNED BY "public"."teammember"."teammember_serno";
SELECT setval('"public"."teammember_teammember_serno_seq"', 20, true);
ALTER SEQUENCE "public"."work_work_serno_seq"
OWNED BY "public"."work"."work_serno";
SELECT setval('"public"."work_work_serno_seq"', 20, true);
ALTER SEQUENCE "public"."workhint_work_serno_seq"
OWNED BY "public"."workhint"."work_serno";
SELECT setval('"public"."workhint_work_serno_seq"', 20, true);
ALTER SEQUENCE "public"."workhint_workhint_serno_seq"
OWNED BY "public"."workhint"."workhint_serno";
SELECT setval('"public"."workhint_workhint_serno_seq"', 20, true);

-- ----------------------------
-- Primary Key structure for table adminpush
-- ----------------------------
ALTER TABLE "public"."adminpush" ADD CONSTRAINT "adminpush_pkey" PRIMARY KEY ("adminpush_serno");

-- ----------------------------
-- Primary Key structure for table list
-- ----------------------------
ALTER TABLE "public"."list" ADD CONSTRAINT "list_pkey" PRIMARY KEY ("list_serno");

-- ----------------------------
-- Primary Key structure for table listwork
-- ----------------------------
ALTER TABLE "public"."listwork" ADD CONSTRAINT "listwork_pkey" PRIMARY KEY ("listwork_serno");

-- ----------------------------
-- Primary Key structure for table member
-- ----------------------------
ALTER TABLE "public"."member" ADD CONSTRAINT "member_pkey" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table project
-- ----------------------------
ALTER TABLE "public"."project" ADD CONSTRAINT "project_pkey" PRIMARY KEY ("project_id");

-- ----------------------------
-- Primary Key structure for table projecthint
-- ----------------------------
ALTER TABLE "public"."projecthint" ADD CONSTRAINT "projecthint_pkey" PRIMARY KEY ("projecthint_serno");

-- ----------------------------
-- Primary Key structure for table projectlist
-- ----------------------------
ALTER TABLE "public"."projectlist" ADD CONSTRAINT "projectlist_pkey" PRIMARY KEY ("projectlist_serno");

-- ----------------------------
-- Primary Key structure for table projectpermission
-- ----------------------------
ALTER TABLE "public"."projectpermission" ADD CONSTRAINT "projectpermission_pkey" PRIMARY KEY ("projectpermission_serno");

-- ----------------------------
-- Primary Key structure for table teammember
-- ----------------------------
ALTER TABLE "public"."teammember" ADD CONSTRAINT "teammember_pkey" PRIMARY KEY ("teammember_serno");

-- ----------------------------
-- Primary Key structure for table work
-- ----------------------------
ALTER TABLE "public"."work" ADD CONSTRAINT "work_pkey" PRIMARY KEY ("work_serno");

-- ----------------------------
-- Primary Key structure for table workhint
-- ----------------------------
ALTER TABLE "public"."workhint" ADD CONSTRAINT "workhint_pkey" PRIMARY KEY ("workhint_serno");

-- ----------------------------
-- Foreign Keys structure for table adminpush
-- ----------------------------
ALTER TABLE "public"."adminpush" ADD CONSTRAINT "adminpush_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."project" ("project_id") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table listwork
-- ----------------------------
ALTER TABLE "public"."listwork" ADD CONSTRAINT "listwork_list_serno_fkey" FOREIGN KEY ("list_serno") REFERENCES "public"."list" ("list_serno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."listwork" ADD CONSTRAINT "listwork_work_serno_fkey" FOREIGN KEY ("work_serno") REFERENCES "public"."work" ("work_serno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table project
-- ----------------------------
ALTER TABLE "public"."project" ADD CONSTRAINT "project_projectpermission_serno_fkey" FOREIGN KEY ("projectpermission_serno") REFERENCES "public"."projectpermission" ("projectpermission_serno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table projecthint
-- ----------------------------
ALTER TABLE "public"."projecthint" ADD CONSTRAINT "projecthint_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."project" ("project_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."projecthint" ADD CONSTRAINT "projecthint_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."member" ("user_id") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table projectlist
-- ----------------------------
ALTER TABLE "public"."projectlist" ADD CONSTRAINT "projectlist_list_serno_fkey" FOREIGN KEY ("list_serno") REFERENCES "public"."list" ("list_serno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."projectlist" ADD CONSTRAINT "projectlist_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."project" ("project_id") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table teammember
-- ----------------------------
ALTER TABLE "public"."teammember" ADD CONSTRAINT "teammember_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."project" ("project_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."teammember" ADD CONSTRAINT "teammember_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."member" ("user_id") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table workhint
-- ----------------------------
ALTER TABLE "public"."workhint" ADD CONSTRAINT "workhint_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."member" ("user_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."workhint" ADD CONSTRAINT "workhint_work_serno_fkey" FOREIGN KEY ("work_serno") REFERENCES "public"."work" ("work_serno") ON DELETE RESTRICT ON UPDATE RESTRICT;
