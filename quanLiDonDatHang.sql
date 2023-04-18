create database quanLiDonDatHang;
use quanLiDonDatHang;
create table donvikhach(
madv int auto_increment primary key,
tendv varchar(50) not null,
diachi varchar(100) not null,
dienthoai varchar(12) not null
);
create table nguoidat(
mand int auto_increment primary key,
hotennd varchar(20) not null
);

create table nguoinhan(
mann int auto_increment primary key,
hotennn varchar(20) not null
);
create table thuoc1(
madv int,
foreign key(madv) references donvikhach(madv),
mand int,
foreign key(mand) references nguoidat(mand)
);
create table thuoc2(
madv int,
foreign key(madv) references donvikhach(madv),
mann int,
foreign key(mann) references nguoinhan(mann)
);
create table hang(
mahang int auto_increment primary key,
tenhang varchar(50) not null,
donvitinh varchar(10) not null,
motahang varchar(255) not null
);
create table dat(
mahang int,
foreign key(mahang) references hang(mahang),
mand int,
foreign key(mand) references nguoidat(mand),
sodh int auto_increment primary key,
ngaydat datetime,
soluong int check(soluong>=0)
);
create table noigiao(
masoddg int auto_increment primary key,
tennoigiao varchar(255) not null
);
create table nguoigiao(
masonguoigiao int auto_increment primary key,
hotenng varchar(20) not null
);
create table giao(
mann int,
foreign key(mann) references nguoinhan(mann),
mahang int,
foreign key(mahang) references hang(mahang),
masoddg int,
foreign key(masoddg) references noigiao(masoddg),
masonguoigiao int,
foreign key(masonguoigiao) references nguoigiao(masonguoigiao),
sopg int auto_increment primary key,
ngaygiao datetime,
dongia float,
soluong int 
);



