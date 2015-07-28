PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO "django_migrations" VALUES(1,'contenttypes','0001_initial','2015-07-28 01:12:41.489000');
INSERT INTO "django_migrations" VALUES(2,'auth','0001_initial','2015-07-28 01:12:41.797000');
INSERT INTO "django_migrations" VALUES(3,'admin','0001_initial','2015-07-28 01:12:42.172000');
INSERT INTO "django_migrations" VALUES(4,'daishu','0001_initial','2015-07-28 01:12:42.546000');
INSERT INTO "django_migrations" VALUES(5,'daishu','0002_auto_20150727_1829','2015-07-28 01:12:42.904000');
INSERT INTO "django_migrations" VALUES(6,'sessions','0001_initial','2015-07-28 01:12:43.147000');
INSERT INTO "django_migrations" VALUES(7,'daishu','0003_auto_20150728_1822','2015-07-28 10:22:54.257000');
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL, UNIQUE ("app_label", "model"));
INSERT INTO "django_content_type" VALUES(1,'log entry','admin','logentry');
INSERT INTO "django_content_type" VALUES(2,'permission','auth','permission');
INSERT INTO "django_content_type" VALUES(3,'group','auth','group');
INSERT INTO "django_content_type" VALUES(4,'user','auth','user');
INSERT INTO "django_content_type" VALUES(5,'content type','contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'session','sessions','session');
INSERT INTO "django_content_type" VALUES(7,'news','daishu','news');
INSERT INTO "django_content_type" VALUES(8,'story','daishu','story');
INSERT INTO "django_content_type" VALUES(9,'基本信息','daishu','basicinfo');
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, UNIQUE ("content_type_id", "codename"));
INSERT INTO "auth_permission" VALUES(1,'Can add log entry',1,'add_logentry');
INSERT INTO "auth_permission" VALUES(2,'Can change log entry',1,'change_logentry');
INSERT INTO "auth_permission" VALUES(3,'Can delete log entry',1,'delete_logentry');
INSERT INTO "auth_permission" VALUES(4,'Can add permission',2,'add_permission');
INSERT INTO "auth_permission" VALUES(5,'Can change permission',2,'change_permission');
INSERT INTO "auth_permission" VALUES(6,'Can delete permission',2,'delete_permission');
INSERT INTO "auth_permission" VALUES(7,'Can add group',3,'add_group');
INSERT INTO "auth_permission" VALUES(8,'Can change group',3,'change_group');
INSERT INTO "auth_permission" VALUES(9,'Can delete group',3,'delete_group');
INSERT INTO "auth_permission" VALUES(10,'Can add user',4,'add_user');
INSERT INTO "auth_permission" VALUES(11,'Can change user',4,'change_user');
INSERT INTO "auth_permission" VALUES(12,'Can delete user',4,'delete_user');
INSERT INTO "auth_permission" VALUES(13,'Can add content type',5,'add_contenttype');
INSERT INTO "auth_permission" VALUES(14,'Can change content type',5,'change_contenttype');
INSERT INTO "auth_permission" VALUES(15,'Can delete content type',5,'delete_contenttype');
INSERT INTO "auth_permission" VALUES(16,'Can add session',6,'add_session');
INSERT INTO "auth_permission" VALUES(17,'Can change session',6,'change_session');
INSERT INTO "auth_permission" VALUES(18,'Can delete session',6,'delete_session');
INSERT INTO "auth_permission" VALUES(19,'Can add news',7,'add_news');
INSERT INTO "auth_permission" VALUES(20,'Can change news',7,'change_news');
INSERT INTO "auth_permission" VALUES(21,'Can delete news',7,'delete_news');
INSERT INTO "auth_permission" VALUES(22,'Can add story',8,'add_story');
INSERT INTO "auth_permission" VALUES(23,'Can change story',8,'change_story');
INSERT INTO "auth_permission" VALUES(24,'Can delete story',8,'delete_story');
INSERT INTO "auth_permission" VALUES(25,'Can add 基本信息',9,'add_basicinfo');
INSERT INTO "auth_permission" VALUES(26,'Can change 基本信息',9,'change_basicinfo');
INSERT INTO "auth_permission" VALUES(27,'Can delete 基本信息',9,'delete_basicinfo');
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"), UNIQUE ("group_id", "permission_id"));
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NOT NULL, "is_superuser" bool NOT NULL, "username" varchar(30) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(75) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL);
INSERT INTO "auth_user" VALUES(1,'pbkdf2_sha256$15000$rkP5z0Rme82u$ltf6I/DwLU7ZZhfOYag/aKpo734Ym+lwEzy+NzTbNdg=','2015-07-28 14:38:22.438000',1,'admin','','','root@a.com',1,1,'2015-07-28 01:13:06.182000');
INSERT INTO "auth_user" VALUES(2,'pbkdf2_sha256$15000$f80F1fVSijVo$OBnvTA+JT+QbuDyfu/E5/t+9KA+LJNiJBMAPa+q6CsE=','2015-07-28 09:07:02.398000',0,'yaolin','姚','琳','yaolin@daishu360.com',1,1,'2015-07-28 09:03:00');
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), UNIQUE ("user_id", "group_id"));
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"), UNIQUE ("user_id", "permission_id"));
INSERT INTO "auth_user_user_permissions" VALUES(5,2,19);
INSERT INTO "auth_user_user_permissions" VALUES(6,2,20);
INSERT INTO "auth_user_user_permissions" VALUES(7,2,22);
INSERT INTO "auth_user_user_permissions" VALUES(8,2,23);
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
INSERT INTO "django_admin_log" VALUES(1,'2015-07-28 01:14:50.093000','1','新闻标题1',1,'',7,1);
INSERT INTO "django_admin_log" VALUES(2,'2015-07-28 01:16:26.456000','1','东营贷',1,'',8,1);
INSERT INTO "django_admin_log" VALUES(3,'2015-07-28 01:50:03.964000','2','fdsfdsafsafsaaaaaaaaaaaaaaaaaa',1,'',8,1);
INSERT INTO "django_admin_log" VALUES(4,'2015-07-28 01:51:56.405000','3','第一个标题',1,'',8,1);
INSERT INTO "django_admin_log" VALUES(5,'2015-07-28 01:53:23.847000','4','fsfs',1,'',8,1);
INSERT INTO "django_admin_log" VALUES(6,'2015-07-28 01:55:28.120000','5','第二个标题',1,'',8,1);
INSERT INTO "django_admin_log" VALUES(7,'2015-07-28 02:05:39.543000','6','第一个标题',1,'',8,1);
INSERT INTO "django_admin_log" VALUES(8,'2015-07-28 02:52:46.367000','7','fdsfdsa ',1,'',8,1);
INSERT INTO "django_admin_log" VALUES(9,'2015-07-28 03:39:56.003000','2','我们的系统很强大',1,'',7,1);
INSERT INTO "django_admin_log" VALUES(10,'2015-07-28 04:33:21.491000','7','fdsfdsa ',3,'',8,1);
INSERT INTO "django_admin_log" VALUES(11,'2015-07-28 04:33:21.587000','6','第一个标题',3,'',8,1);
INSERT INTO "django_admin_log" VALUES(12,'2015-07-28 04:33:21.680000','5','第二个标题',3,'',8,1);
INSERT INTO "django_admin_log" VALUES(13,'2015-07-28 04:33:21.764000','4','fsfs',3,'',8,1);
INSERT INTO "django_admin_log" VALUES(14,'2015-07-28 04:33:21.855000','3','第一个标题',3,'',8,1);
INSERT INTO "django_admin_log" VALUES(15,'2015-07-28 04:33:21.955000','2','fdsfdsafsafsaaaaaaaaaaaaaaaaaa',3,'',8,1);
INSERT INTO "django_admin_log" VALUES(16,'2015-07-28 04:33:22.056000','1','东营贷',3,'',8,1);
INSERT INTO "django_admin_log" VALUES(17,'2015-07-28 04:35:56.557000','8','东营贷',1,'',8,1);
INSERT INTO "django_admin_log" VALUES(18,'2015-07-28 08:48:55.141000','9','fdsafdsafdsafdsa',1,'',8,1);
INSERT INTO "django_admin_log" VALUES(19,'2015-07-28 08:57:37.688000','3','111',1,'',7,1);
INSERT INTO "django_admin_log" VALUES(20,'2015-07-28 09:03:56.492000','2','yaolin',1,'',4,1);
INSERT INTO "django_admin_log" VALUES(21,'2015-07-28 09:05:17.838000','2','yaolin',2,'已修改 first_name，last_name，email，is_staff 和 user_permissions 。',4,1);
INSERT INTO "django_admin_log" VALUES(22,'2015-07-28 09:06:48.647000','2','yaolin',2,'已修改 user_permissions 。',4,1);
INSERT INTO "django_admin_log" VALUES(23,'2015-07-28 10:26:46.609000','1','BasicInfo object',1,'',9,1);
INSERT INTO "django_admin_log" VALUES(24,'2015-07-28 11:00:03.999000','1','BasicInfo object',2,'已修改 company_name 。',9,1);
CREATE TABLE "daishu_news" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(30) NOT NULL, "author" varchar(20) NOT NULL, "content" text NOT NULL, "pub_date" datetime NOT NULL, "update_time" datetime NULL, "types" integer NOT NULL);
INSERT INTO "daishu_news" VALUES(1,'新闻标题1','张晓东','呵呵呵呵呵呵','2015-07-28 01:14:50.092000','2015-07-28 01:14:50.092000',3);
INSERT INTO "daishu_news" VALUES(2,'我们的系统很强大','袋鼠','我们的系统很强大我们的系统很强大我们的系统很强大我们的系统很强大我们的系统很强大我们的系统很强大','2015-07-28 03:39:55.965000','2015-07-28 03:39:55.965000',2);
INSERT INTO "daishu_news" VALUES(3,'111','11','11111111','2015-07-28 08:57:37.687000','2015-07-28 08:57:37.687000',3);
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO "django_session" VALUES('cgr8m2e9p6xmpnohmou5hn7830x9hjjw','ZTk3MGMyMGVmNDk5MjY5YWVhM2VjMTc3MWUwMDM0NWZhN2NjMDU2YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyYWMyODU2YmZjNjhhYmZjNzY1ZTQ2ZjNhZTNkZTU0ZWYxNmJkYzgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-08-11 01:55:11.673000');
INSERT INTO "django_session" VALUES('wutkh6cm8kfk4pkuniqpq9v54p6tp9xz','ZTk3MGMyMGVmNDk5MjY5YWVhM2VjMTc3MWUwMDM0NWZhN2NjMDU2YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyYWMyODU2YmZjNjhhYmZjNzY1ZTQ2ZjNhZTNkZTU0ZWYxNmJkYzgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-08-11 08:56:42.860000');
INSERT INTO "django_session" VALUES('rkh5pmo3yhtkdk7qt9pn909kapir5ms4','ZTk3MGMyMGVmNDk5MjY5YWVhM2VjMTc3MWUwMDM0NWZhN2NjMDU2YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyYWMyODU2YmZjNjhhYmZjNzY1ZTQ2ZjNhZTNkZTU0ZWYxNmJkYzgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-08-11 09:10:02.005000');
INSERT INTO "django_session" VALUES('287oprlp33yy6fs00t1gcvitxixtkcf2','ZTk3MGMyMGVmNDk5MjY5YWVhM2VjMTc3MWUwMDM0NWZhN2NjMDU2YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyYWMyODU2YmZjNjhhYmZjNzY1ZTQ2ZjNhZTNkZTU0ZWYxNmJkYzgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-08-11 14:38:22.613000');
CREATE TABLE "daishu_basicinfo" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "company_name" varchar(30) NOT NULL, "logo" varchar(100) NOT NULL, "tel" varchar(13) NOT NULL, "qq" varchar(13) NOT NULL, "website_url" varchar(200) NOT NULL, "email" varchar(75) NOT NULL, "website_name" varchar(30) NOT NULL, "address" text NOT NULL, "copyright" text NOT NULL, "content" text NOT NULL);
INSERT INTO "daishu_basicinfo" VALUES(1,'北京普惠添翼网络科技有限公司','temp/logo.png','010-53677696','559456456','http://www.daishu365.com/','daishu@daishu.com','袋鼠网','北京市朝阳区劲松南磨房路37号华腾北塘1505','©2015 贷鼠网 All rights reserved','贷鼠网是由北京普惠添翼网络科技有限公司筹建的经官方权威认证、工信部备案的P2P网站平台，它为借贷双方搭建了一个公开、公平、安全、高效的网上资金交易平台。借贷双方以招标、投标的方式在平台上自由交易，资金流转通过第三方支付完成。平台对资金借出方（理财人、投资人）给予投资安全保障，同时对资金借入方（贷款人、借款人）进行严格的贷前信用评估，贷中、贷后监督还款管理。
    贷鼠网是国内首批网络信用借贷平台之一，主要为小微私营企业、个体工商户、工薪阶层、农民及大学生等提供无抵押、无担保的小额信用贷款，以满足经营创业需求，也可用于部分消费需要，同时为大家手中的闲钱提供了一个无风险的投资理财渠道。
一、贷款优势 
贷鼠网作为一种民间借贷新模式P2P（个人对个人）网络借贷交易平台，它是互联网应用的广泛普及和货币数字化迅速发展的产物。这种模式最早于2005年在英国出现，由于它使借贷双方的资金交易方式灵活方便、快捷高效，推出后得到广泛发展，迅速在其它国家得以推广。自2007年进入中国以来，发展速度更是惊人，至今短短几年时间里，全国已有上百家交易平台，年交易额已过百亿。这种模式的发展速度之所以如此之快，动力源自其三重社会意义：
1.  满足了中国个人融资市场的需要
目前，中国的个人融资渠道有两种：银行贷款和传统民间借贷。
1) 银行贷款
由于我国银行业目前受管理体制所限以及信贷运营的高成本原因，面向个人和小微私营业主的贷款设置的门槛很高，并且都需要抵押、联保、商会担保或国家公职人员担保等，因此贷款很难。而P2P网络信贷无需抵押和担保，而且速度快、方式灵活。
2) 传统民间借贷
传统民间借贷又被划分为三部分：亲朋好友互借、传统借贷中介和地下钱庄。由于中国的传统文化所致，亲朋好友间由于碍于面子，不方便办理规范借贷手续、索要满意的利息，从而使出借人不放心也不情愿放款。通过传统借贷中介借款都需要抵押，有很大局限性。地下钱庄可以不需抵押或担保，但利息极高（远远超过国家规定），月息一毛以上并不稀奇，正规经营是很难承受的，而P2P网络借贷不需抵押和担保，利率适中，手续规范，阳光透明。
2. 提高了社会闲散资金利用率
P2P网络借贷模式把社会上的零星闲置资金聚集起来，借给有资金需求的人，出借人在得到理想收益回报的同时，帮助了他人，从而加速了社会闲散资金的周转和充分利用，提高了社会效益。
3. 促进了中国个人信用体系的建设
在中国，个人信用体系建设很不完善，而P2P信贷平台是以个人信用评估为基础的信用贷款，个人信用状况直接决定了借款的难易程度，这样就有助于人们积极培育自己的信用资源，从而推动了整个社会个人信用体系的建设进程。');
CREATE TABLE "daishu_story" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "description" varchar(30) NOT NULL, "content" text NOT NULL, "onlinetime" datetime NOT NULL, "url" varchar(200) NOT NULL, "img" varchar(100) NOT NULL, "logo" varchar(100) NOT NULL, "title" varchar(30) NOT NULL);
INSERT INTO "daishu_story" VALUES(8,'东营吉诺投资咨询有限公司',' 吉诺东营贷是经工信部备案、官方权威认证的P2P互联网金融平台，它为借贷双方搭建了一个公开、公平、安全、高效的互联网金融服务。借贷双方以招标、投标的方式在平台 上自由交易，平台资金由第三方支付托管。平台对资金借出方给予投资安全保障，同时对借款人进行严格的贷前信用评估，贷中、贷后监督还款管理。','2015-07-28 04:35:00','http://dongyingdai.cn/','temp/dyd_quFfk4p.png','temp/20150625181417.png','东营贷');
INSERT INTO "daishu_story" VALUES(9,'fdsafdsafdsa','fdssa','2015-07-28 08:48:00','http://www.baidu.com/','temp/20150625181417_hsHBuZ7.png','temp/dsw.png','fdsafdsafdsafdsa');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('django_content_type',9);
INSERT INTO "sqlite_sequence" VALUES('django_migrations',7);
INSERT INTO "sqlite_sequence" VALUES('daishu_news',3);
INSERT INTO "sqlite_sequence" VALUES('auth_permission',27);
INSERT INTO "sqlite_sequence" VALUES('auth_user',2);
INSERT INTO "sqlite_sequence" VALUES('django_admin_log',24);
INSERT INTO "sqlite_sequence" VALUES('auth_user_user_permissions',8);
INSERT INTO "sqlite_sequence" VALUES('daishu_story',9);
INSERT INTO "sqlite_sequence" VALUES('daishu_basicinfo',1);
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" ("permission_id");
CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" ("group_id");
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" ("user_id");
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");
COMMIT;
