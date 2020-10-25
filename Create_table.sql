create database banhang;
use banhang;
CREATE TABLE role(
  id bigint NOT NULL PRIMARY KEY auto_increment,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(255) NOT NULL,
  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE sanpham(
  id bigint NOT NULL PRIMARY KEY auto_increment,
  code VARCHAR(6) NOT NULL,
   name VARCHAR(255)  NULL,
   size VARCHAR(255)  NULL,
   image VARCHAR(255)  NULL,
	mainprice int null,
    currentprice int null,
    amount int  null,
  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE khachhang(
  id bigint NOT NULL PRIMARY KEY auto_increment,
  code VARCHAR(6) NOT NULL,
   name VARCHAR(255)  NULL,
	phone char(10)  null,
	status int not null,
    point int null,
  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE nhanvien(
  id bigint NOT NULL PRIMARY KEY auto_increment,
  code VARCHAR(6) NOT NULL,
   name VARCHAR(255)  NULL,
	phone char(10)  null,
	status int not null,
    idcard char(12) null,
  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE lichlamtuan(
  code_nhanvien varchar(6) not null,
	thu2 varchar(12) null,
    thu3 varchar(12) null,
    thu4 varchar(12) null,thu5 varchar(12) null,thu6 varchar(12) null,thu7 varchar(12) null,CN varchar(12) null
);
CREATE TABLE lichdangkytuan(
  code_nhanvien varchar(6) not null,
	thu2 varchar(12) null,
    thu3 varchar(12) null,
    thu4 varchar(12) null,thu5 varchar(12) null,thu6 varchar(12) null,thu7 varchar(12) null,CN varchar(12) null
);
CREATE TABLE giolamtheoca(
  code_nhanvien varchar(6) not null,
	ngay timestamp null,
    ca int null,
    giolam int null,
    luong1h int null
);
CREATE TABLE truluong(
  code_nhanvien varchar(6) not null,
	ngay timestamp null,
    ca int null,
    luongbitru int null,
    note text null
);
CREATE TABLE chamcong(
  code_nhanvien varchar(6) not null,
	thang int  null,
    nam int null,
    luongnhanduoc int null
);
CREATE TABLE hoadon(
  id bigint NOT NULL PRIMARY KEY auto_increment,
  code_hoadon varchar(6) not null,
	code_khachhang varchar(6) not  null,
    code_nhanvien varchar(6) not null,

    tongtien int null,
    code_khuyenmai varchar(6),
    ngay timestamp null,
        createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE chitiethoadon(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	code_hoadon varchar(6) not null,
	code_sanpham varchar(6) not  null,
    soluong int null,
    giasanpham int null
);
CREATE TABLE chitietkhuyenmaitheohoadon(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	code_hoadon varchar(6) not null,
	code_sanpham varchar(6) not  null,
    soluong int null,
    giasanpham int null
);
CREATE TABLE khuyenmai(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	code_khuyenmai varchar(6) not null,
	ngaybatdau timestamp null,
    ngayketthuc timestamp null
);
CREATE TABLE chitietkhuyenmai(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	code_khuyenmai varchar(6) not null,
	code_sanpham varchar(6) not  null,
    soluong int null,
    giasanpham int null
);
CREATE TABLE dieukienkhuyenmai(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	code_khuyenmai varchar(6) not null,
	code_sanpham varchar(6) not  null,
    soluong int null,
    giasanpham int null
);
CREATE TABLE taikhoan(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	username varchar(255) not null,
    password varchar(6) not null,
	code_owner varchar(6) not  null,
    code_role varchar(6) not null,
	  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
  
);
CREATE TABLE nhacungcap(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	code_nhacungcap varchar(6) not null,
	name varchar(255) not null,
	address varchar(255) null,
   
	  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE nccsanpham(
	code_nhacungcap varchar(6) not null,
    code_sanpham varchar(6) not null
  
);
CREATE TABLE comment(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	code_sanpham varchar(6) not  null,
    code_khachhang varchar(6) not null,
    danhgia int null,
    content text null,
	  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
  
);
CREATE TABLE hoadonnhap(
  id bigint NOT NULL PRIMARY KEY auto_increment,
  code_hoadonnhap varchar(6) not null,
	code_nhacungcap varchar(6) not  null,
    code_nhanvien varchar(6) not null,

    tongtien int null,
    ngay timestamp null,
        createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE chitiethoadonnhap(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	code_hoadonnhap varchar(6) not null,
	code_sanpham varchar(6) not  null,
    soluong int null,
    giasanpham int null
);