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
loaisanpham_id bigint null,
  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE loaisanpham(
	id bigint NOT NULL PRIMARY KEY auto_increment,
    code VARCHAR(255),
    name varchar(255)
);
CREATE TABLE khachhang(
  id bigint NOT NULL PRIMARY KEY auto_increment,
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
  nhanvien_id bigint not null PRIMARY KEY,
	thu2 varchar(12) null,
    thu3 varchar(12) null,
    thu4 varchar(12) null,thu5 varchar(12) null,thu6 varchar(12) null,thu7 varchar(12) null,CN varchar(12) null
);
CREATE TABLE lichdangkytuan(
  nhanvien_id bigint not null PRIMARY KEY,
	thu2 varchar(12) null,
    thu3 varchar(12) null,
    thu4 varchar(12) null,thu5 varchar(12) null,thu6 varchar(12) null,thu7 varchar(12) null,CN varchar(12) null
);
CREATE TABLE giolamtheoca(
id bigint NOT NULL PRIMARY KEY auto_increment,
  nhanvien_id bigint not null,
	ngay timestamp null,
    ca int null,
    giolam int null,
    luong1h int null
);
CREATE TABLE truluong(
id bigint NOT NULL PRIMARY KEY auto_increment,
  nhanvien_id bigint not null,
	ngay timestamp null,
    ca int null,
    luongbitru int null,
    note text null
);
CREATE TABLE chamcong(
id bigint NOT NULL PRIMARY KEY auto_increment,
  nhanvien_id bigint not null,
	thang int  null,
    nam int null,
    luongnhanduoc int null
);
CREATE TABLE hoadon(
  id bigint NOT NULL PRIMARY KEY auto_increment,
	khachhang_id bigint not  null,
    nhanvien_id bigint not null,
    tongtien int null,
    khuyenmai_id bigint,
    ngay timestamp null,
        createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE chitiethoadon(
	hoadon_id bigint not null,
	sanpham_id bigint not  null,
    soluong int null,
    giasanpham int null,
    PRIMARY KEY(hoadon_id, sanpham_id)
);
CREATE TABLE khuyenmai(
	id bigint NOT NULL PRIMARY KEY auto_increment,
    content text null,
	ngaybatdau timestamp null,
    ngayketthuc timestamp null
);
CREATE TABLE chitietkhuyenmai(
	khuyenmai_id bigint not null,
    loaikhuyenmai_code varchar(6) not null,
	sanpham_id bigint UNIQUE,
    soluong int null,
    giasanpham int null,
    PRIMARY KEY(khuyenmai_id, sanpham_id)
);
CREATE TABLE loaikhuyenmai(
	id bigint NOT NULL PRIMARY KEY auto_increment,
    code varchar(6),
    name varchar(6)
);
CREATE TABLE dieukienkhuyenmai(
	khuyenmai_id bigint not null,
    loaikhuyenmai_code varchar(6) not null,
	sanpham_id bigint UNIQUE,
    soluong int null,
    giasanpham int null,
    PRIMARY KEY(khuyenmai_id, sanpham_id)
);
CREATE TABLE taikhoannhanvien(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	username varchar(255) not null,
    password varchar(6) not null,
	nhanvien_id bigint not  null,
    role_code varchar(6) not null,
	  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE taikhoankhachhang(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	username varchar(255) not null,
    password varchar(6) not null,
	khachhang_id bigint not  null,
	  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE nhacungcap(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	name varchar(255) not null,
	address varchar(255) null,
	  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE nccsanpham(
	nhacungcap_id bigint not null,
    sanpham_id bigint not null,
    PRIMARY KEY(nhacungcap_id, sanpham_id)
);
CREATE TABLE comment(
	id bigint NOT NULL PRIMARY KEY auto_increment,
	sanpham_id bigint not null,
    khachhang_id bigint not null,
    danhgia int null,
    content text null,
	  createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
  
);
CREATE TABLE hoadonnhap(
  id bigint NOT NULL PRIMARY KEY auto_increment,
	nhacungcap_id bigint not null,
    nhanvien_id bigint not null,
    tongtien int null,
    ngay timestamp null,
        createddate TIMESTAMP NULL,
  modifieddate TIMESTAMP NULL,
  createdby VARCHAR(255) NULL,
  modifiedby VARCHAR(255) NULL
);
CREATE TABLE chitiethoadonnhap(
	hoadonnhap_id bigint not null,
	sanpham_id bigint not null,
    soluong int null,
    giasanpham int null,
    PRIMARY KEY(hoadonnhap_id,sanpham_id)
);
create table donhang(
	id bigint not null primary key auto_increment,
    nhanvien_id bigint not null,
    khachhang_id bigint not null,
    khuyenmai_id bigint null,
    tongtien int null,
    ngaylapdonhang timestamp not null,
    trangthai int null
);
create table chitietdonhang(
	donhang_id bigint not null,
    sanpham_id bigint not null,
    soluong int null,
    giatien int null,
    PRIMARY KEY(donhang_id,sanpham_id)
);
-- don hang
ALTER TABLE donhang ADD constraint fk_donhang_nhanvien foreign key (nhanvien_id) references nhanvien(id);
ALTER TABLE donhang ADD constraint fk_donhang_khachhang foreign key (khachhang_id) references khachhang(id);
ALTER TABLE chitietdonhang ADD constraint fk_chitietdonhang_donhang foreign key (donhang_id) references donhang(id);
ALTER TABLE chitietdonhang ADD constraint fk_chitietdonhang_sanpham foreign key (sanpham_id) references sanpham(id);
-- tạo khóa ngoại
-- role
-- sanpham
ALTER TABLE sanpham ADD CONSTRAINT fk_sanpham_loaisanpham FOREIGN KEY (loaisanpham_id) REFERENCES loaisanpham(id);
-- loaisanpham
-- khachhang
-- nhanvien
-- lichlamtuan
ALTER TABLE lichlamtuan ADD CONSTRAINT fk_lichlamtuan_nhanvien FOREIGN KEY (nhanvien_id) REFERENCES nhanvien(id);
-- lichdangkytuan
ALTER TABLE lichdangkytuan ADD CONSTRAINT fk_lichdangkytuan_nhanvien FOREIGN KEY (nhanvien_id) REFERENCES nhanvien(id);
-- truluong
ALTER TABLE truluong ADD CONSTRAINT fk_truluong_nhanvien FOREIGN KEY (nhanvien_id) REFERENCES nhanvien(id);
-- chamcong
ALTER TABLE chamcong ADD CONSTRAINT fk_chamcong_nhanvien FOREIGN KEY (nhanvien_id) REFERENCES nhanvien(id);
-- hoadon
ALTER TABLE hoadon ADD CONSTRAINT fk_hoadon_nhanvien FOREIGN KEY (nhanvien_id) REFERENCES nhanvien(id);
ALTER TABLE hoadon ADD CONSTRAINT fk_hoadon_khachhang FOREIGN KEY (khachhang_id) REFERENCES khachhang(id);
ALTER TABLE hoadon ADD CONSTRAINT fk_hoadon_khuyenmai FOREIGN KEY (khuyenmai_id) REFERENCES khuyenmai(id);
-- chitiethoadon
ALTER TABLE chitiethoadon ADD CONSTRAINT fk_chitiethoadon_hoadon FOREIGN KEY (hoadon_id) REFERENCES hoadon(id);
ALTER TABLE chitiethoadon ADD CONSTRAINT fk_chitiethoadon_sanpham FOREIGN KEY (sanpham_id) REFERENCES sanpham(id);
-- khuyenmai
-- chitietkhuyenmai
CREATE UNIQUE INDEX loaikhuyenmai_code
ON loaikhuyenmai (code);
ALTER TABLE chitietkhuyenmai ADD CONSTRAINT fk_chitietkhuyenmai_khuyenmai FOREIGN KEY (khuyenmai_id) REFERENCES khuyenmai(id);
ALTER TABLE chitietkhuyenmai ADD CONSTRAINT fk_chitietkhuyenmai_loaikhuyenmai FOREIGN KEY (loaikhuyenmai_code) REFERENCES loaikhuyenmai(code);
ALTER TABLE chitietkhuyenmai ADD CONSTRAINT fk_chitietkhuyenmai_sanpham FOREIGN KEY (sanpham_id) REFERENCES sanpham(id);
-- dieukienkhuyenmai
ALTER TABLE dieukienkhuyenmai ADD CONSTRAINT fk_dieukienkhuyenmai_khuyenmai FOREIGN KEY (khuyenmai_id) REFERENCES khuyenmai(id);
ALTER TABLE dieukienkhuyenmai ADD CONSTRAINT fk_dieukienkhuyenmai_loaikhuyenmai FOREIGN KEY (loaikhuyenmai_code) REFERENCES loaikhuyenmai(code);
ALTER TABLE dieukienkhuyenmai ADD CONSTRAINT fk_dieukienkhuyenmai_sanpham FOREIGN KEY (sanpham_id) REFERENCES sanpham(id);
-- taikhoannhanvien
CREATE UNIQUE INDEX role_code
ON role (code);
ALTER TABLE taikhoannhanvien ADD CONSTRAINT fk_taikhoannhanvien_nhanvien FOREIGN KEY (nhanvien_id) REFERENCES nhanvien(id);
ALTER TABLE taikhoannhanvien ADD CONSTRAINT fk_taikhoannhanvien_role FOREIGN KEY (role_code) REFERENCES role(code);
-- taikhoankhachhang
ALTER TABLE taikhoankhachhang ADD CONSTRAINT fk_taikhoankhachhang_khachhang FOREIGN KEY (khachhang_id) REFERENCES khachhang(id);
-- nhacungcap
-- nccsanpham
ALTER TABLE nccsanpham ADD CONSTRAINT fk_nccsanpham_sanpham FOREIGN KEY (sanpham_id) REFERENCES sanpham(id);
ALTER TABLE nccsanpham ADD CONSTRAINT fk_nccsanpham_nhacungcap FOREIGN KEY (nhacungcap_id) REFERENCES nhacungcap(id);
-- comment
ALTER TABLE comment ADD CONSTRAINT fk_comment_sanpham FOREIGN KEY (sanpham_id) REFERENCES sanpham(id);
ALTER TABLE comment ADD CONSTRAINT fk_comment_khachhang FOREIGN KEY (khachhang_id) REFERENCES khachhang(id);
-- hoadonnhap
ALTER TABLE hoadonnhap ADD CONSTRAINT fk_hoadonnhap_nhacungcap FOREIGN KEY (nhacungcap_id) REFERENCES nhacungcap(id);
ALTER TABLE hoadonnhap ADD CONSTRAINT fk_hoadonnhap_nhanvien FOREIGN KEY (nhanvien_id) REFERENCES nhanvien(id);
-- chitiethoadonnhap;;
ALTER TABLE chitiethoadonnhap ADD CONSTRAINT fk_chitiethoadonnhap_hoadonnhap FOREIGN KEY (hoadonnhap_id) REFERENCES hoadonnhap(id);
ALTER TABLE chitiethoadonnhap ADD CONSTRAINT fk_chitiethoadonnhap_sanpham FOREIGN KEY (sanpham_id) REFERENCES sanpham(id);