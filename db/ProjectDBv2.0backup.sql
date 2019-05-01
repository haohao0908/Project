/*
PostgreSQL Backup
Database: dc0gchj9ibuh72/public
Backup Time: 2019-05-01 19:02:57
*/

DROP SEQUENCE IF EXISTS "public"."adminpush_adminpush_serno_seq";
DROP SEQUENCE IF EXISTS "public"."list_list_serno_seq";
DROP SEQUENCE IF EXISTS "public"."listwork_list_serno_seq";
DROP SEQUENCE IF EXISTS "public"."listwork_listwork_serno_seq";
DROP SEQUENCE IF EXISTS "public"."listwork_work_serno_seq";
DROP SEQUENCE IF EXISTS "public"."orddetails_serno_seq";
DROP SEQUENCE IF EXISTS "public"."project_projectpermission_serno_seq";
DROP SEQUENCE IF EXISTS "public"."projecthint_projecthint_serno_seq";
DROP SEQUENCE IF EXISTS "public"."projectlist_list_serno_seq";
DROP SEQUENCE IF EXISTS "public"."projectlist_projectlist_serno_seq";
DROP SEQUENCE IF EXISTS "public"."projectpermission_projectpermission_serno_seq";
DROP SEQUENCE IF EXISTS "public"."score_serno_seq";
DROP SEQUENCE IF EXISTS "public"."teammember_teammember_serno_seq";
DROP SEQUENCE IF EXISTS "public"."work_work_serno_seq";
DROP SEQUENCE IF EXISTS "public"."workhint_work_serno_seq";
DROP SEQUENCE IF EXISTS "public"."workhint_workhint_serno_seq";
DROP TABLE IF EXISTS "public"."adminpush";
DROP TABLE IF EXISTS "public"."list";
DROP TABLE IF EXISTS "public"."listwork";
DROP TABLE IF EXISTS "public"."member";
DROP TABLE IF EXISTS "public"."project";
DROP TABLE IF EXISTS "public"."projecthint";
DROP TABLE IF EXISTS "public"."projectlist";
DROP TABLE IF EXISTS "public"."projectpermission";
DROP TABLE IF EXISTS "public"."teammember";
DROP TABLE IF EXISTS "public"."work";
DROP TABLE IF EXISTS "public"."workhint";
CREATE SEQUENCE "adminpush_adminpush_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "list_list_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "listwork_list_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "listwork_listwork_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "listwork_work_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "orddetails_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 3000
CACHE 1;
CREATE SEQUENCE "project_projectpermission_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "projecthint_projecthint_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "projectlist_list_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "projectlist_projectlist_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "projectpermission_projectpermission_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "score_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 200
CACHE 1;
CREATE SEQUENCE "teammember_teammember_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "work_work_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "workhint_work_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "workhint_workhint_serno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE TABLE "adminpush" (
  "adminpush_serno" int4 NOT NULL DEFAULT nextval('adminpush_adminpush_serno_seq'::regclass),
  "project_id" varchar(255) COLLATE "pg_catalog"."default",
  "adminpush_content" varchar(255) COLLATE "pg_catalog"."default",
  "adminpush_startdate" timestamp(6),
  "adminpush_enddate" timestamp(6)
)
;
ALTER TABLE "adminpush" OWNER TO "blgwsyskuyxazi";
CREATE TABLE "list" (
  "list_serno" int4 NOT NULL DEFAULT nextval('list_list_serno_seq'::regclass),
  "list_name" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "list" OWNER TO "blgwsyskuyxazi";
CREATE TABLE "listwork" (
  "listwork_serno" int4 NOT NULL DEFAULT nextval('listwork_listwork_serno_seq'::regclass),
  "list_serno" int4 NOT NULL DEFAULT nextval('listwork_list_serno_seq'::regclass),
  "work_serno" int4 NOT NULL DEFAULT nextval('listwork_work_serno_seq'::regclass)
)
;
ALTER TABLE "listwork" OWNER TO "blgwsyskuyxazi";
CREATE TABLE "member" (
  "user_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "photo" bytea,
  "member_name" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "member_password" varchar(255) COLLATE "pg_catalog"."default",
  "linebotpush" bool DEFAULT false
)
;
ALTER TABLE "member" OWNER TO "blgwsyskuyxazi";
CREATE TABLE "project" (
  "project_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "projectpermission_serno" int4 NOT NULL DEFAULT nextval('project_projectpermission_serno_seq'::regclass),
  "project_password" varchar(255) COLLATE "pg_catalog"."default",
  "project_name" varchar(255) COLLATE "pg_catalog"."default",
  "project_startdate" timestamp(6),
  "project_enddate" timestamp(6)
)
;
ALTER TABLE "project" OWNER TO "blgwsyskuyxazi";
CREATE TABLE "projecthint" (
  "projecthint_serno" int4 NOT NULL DEFAULT nextval('projecthint_projecthint_serno_seq'::regclass),
  "user_id" varchar(255) COLLATE "pg_catalog"."default",
  "project_id" varchar(255) COLLATE "pg_catalog"."default",
  "project_hint" bool DEFAULT false
)
;
ALTER TABLE "projecthint" OWNER TO "blgwsyskuyxazi";
CREATE TABLE "projectlist" (
  "projectlist_serno" int4 NOT NULL DEFAULT nextval('projectlist_projectlist_serno_seq'::regclass),
  "project_id" varchar(255) COLLATE "pg_catalog"."default",
  "list_serno" int4 NOT NULL DEFAULT nextval('projectlist_list_serno_seq'::regclass)
)
;
ALTER TABLE "projectlist" OWNER TO "blgwsyskuyxazi";
CREATE TABLE "projectpermission" (
  "projectpermission_serno" int4 NOT NULL DEFAULT nextval('projectpermission_projectpermission_serno_seq'::regclass),
  "list_permission" bool DEFAULT false,
  "add_work" bool DEFAULT false,
  "edit_work" bool DEFAULT false,
  "delete_work" bool DEFAULT false
)
;
ALTER TABLE "projectpermission" OWNER TO "blgwsyskuyxazi";
CREATE TABLE "teammember" (
  "teammember_serno" int4 NOT NULL DEFAULT nextval('teammember_teammember_serno_seq'::regclass),
  "user_id" varchar(255) COLLATE "pg_catalog"."default",
  "project_id" varchar(255) COLLATE "pg_catalog"."default",
  "group_id" varchar(255) COLLATE "pg_catalog"."default",
  "isadmin" bool DEFAULT false
)
;
ALTER TABLE "teammember" OWNER TO "blgwsyskuyxazi";
CREATE TABLE "work" (
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
ALTER TABLE "work" OWNER TO "blgwsyskuyxazi";
CREATE TABLE "workhint" (
  "workhint_serno" int4 NOT NULL DEFAULT nextval('workhint_workhint_serno_seq'::regclass),
  "user_id" varchar(255) COLLATE "pg_catalog"."default",
  "work_serno" int4 NOT NULL DEFAULT nextval('workhint_work_serno_seq'::regclass),
  "work_hint" bool DEFAULT false
)
;
ALTER TABLE "workhint" OWNER TO "blgwsyskuyxazi";
BEGIN;
LOCK TABLE "public"."adminpush" IN SHARE MODE;
DELETE FROM "public"."adminpush";
INSERT INTO "public"."adminpush" ("adminpush_serno","project_id","adminpush_content","adminpush_startdate","adminpush_enddate") VALUES (1, NULL, '提醒一', '2019-05-25 17:18:15', '2019-05-25 17:18:15'),(2, NULL, '提醒二', '2019-06-11 16:18:15', '2019-05-25 17:18:15'),(3, NULL, '提醒三', '2019-03-12 15:18:15', '2019-05-25 17:18:15'),(4, NULL, '提醒四', '2019-01-13 14:18:15', '2019-05-25 17:18:15'),(5, NULL, '提醒五', '2019-03-23 13:18:15', '2019-05-25 17:18:15'),(6, NULL, '提醒六', '2019-06-23 12:18:15', '2019-05-25 17:18:15'),(7, NULL, '提醒七', '2019-07-11 11:18:15', '2019-05-25 17:18:15'),(8, NULL, '提醒八', '2019-05-12 10:18:15', '2019-05-25 17:18:15'),(9, NULL, '提醒九', '2019-07-24 19:18:15', '2019-05-25 17:18:15'),(10, NULL, '提醒十', '2019-01-13 18:18:15', '2019-05-25 17:18:15');
COMMIT;
BEGIN;
LOCK TABLE "public"."list" IN SHARE MODE;
DELETE FROM "public"."list";
INSERT INTO "public"."list" ("list_serno","list_name") VALUES (1, '列表一'),(2, '列表二'),(3, '列表三'),(4, '列表四'),(5, '列表五'),(6, '列表六'),(7, '列表七'),(8, '列表八'),(9, '列表九'),(10, '列表十');
COMMIT;
BEGIN;
LOCK TABLE "public"."listwork" IN SHARE MODE;
DELETE FROM "public"."listwork";
COMMIT;
BEGIN;
LOCK TABLE "public"."member" IN SHARE MODE;
DELETE FROM "public"."member";
INSERT INTO "public"."member" ("user_id","photo","member_name","email","member_password","linebotpush") VALUES ('A001', E'1.jpg', '張小明', 'N1056444@gmail.com', 'A123a123b123', 't'),('B001', E'2.jpg', '王大陸', '105615644@gmail.com', 'saa156wq166', 'f'),('C003', E'1.jpg', '徐天良', '1046444@gmail.com', 'asd556q2', 'f'),('D001', E'1.jpg', '章詒', 'B1356444@gmail.com', 'qw0233sd', 't'),('E001', E'3.jpg', '天心', 'A1066444@gmail.com', 'wqed156dvs', 't'),('F001', E'4.jpg', '費德勒', 'A1057444@gmail.com', 'asd561dsv', 'f'),('G001', E'A01.jpg', '古拉爵', 'D1056844@gmail.com', '1r5bww2', 'f'),('H001', E'SAD.jpg', '史瓦尼', '1026444@gmail.com', 'wefq65w', 't'),('I001', E'QWE.jpg', '特斯拉', 'Q10556444@gmail.com', 'b1sf912d', 'f'),('J001', E'ERT.jpg', '雅柏格', 'V1056744@gmail.com', 'qwe15b65r', 'f');
COMMIT;
BEGIN;
LOCK TABLE "public"."project" IN SHARE MODE;
DELETE FROM "public"."project";
INSERT INTO "public"."project" ("project_id","projectpermission_serno","project_password","project_name","project_startdate","project_enddate") VALUES ('A001', 1, '001A', '專案一', '2019-01-26 15:12:17', '2019-02-05 18:47:17'),('B001', 2, '001A', '專案二', '2019-02-26 18:41:17', '2019-06-07 19:46:17'),('C001', 3, '001A', '專案三', '2019-03-26 19:35:17', '2019-07-08 20:45:17'),('D001', 4, '001A', '專案四', '2019-04-26 21:18:17', '2019-08-09 07:44:17'),('E001', 5, '001A', '專案五', '2019-01-22 08:25:17', '2019-09-10 08:43:17'),('F001', 6, '001A', '專案六', '2019-01-28 19:55:17', '2019-10-11 10:42:17'),('G001', 7, '001A', '專案七', '2019-01-29 15:15:17', '2019-11-12 15:41:17'),('H001', 8, '001A', '專案八', '2019-01-30 13:12:17', '2019-12-13 16:40:17'),('I001', 9, '001A', '專案九', '2019-02-15 15:48:17', '2019-08-14 17:39:17'),('J001', 10, '001A', '專案十', '2019-03-21 17:38:17', '2019-07-15 18:38:17');
COMMIT;
BEGIN;
LOCK TABLE "public"."projecthint" IN SHARE MODE;
DELETE FROM "public"."projecthint";
INSERT INTO "public"."projecthint" ("projecthint_serno","user_id","project_id","project_hint") VALUES (1, NULL, NULL, 't'),(2, NULL, NULL, 'f'),(3, NULL, NULL, 't'),(4, NULL, NULL, 't'),(5, NULL, NULL, 't'),(6, NULL, NULL, 't'),(7, NULL, NULL, 't'),(8, NULL, NULL, 'f'),(9, NULL, NULL, 'f'),(10, NULL, NULL, 'f');
COMMIT;
BEGIN;
LOCK TABLE "public"."projectlist" IN SHARE MODE;
DELETE FROM "public"."projectlist";
COMMIT;
BEGIN;
LOCK TABLE "public"."projectpermission" IN SHARE MODE;
DELETE FROM "public"."projectpermission";
INSERT INTO "public"."projectpermission" ("projectpermission_serno","list_permission","add_work","edit_work","delete_work") VALUES (1, 't', 't', 'f', 't'),(2, 't', 'f', 'f', 't'),(3, 't', 't', 'f', 't'),(4, 't', 'f', 'f', 't'),(5, 't', 't', 'f', 't'),(6, 't', 't', 'f', 't'),(7, 't', 't', 'f', 't'),(8, 't', 't', 't', 't'),(9, 't', 't', 'f', 't'),(10, 'f', 't', 'f', 't');
COMMIT;
BEGIN;
LOCK TABLE "public"."teammember" IN SHARE MODE;
DELETE FROM "public"."teammember";
INSERT INTO "public"."teammember" ("teammember_serno","user_id","project_id","group_id","isadmin") VALUES (1, NULL, NULL, 'A001', 't'),(2, NULL, NULL, 'B001', 'f'),(3, NULL, NULL, 'C001', 't'),(4, NULL, NULL, 'D001', 'f'),(5, NULL, NULL, 'E001', 't'),(6, NULL, NULL, 'F001', 'f'),(7, NULL, NULL, 'G001', 't'),(8, NULL, NULL, 'H001', 't'),(9, NULL, NULL, 'I001', 'f'),(10, NULL, NULL, 'J001', 'f');
COMMIT;
BEGIN;
LOCK TABLE "public"."work" IN SHARE MODE;
DELETE FROM "public"."work";
INSERT INTO "public"."work" ("work_serno","work_title","work_content","deadline","tag","file","first_principal","second_principal") VALUES (1, '工作一', '這是工作一', '2019-05-25 17:18:15', '@工作', 'zip檔案', '王曉明', '張大陸'),(2, '工作二', '這是工作二', '2019-05-25 17:18:15', '@工作', 'zip檔案', '測豐碩', '張辜陸'),(3, '工作三', '這是工作三', '2019-05-25 17:18:15', '@工作', 'zip檔案', '一條先', '德先'),(4, '工作四', '這是工作四', '2019-05-25 17:18:15', '@工作', 'zip檔案', '餔普忒', '特踢'),(5, '工作五', '這是工作五', '2019-05-25 17:18:15', '@工作', 'zip檔案', '謀辜', '估三大'),(6, '工作六', '這是工作六', '2019-05-25 17:18:15', '@工作', 'zip檔案', '特蘇噴', '章三大'),(7, '工作七', '這是工作七', '2019-05-25 17:18:15', '@工作', 'zip檔案', '辜三是', '一二心'),(8, '工作八', '這是工作八', '2019-05-25 17:18:15', '@工作', 'zip檔案', '陳世強', '揚威祥'),(9, '工作九', '這是工作九', '2019-05-25 17:18:15', '@工作', 'zip檔案', '章德馨', '斯紅葉'),(10, '工作十', '這是工作十', '2019-05-25 17:18:15', '@工作', 'zip檔案', '陳博生', '李正彥');
COMMIT;
BEGIN;
LOCK TABLE "public"."workhint" IN SHARE MODE;
DELETE FROM "public"."workhint";
INSERT INTO "public"."workhint" ("workhint_serno","user_id","work_serno","work_hint") VALUES (1, NULL, 1, 't'),(2, NULL, 2, 't'),(3, NULL, 3, 'f'),(4, NULL, 4, 'f'),(5, NULL, 5, 't'),(6, NULL, 6, 't'),(7, NULL, 7, 't'),(8, NULL, 8, 'f'),(9, NULL, 9, 't'),(10, NULL, 10, 't');
COMMIT;
ALTER TABLE "adminpush" ADD CONSTRAINT "adminpush_pkey" PRIMARY KEY ("adminpush_serno");
ALTER TABLE "list" ADD CONSTRAINT "list_pkey" PRIMARY KEY ("list_serno");
ALTER TABLE "listwork" ADD CONSTRAINT "listwork_pkey" PRIMARY KEY ("listwork_serno");
ALTER TABLE "member" ADD CONSTRAINT "member_pkey" PRIMARY KEY ("user_id");
ALTER TABLE "project" ADD CONSTRAINT "project_pkey" PRIMARY KEY ("project_id");
ALTER TABLE "projecthint" ADD CONSTRAINT "projecthint_pkey" PRIMARY KEY ("projecthint_serno");
ALTER TABLE "projectlist" ADD CONSTRAINT "projectlist_pkey" PRIMARY KEY ("projectlist_serno");
ALTER TABLE "projectpermission" ADD CONSTRAINT "projectpermission_pkey" PRIMARY KEY ("projectpermission_serno");
ALTER TABLE "teammember" ADD CONSTRAINT "teammember_pkey" PRIMARY KEY ("teammember_serno");
ALTER TABLE "work" ADD CONSTRAINT "work_pkey" PRIMARY KEY ("work_serno");
ALTER TABLE "workhint" ADD CONSTRAINT "workhint_pkey" PRIMARY KEY ("workhint_serno");
ALTER TABLE "adminpush" ADD CONSTRAINT "adminpush_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."project" ("project_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "listwork" ADD CONSTRAINT "listwork_list_serno_fkey" FOREIGN KEY ("list_serno") REFERENCES "public"."list" ("list_serno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "listwork" ADD CONSTRAINT "listwork_work_serno_fkey" FOREIGN KEY ("work_serno") REFERENCES "public"."work" ("work_serno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "project" ADD CONSTRAINT "project_projectpermission_serno_fkey" FOREIGN KEY ("projectpermission_serno") REFERENCES "public"."projectpermission" ("projectpermission_serno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "projecthint" ADD CONSTRAINT "projecthint_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."project" ("project_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "projecthint" ADD CONSTRAINT "projecthint_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."member" ("user_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "projectlist" ADD CONSTRAINT "projectlist_list_serno_fkey" FOREIGN KEY ("list_serno") REFERENCES "public"."list" ("list_serno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "projectlist" ADD CONSTRAINT "projectlist_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."project" ("project_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "teammember" ADD CONSTRAINT "teammember_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."project" ("project_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "teammember" ADD CONSTRAINT "teammember_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."member" ("user_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "workhint" ADD CONSTRAINT "workhint_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."member" ("user_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "workhint" ADD CONSTRAINT "workhint_work_serno_fkey" FOREIGN KEY ("work_serno") REFERENCES "public"."work" ("work_serno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER SEQUENCE "adminpush_adminpush_serno_seq"
OWNED BY "adminpush"."adminpush_serno";
SELECT setval('"adminpush_adminpush_serno_seq"', 21, true);
ALTER SEQUENCE "adminpush_adminpush_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "list_list_serno_seq"
OWNED BY "list"."list_serno";
SELECT setval('"list_list_serno_seq"', 21, true);
ALTER SEQUENCE "list_list_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "listwork_list_serno_seq"
OWNED BY "listwork"."list_serno";
SELECT setval('"listwork_list_serno_seq"', 21, true);
ALTER SEQUENCE "listwork_list_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "listwork_listwork_serno_seq"
OWNED BY "listwork"."listwork_serno";
SELECT setval('"listwork_listwork_serno_seq"', 21, true);
ALTER SEQUENCE "listwork_listwork_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "listwork_work_serno_seq"
OWNED BY "listwork"."work_serno";
SELECT setval('"listwork_work_serno_seq"', 21, true);
ALTER SEQUENCE "listwork_work_serno_seq" OWNER TO "blgwsyskuyxazi";
SELECT setval('"orddetails_serno_seq"', 3001, false);
ALTER SEQUENCE "orddetails_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "project_projectpermission_serno_seq"
OWNED BY "project"."projectpermission_serno";
SELECT setval('"project_projectpermission_serno_seq"', 21, true);
ALTER SEQUENCE "project_projectpermission_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "projecthint_projecthint_serno_seq"
OWNED BY "projecthint"."projecthint_serno";
SELECT setval('"projecthint_projecthint_serno_seq"', 21, true);
ALTER SEQUENCE "projecthint_projecthint_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "projectlist_list_serno_seq"
OWNED BY "projectlist"."list_serno";
SELECT setval('"projectlist_list_serno_seq"', 21, true);
ALTER SEQUENCE "projectlist_list_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "projectlist_projectlist_serno_seq"
OWNED BY "projectlist"."projectlist_serno";
SELECT setval('"projectlist_projectlist_serno_seq"', 21, true);
ALTER SEQUENCE "projectlist_projectlist_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "projectpermission_projectpermission_serno_seq"
OWNED BY "projectpermission"."projectpermission_serno";
SELECT setval('"projectpermission_projectpermission_serno_seq"', 21, true);
ALTER SEQUENCE "projectpermission_projectpermission_serno_seq" OWNER TO "blgwsyskuyxazi";
SELECT setval('"score_serno_seq"', 204, false);
ALTER SEQUENCE "score_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "teammember_teammember_serno_seq"
OWNED BY "teammember"."teammember_serno";
SELECT setval('"teammember_teammember_serno_seq"', 21, true);
ALTER SEQUENCE "teammember_teammember_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "work_work_serno_seq"
OWNED BY "work"."work_serno";
SELECT setval('"work_work_serno_seq"', 21, true);
ALTER SEQUENCE "work_work_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "workhint_work_serno_seq"
OWNED BY "workhint"."work_serno";
SELECT setval('"workhint_work_serno_seq"', 21, true);
ALTER SEQUENCE "workhint_work_serno_seq" OWNER TO "blgwsyskuyxazi";
ALTER SEQUENCE "workhint_workhint_serno_seq"
OWNED BY "workhint"."workhint_serno";
SELECT setval('"workhint_workhint_serno_seq"', 21, true);
ALTER SEQUENCE "workhint_workhint_serno_seq" OWNER TO "blgwsyskuyxazi";
