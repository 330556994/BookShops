CREATE SEQUENCE seq_books_id;
CREATE SEQUENCE seq_publishers_id;
CREATE SEQUENCE seq_categories_id;
CREATE SEQUENCE seq_orders_id;
CREATE SEQUENCE seq_orderbook_id;   --订单详情序列
CREATE SEQUENCE seq_users_id;
CREATE SEQUENCE seq_userroles_id;   --会员等级序列
CREATE SEQUENCE seq_sysman_id;      --管理员表序列

--创建出版社表
CREATE TABLE tb_Publishers(
	Id INT PRIMARY KEY,
	Name VARCHAR2(200) NOT NULL
	);

--创建图书分类表
CREATE TABLE tb_Categories(
	Id INT PRIMARY KEY,
	Name VARCHAR2(200) NOT NULL,
	SortNum int NULL,
	Pid int NULL
	);

--创建图书表
CREATE TABLE tb_Books(
  Id INT PRIMARY KEY,
  Title VARCHAR2(200) NOT NULL,
  Author VARCHAR2(200) NOT NULL,
  PublisherId int NOT NULL,
  PublishDate DATE NOT NULL,
  ISBN VARCHAR2(50) NOT NULL,
  MarketPrice NUMBER(5,2) NULL,
  UnitPrice NUMBER(5,2) NOT NULL,
  ContentDescription VARCHAR2(1000) NULL,
  TOC VARCHAR2(1000) NULL,
  CategoryId int NOT NULL,
  Clicks int NOT NULL
	);


--为图书表添加外键约束  分别是 外键 PublisherId 和 CategoryId
ALTER TABLE tb_Books ADD CONSTRAINTS fk_pblisherid FOREIGN KEY(PublisherId) REFERENCES tb_Publishers(ID);
ALTER TABLE tb_Books ADD CONSTRAINTS fk_categoryid FOREIGN KEY(CategoryId) REFERENCES tb_Categories(ID);

--创建会员等级表
CREATE TABLE tb_UserRoles(
	Id int PRIMARY KEY,
	Name VARCHAR2(50) NOT NULL,
	minScore int NULL,
	maxScore int NULL
	);

--创建会员表
CREATE TABLE tb_Users(
	Id int PRIMARY KEY,
	LoginId VARCHAR2(50) NOT NULL,
	LoginPwd VARCHAR2(50) NOT NULL,
	Name VARCHAR2(50) NULL,
	Address VARCHAR2(200) NULL,
	Phone VARCHAR2(100) NULL,
	Mail VARCHAR2(100) NOT NULL,
	Birthday DATE NULL,
	UserRoleId int NOT NULL,
	RegisterIp VARCHAR2(50) NULL,
	RegisterTime DATE NULL,
	scoreTotal int NULL,
	scoreCurrent int NULL,
	HeadImg VARCHAR2(50) NULL
	);

--为会员表添加外键约束   fK_userroleid
ALTER TABLE tb_users ADD CONSTRAINT fk_userroleid FOREIGN KEY(UserRoleId) REFERENCES tb_UserRoles(ID);

--创建订单表
CREATE TABLE tb_Orders(
  Id int PRIMARY KEY,
  OrderDate DATE NOT NULL,
  UserId int NOT NULL,
  TotalPrice NUMBER(5,2) NOT NULL,
	flag int NULL,
	personame VARCHAR2(50) NULL,
	phone VARCHAR2(50) NULL,
	address VARCHAR2(50) NULL,
	sendCash NUMBER(5,2) NULL,
	userCancelReason VARCHAR2(2000) NULL,
	OrderRemark VARCHAR2(2000) NULL
	);

--为订单添加外键约束  fk_userid
ALTER TABLE tb_Orders ADD CONSTRAINTS fk_userid FOREIGN KEY(UserId) REFERENCES tb_Users(ID);

--创建订单详情表
CREATE TABLE tb_OrderBook(
	Id int PRIMARY KEY,
	OrderID int NOT NULL,
	BookID int NOT NULL,
	Quantity int NOT NULL,
	UnitPrice NUMBER(5,2) NOT NULL
	);

--为订单详情添加外键约束  分别是  fk_orderid  和  fK_bookid
ALTER TABLE tb_OrderBook ADD CONSTRAINTS fk_orderid FOREIGN KEY(orderid) REFERENCES tb_Orders(ID);
ALTER TABLE tb_OrderBook ADD CONSTRAINTS fk_bookid FOREIGN KEY(bookid) REFERENCES tb_books(ID);

--创建系统管理员表
CREATE TABLE tb_sysman(
	id int PRIMARY KEY,
	name VARCHAR2(50) NOT NULL,
	pwd VARCHAR2(50) NOT NULL
	);

