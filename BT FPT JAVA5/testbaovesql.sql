Create database Testbaove
use Testbaove
CREATE TABLE Categories(
	ID char(4) NOT NULL,
  Name nvarchar(50) NOT NULL,
  Mark char(10) not null,
  Major nvarchar(50) not null
 )
INSERT INTO Categories values('01',N'Trần đức lân','9','Ung dung phan mem');
select * from Categories
drop table Categories
