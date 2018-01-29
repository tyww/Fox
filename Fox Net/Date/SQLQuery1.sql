create database FoxNet
on
(
	name='FoxNet_m',
	fileName='F:\���������Ŀ\Fox Net\Fox Net\Date\FoxNet_m_mdf'
)
use FoxNet
go
create table [User]
(
	UserID			int identity(1,1)primary key,					--�û�ID
	UName			nvarchar(150) not null,							--�û�����
	LoginInfo       nvarchar(50) null,								--��½��Ϣ
	pwd             nvarchar(50)  null,									--����
	Gender			char(2) check(Gender in ('��','Ů')),			--�Ա�
	Nation			char(10) not null,								--����
	Phone			nvarchar(100) not null,							--��ϵ��ʽ
	Email			nvarchar(100) not null,							--����
	[Identity]		nvarchar(100) not null,							--���֤��
	[Address]		nvarchar(100),									--סַ
	LanguageID int not null foreign key(LanguageID) references [Language](LanguageID),----����    �ֶ�����  �Ƿ�Ϊ��   ��ʶ����У����������         ������ı������������ֶ�����
	LastLogDate     date	null,										--���һ�ε�½ʱ��
	[State]         int  check(State in ('0','1')),										--״̬
)
go
insert into [User] values('join','','','��','��','13286009010','1441799806@qq.com','450803199610115591','�㶫�麣����','2','','')
insert into [User] values('Ԭ��','','','��','��','13286009010','1441799806@qq.com','450803199010115679','����������','2','','')
insert into [User] values('������','','','Ů','��','13286110010','1441799806@qq.com','450803199510117785','�㶫�麣����','1','','')
insert into [User] values('�ԼѸ�','','','Ů','��','13286009239','1441799806@qq.com','450803199110115592','�㶫�麣����','2','','')
insert into [User] values('��һ��','','','Ů','׳','13286887410','1441799806@qq.com','45205311011559241X','�㶫�麣����','2','','')
insert into [User] values('����','','','Ů','��','13286009010','1441799806@qq.com','450803198910115592','�㶫��������','1','','')
insert into [User] values('����͢','','','��','��','13977681709','1441799806@qq.com','450803197810115564','�㶫ɽ���ൺ','2','','')
insert into [User] values('������','','','Ů','׳','13577659015','1441799806@qq.com','450803199610115592','�㶫�Ĵ��ɶ�','2','','')
insert into [User] values('֣����','','','Ů','��','15878603279','1441799806@qq.com','450803199110325453','�㶫�麣����','1','','')
insert into [User] values('ΤС��','','','��','��','15878602471','1441799806@qq.com','450803188445875559','�㶫��������','1','','')
insert into [User] values('��С��','','','Ů','��','13445008076','1441799806@qq.com','450803197810110085','�㶫��������','2','','')
insert into [User] values('����','','','��','��','13777592407','1441799806@qq.com','450803119210119965','�㶫��������','1','','')

go
create table Language
(
	LanguageID  int identity(1,1) primary key,
	species		nvarchar(100) not null,							--����
)
go
insert into Language values('��ͨ��')
insert into Language values('Ӣ��')
go
create table Notice--��ҵ
(
	NID				int identity(1,1) primary key,
	Name			nvarchar(256) not null,            --��ҵ����

	LoginInfo       int null,						--�˺���Ϣ
	Npwd			nvarchar(50) null,							--����

	Industry        nvarchar(150) not null,            --��ҵ
	Natur			nvarchar(200) not null,			   --��˾����
	District	    nvarchar(256) not null,			   --���ڵ�
	Number			int not null,                      --����
	Fund			int not null,                      --ע���ʽ�
	Establish		Datetime not null,                 --��������
	[Site]			nvarchar(256) not null,            --��ַ
	Dawk			int not null,                      --����
	Contact		    nvarchar(100) not null,            --��ϵ��
	Phone           nvarchar(20) not null,            --��ϵ�绰
	LastLogDate     date	null,										--���һ�ε�½ʱ��
	[NState]        int  check(NState in ('0','1')),								--״̬
)
go
insert into Notice values('�Ϸ�ITѧԺ','','','����','��ѧ����','�麣����','2000','1000000000','1998','�麣����','527601','Fox','13286009010','','')
insert into Notice values('���','','','����','��Ϣ����','�㶫��ɽ','2000','1000000000','1998','�㶫��ɽ','527601','Fox','15878603279','','')
insert into Notice values('�ɶ������˾','','','����','��Ϣ����','�Ĵ��ɶ�','2000','1000000000','1998','�Ĵ��ɶ�','527601','Fox','15878632703','','')
insert into Notice values('�����Զ�������','','','����','������','�㶫����','2000','1000000000','1998','�㶫����','527601','Fox','13977681709','','')
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')

---δִ��
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')
insert into Notice values('����','','','����','��Ϣ����','�㶫�麣','2000','1000000000','1998','�㶫�麣','527601','Fox','13485443059','','')
go
select * from Notice 
go
create table Post			--��λ
(
	PostID int identity(1,1) primary key,
	station nvarchar(200),													 --��λ
	[Description] nvarchar(256),											 --��λ����
	NID int foreign key (NID) references Notice(NID),						  ----��ҵ
	[PState]         int  check(PState in ('0','1')),						--״̬
)
go
create table Resume--����
(
	ResumeID int identity(1,1) primary key,
	Business nvarchar(100) not null,						---��ҵ
	[Function] nvarchar(200) not null,						---ְ��
	[Site] nvarchar(100) not null,							---�ص�
	Pay money not null,										---н��
	UserID int foreign key(UserID) references [User](UserID)
)
go
create table Record        ----��¼��
(
	Record int identity(1,1) primary key,
	[Time] date not null,												---��¼Ͷ��ʱ��
	ResumeID int foreign key(ResumeID) references [Resume](ResumeID),	----����
	NID int foreign key (NID) references Notice(NID)					----��ҵ
)
go
select * from [User]
select * from Record order by [Time]          --����

select U.UName,b.LanguageID,b.species from  [User] U join [Language] b on U.UserID= b.LanguageID--�������

select Gender,UName from[User] where Gender='��'    --����



select Gender from [User] group by Gender


select [User] Language from [User] where in(select * from Language)---�Ӳ�ѯ


exec sp_addumpdevice 'FoxNet','���ݵ�·��_1.dat'   ---������������
backup database pubs to ������              ---��ʼ����
RESTORE VERIFYONLY from disk='���ݱ���·��'---��鱸�ݼ