--出版社表插入数据
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '21世纪出版社kkk');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, 'AAAA');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, 'AABBCCDDEE');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, 'abcde');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, 'ACCPACCP出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, 'BBBB');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北方');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京北京北京');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京航空航天大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京航天航空大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京科海出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京科海电子出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京科海集团公司');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京理工大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京师范大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京伟地电子出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京希望电子出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '北京邮电学院出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '兵器工业出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '大连理工大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '电子工业出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '东北财经大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '东方出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '东南大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '复旦大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '高等教育出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '贵州民族出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '国防工业出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '海洋出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '航空工业出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '华东理工大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '华东师范大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '华南理工大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '华夏出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '华中科技大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '化学工业出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '黄河水利出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '机械工业出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '九州出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '科学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '科学普及出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '辽宁科学技术出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '内蒙古大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '南开大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '农村读物出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '浦东电子');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '青慧出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '清华大学');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '清华大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '清华大学出版社；北京交通大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '人民大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '人民交通出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '人民文学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '人民邮电出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '三秦出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '陕西科学技术出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '上海北大青鸟');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '上海交通大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '上海科学普及出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '世界图书出版公司');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '水利电力出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '水利水电出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '天津人民出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '未来出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '武汉理工大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '西安电子科技大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '西安交通大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '西北工业大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '西南师范大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '希望电脑');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '新时代出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '冶金工业出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '浙江大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '中国电力出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '中国建筑工业出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '中国青年出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '中国时代经济出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '中国水利水电出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '中国铁道出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '中国宇航出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '中华工商联合出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '中山大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '中央广播电视大学出版社');
INSERT INTO tb_Publishers (Id, Name) VALUES (seq_publishers_id.nextval, '重庆大学出版社');



--为图书分类表插入数据
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, '11223344', 9);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'newnew', 9);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'J2EE', 1000);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'CSS Div', 90);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'C C++ VC VC++', 20);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'Basic VB VB Script', 6000);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, '计算机等级考试', 40);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, '计算机理论', 100);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'Java Script Java', 120);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'HTML XML', 110);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, '.NET', 20);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'Perl', 50);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, '网站开发', 15);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, '其他', 180);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'ASP.ET', 160);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'JSP', 170);
INSERT INTO tb_Categories (Id, Name, SortNum) VALUES (seq_categories_id.nextval, 'WIDOWS', 220);

--为会员等级表添加数据
INSERT INTO tb_UserRoles (Id, Name, minScore, maxScore) VALUES (1, '白银会员', 0, 2000);
INSERT INTO tb_UserRoles (Id, Name, minScore, maxScore) VALUES (2, '黄金会员 ', 2001, 10000);
INSERT INTO tb_UserRoles (Id, Name, minScore, maxScore) VALUES (3, '钻石会员', 10001, 50000);
INSERT INTO tb_UserRoles (Id, Name, minScore, maxScore) VALUES (4, '金钻会员', 50001, 1000000);
SELECT * FROM tb_userRoles;

--为会员表插入数据
INSERT INTO tb_Users VALUES(seq_users_id.nextval,'gongtao','1995','龚涛','安徽巢湖','13262629465','330556994@qq.com',to_date('1995-06-04','yyyy-mm-dd'),1,'127.0.0.1',SYSDATE,100,100,'gongtao');

