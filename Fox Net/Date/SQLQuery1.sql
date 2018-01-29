create database FoxNet
on
(
	name='FoxNet_m',
	fileName='F:\桌面个人项目\Fox Net\Fox Net\Date\FoxNet_m_mdf'
)
use FoxNet
go
create table [User]
(
	UserID			int identity(1,1)primary key,					--用户ID
	UName			nvarchar(150) not null,							--用户名称
	LoginInfo       nvarchar(50) null,								--登陆信息
	pwd             nvarchar(50)  null,									--密码
	Gender			char(2) check(Gender in ('男','女')),			--性别
	Nation			char(10) not null,								--民族
	Phone			nvarchar(100) not null,							--联系方式
	Email			nvarchar(100) not null,							--邮箱
	[Identity]		nvarchar(100) not null,							--身份证号
	[Address]		nvarchar(100),									--住址
	LanguageID int not null foreign key(LanguageID) references [Language](LanguageID),----列名    字段类型  是否为空   标识外键列（外键列名）         关联表的表名（关联的字段名）
	LastLogDate     date	null,										--最后一次登陆时间
	[State]         int  check(State in ('0','1')),										--状态
)
go
insert into [User] values('join','','','男','汉','13286009010','1441799806@qq.com','450803199610115591','广东珠海香洲','2','','')
insert into [User] values('袁浩','','','男','汉','13286009010','1441799806@qq.com','450803199010115679','北京朝阳区','2','','')
insert into [User] values('张丽媛','','','女','汉','13286110010','1441799806@qq.com','450803199510117785','广东珠海斗门','1','','')
insert into [User] values('赵佳鸽','','','女','瑶','13286009239','1441799806@qq.com','450803199110115592','广东珠海南屏','2','','')
insert into [User] values('赵一曼','','','女','壮','13286887410','1441799806@qq.com','45205311011559241X','广东珠海南屏','2','','')
insert into [User] values('赵敏','','','女','瑶','13286009010','1441799806@qq.com','450803198910115592','广东河南嵩阳','1','','')
insert into [User] values('赵又廷','','','男','汉','13977681709','1441799806@qq.com','450803197810115564','广东山东青岛','2','','')
insert into [User] values('韩冬君','','','女','壮','13577659015','1441799806@qq.com','450803199610115592','广东四川成都','2','','')
insert into [User] values('郑爱美','','','女','汉','15878603279','1441799806@qq.com','450803199110325453','广东珠海斗门','1','','')
insert into [User] values('韦小宝','','','男','汉','15878602471','1441799806@qq.com','450803188445875559','广东北京朝阳','1','','')
insert into [User] values('宋小宝','','','女','汉','13445008076','1441799806@qq.com','450803197810110085','广东北京朝阳','2','','')
insert into [User] values('燕荀','','','男','汉','13777592407','1441799806@qq.com','450803119210119965','广东北京朝阳','1','','')

go
create table Language
(
	LanguageID  int identity(1,1) primary key,
	species		nvarchar(100) not null,							--种类
)
go
insert into Language values('普通话')
insert into Language values('英语')
go
create table Notice--企业
(
	NID				int identity(1,1) primary key,
	Name			nvarchar(256) not null,            --企业名字

	LoginInfo       int null,						--账号信息
	Npwd			nvarchar(50) null,							--密码

	Industry        nvarchar(150) not null,            --行业
	Natur			nvarchar(200) not null,			   --公司性质
	District	    nvarchar(256) not null,			   --所在地
	Number			int not null,                      --人数
	Fund			int not null,                      --注册资金
	Establish		Datetime not null,                 --成立日期
	[Site]			nvarchar(256) not null,            --地址
	Dawk			int not null,                      --邮政
	Contact		    nvarchar(100) not null,            --联系人
	Phone           nvarchar(20) not null,            --联系电话
	LastLogDate     date	null,										--最后一次登陆时间
	[NState]        int  check(NState in ('0','1')),								--状态
)
go
insert into Notice values('南方IT学院','','','教育','教学育人','珠海斗门','2000','1000000000','1998','珠海斗门','527601','Fox','13286009010','','')
insert into Notice values('锐点','','','技术','信息技术','广东中山','2000','1000000000','1998','广东中山','527601','Fox','15878603279','','')
insert into Notice values('成都外包公司','','','技术','信息技术','四川成都','2000','1000000000','1998','四川成都','527601','Fox','15878632703','','')
insert into Notice values('橙子自动化测试','','','技术','机器人','广东深圳','2000','1000000000','1998','广东深圳','527601','Fox','13977681709','','')
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')

---未执行
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')
insert into Notice values('飞企','','','技术','信息技术','广东珠海','2000','1000000000','1998','广东珠海','527601','Fox','13485443059','','')
go
select * from Notice 
go
create table Post			--岗位
(
	PostID int identity(1,1) primary key,
	station nvarchar(200),													 --岗位
	[Description] nvarchar(256),											 --岗位描述
	NID int foreign key (NID) references Notice(NID),						  ----企业
	[PState]         int  check(PState in ('0','1')),						--状态
)
go
create table Resume--简历
(
	ResumeID int identity(1,1) primary key,
	Business nvarchar(100) not null,						---行业
	[Function] nvarchar(200) not null,						---职能
	[Site] nvarchar(100) not null,							---地点
	Pay money not null,										---薪资
	UserID int foreign key(UserID) references [User](UserID)
)
go
create table Record        ----记录表
(
	Record int identity(1,1) primary key,
	[Time] date not null,												---记录投递时间
	ResumeID int foreign key(ResumeID) references [Resume](ResumeID),	----简历
	NID int foreign key (NID) references Notice(NID)					----企业
)
go
select * from [User]
select * from Record order by [Time]          --排序

select U.UName,b.LanguageID,b.species from  [User] U join [Language] b on U.UserID= b.LanguageID--多表连接

select Gender,UName from[User] where Gender='男'    --过滤



select Gender from [User] group by Gender


select [User] Language from [User] where in(select * from Language)---子查询


exec sp_addumpdevice 'FoxNet','数据的路径_1.dat'   ---创建备份数据
backup database pubs to 数据名              ---开始备份
RESTORE VERIFYONLY from disk='数据备份路径'---检查备份集