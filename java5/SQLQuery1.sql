Create database baovejava
use baovejava
CREATE TABLE NhanVien(
	manv int NOT NULL PRIMARY KEY,
  hoten nvarchar(50) NOT NULL,
  diachi nvarchar(50) not null,
  gioitinh bit not null
 )


INSERT INTO NhanVien values('01',N'Nguyễn Hoài Tính',N'Củ Chi','True');
INSERT INTO nhanvien values('02',N'Nguyễn Văn A',N'Quận 12','True');

select * from NhanVien
drop table nhanvien