--图书表插入数据
INSERT INTO tb_Books (ID, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, TOC, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Effective C# 中文版改善C#程序的50种方法', '（美）瓦格纳  著，李建忠  译', 6, SYSDATE, '97871151518', 57.6471, 49.0000, 'd','d', 2, 208);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'abcde', '（美）克尼汉，（美）里奇 著，徐宝文，李志 译', 6, SYSDATE, '9787111128069', 35.2941, 30.0000, '', 6, 5);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, '框架设计（第2版）：CLR Via C#', '（美）瑞奇特（Richter,J.）  著，周靖，张杰良  译', 6, SYSDATE, '9787302140160', 80.0000, 68.0000, '', 2, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Expert C# 2005 Business Objects中文版（第二版）', '（美）霍特卡  著，王鑫  译', 6, SYSDATE, '978712101181', 93.124, 79.8000, '', 2, 1);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Visual C# 2005从入门到精通', '（英）夏普  著，周靖  译', 6, SYSDATE, '9787302131007', 57.6471, 49.0000, '', 2, 2173);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Beginning C# Objects中文版——概念到代码', '（美）芭可，（美）帕尔默  著，韩磊，戴飞  译', 6, SYSDATE, '9787121024931', 80.0000, 68.0000, '', 2, 21);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, '数据结构题集(C语言版)', '严蔚敏 吴伟民 编著', 6, SYSDATE, '9787302033141', 18.8235, 16.0000, '', 4, 3);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C#设计模式——开发大师系列', '（美）麦斯科 著，颜炯 译', 6,SYSDATE, '9787508334929', 49.4118, 42.0000, '', 5, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, '超越C++标准库Boost库导论', '（美）卡尔森（Kalsson，B.）　著，张杰良　译', 6, SYSDATE, '9787302149118', 47.0000, 39.8000, '', 6, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, '数据结构与算法分析C++描述（第三版）', '（美）维斯  著，张怀勇  等译', 6, SYSDATE, '978711513921', 58.0000, 49.0000, '', 7, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C++编程思想（第2版）第1卷：标准C++导引（附光盘）', '（美）埃克尔 著，刘宗田等 译', 6,SYSDATE, '9787111108078', 99.0000, 59.0000, '', 8, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C程序设计语言（第2版·新版）习题解答', '美汤朵，美吉米拜尔 著，杨涛等 译', 6, SYSDATE, '9787111129431', 17.6471, 100.0000, '', 9, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C++编程规范:101条规则、准则与最佳实践（图灵程序设计丛书）', '萨特，亚历山德雷斯库  著，刘基诚  译', 6, SYSDATE, '9787115142054', 99.0000, 35.0000, '', 10, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C++设计新思维(泛型编程与设计模式之应用)', '美.Andrei Alexandrescu 著；候捷，於春景 译', 6, SYSDATE, '9787560929064', 70.3529, 59.8000, '', 4, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Visual C#2005程序开发与界面设计秘诀(附盘)', '章立民研究室  著', 6, SYSDATE, '9787111199472', 91.7647, 78.0000, '', 7, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, '单元测试之道C#版：使用Unit——程序员修炼三部曲第二部', '（美）托马斯  等著，陈伟桩，陶文  译', 6, SYSDATE, '9787121006661', 29.4118, 25.0000, '', 5, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C++ Primer中文版（第三版）', '美.利普曼 加.劳乔 著 潘爱民 张丽 译', 6, SYSDATE, '9787508309897', 150.512, 128.0000, '', 7, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Essential C++ 中文版', '美Stanley B. Lippman著侯捷译', 6, SYSDATE, '9787560925110', 46.8235, 39.8000, '', 7, 3);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Visual C++6.0 程序设计从入门到精通（附CD-ROM光盘一张）', '求是科技  编著', 6, SYSDATE, '9787115141378', 45.124, 39.0000, '', 3, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Effective C++ Third Edition ：改善程序技术与设计思维的55个有效做法（英文版）', '（美）玛雅尔斯（Meyers,S.)  著', 6, SYSDATE, '7121008270', 52.9412, 45.0000, '', 7, 2);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C程序设计（第二版）', '谭浩强', 6, SYSDATE, '978730201061', 30.512, 26.0000, '', 3, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Visual C++网络通信编程实用案例精选：第二版（附光盘）', '曹衍龙，刘海英  编著', 6, SYSDATE, '9787115147042', 65.124, 56.0000, '', 5, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C++网络编程，卷1——运用ACE和模式消除复杂性', '（美）施密特，（美）霍斯顿  著，於春景  译', 6, SYSDATE, '9787121041518', 41.1765, 35.0000, '', 5, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C++标准程序库自修教程与参考手册', '德.icolai M.Josuttis 著，侯捷，孟岩 译', 6, SYSDATE, '9787560927824', 127.051, 108.0000, '', 3, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Visual C#2005编程技巧大全', '罗斌 等编', 6, SYSDATE, '9787508442556', 115.2941, 98.0000, '', 7, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Visual C#2005技术内幕', '（美）马歇尔  著，许华杰，刘光惠  译', 6, SYSDATE, '9787302144175', 69.4118, 59.0000, '', 8, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C语言解惑', '（美）福伊尔  著，杨涛  等译', 6, SYSDATE, '9787115159731', 29.4118, 25.0000, '', 6, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Visual C#2005入门经典', '（美）福克塞尔　著，陈秋萍　译', 6, SYSDATE, '9787115155504', 45.124, 39.0000, '', 3, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Visral C++程序开发范例宝典（附光盘）', '明日科技　编著', 6, SYSDATE, '9787115159700', 104.7059, 89.0000, '', 5, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'Visual C#2005文件IO与数据存取秘诀（附赠DVD）', '章立民研究室  著', 6, SYSDATE, '9787111199724', 92.9412, 79.0000, '', 8, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C#2005数据库编程经典教程', '（美）沃顿（Karli watton）  著，陈秋萍  译', 6, SYSDATE, '9787115158949', 68.2353, 58.0000, '', 3, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C#数据库系统开发案例精选(附光盘)', '明日科技　编著', 6, SYSDATE, '9787115159243', 57.6471, 49.0000, '', 7, 0);
INSERT INTO tb_Books (Id, Title, Author, PublisherId, PublishDate, ISBN, MarketPrice, UnitPrice, ContentDescription, CategoryId, Clicks) VALUES (seq_books_id.nextval, 'C语言编程：一本全面的C语言入门教程（第三版）', '（美）科汉　著，张小潘　译', 6, SYSDATE, '9787121007354', 69.4118, 59.0000, '', 8, 0);

COMMIT;

