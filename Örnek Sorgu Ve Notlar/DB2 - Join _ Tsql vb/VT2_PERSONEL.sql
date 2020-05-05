--create database VeriTabani2
--use VeriTabani2

create table Departman (
	DepartmanId int identity(1,1) primary key,
	DepartmanAdi varchar(50)
)

insert into Departman (DepartmanAdi) values ('Muhasebe')
insert into Departman (DepartmanAdi) values ('Ýnsan Kaynaklarý')
insert into Departman (DepartmanAdi) values ('Pazarlama')
insert into Departman (DepartmanAdi) values ('Üretim')
insert into Departman (DepartmanAdi) values ('Temizlik')
insert into Departman (DepartmanAdi) values ('Güvenlik')
insert into Departman (DepartmanAdi) values ('Yönetim')
insert into Departman (DepartmanAdi) values ('Lojistik')
insert into Departman (DepartmanAdi) values ('Denetim')
insert into Departman (DepartmanAdi) values ('Halkla Ýliþkiler')

create table Ulke (
	UlkeId varchar(2) primary key,
	UlkeAdi varchar(50)
)

insert into Ulke values
('DE','Almanya'),
('JP','Japonya'),
('TR','Türkiye'),
('UK','Ýngiltere'),
('FR','Fransa'),
('RU','Rusya')


create table Personel (
	PersonelId int identity primary key,
	DepartmanId int,
	UlkeId varchar(2),
	PersonelAdi varchar(50),
	PersonelSoyadi varchar(50),
	PersonelEmail varchar(100),
	PersonelDogumTarihi date
)

insert into Personel 
(DepartmanId, UlkeId, PersonelAdi, PersonelSoyadi, PersonelEmail, PersonelDogumTarihi)
values
(4,'TR','Mehmet','Ozman','grafiker@yahoo.com','1976-11-1'),
(5,'DE','Güray','Oskay','gurayoskay@gmail.com','1979-2-3'),
(5,'TR','Serkan','Çiftçi','kizilsakal@trumpet.sk','1982-12-4'),
(1,'UK','Emre','Büyükkalfa','emrebuyukkalfa@hotmail.com','1988-4-1'),
(4,'UK','Ali','Polat','hasanali@hotmail.com','1986-4-1'),
(5,'TR','Özgür','Þengül','ozgursongul@yahoo.com','1981-11-16'),
(5,'TR','Can','Göksun','cangoksun@gmail.com','1980-5-19'),
(5,'TR','Dara','Ganjavi','daragan@yahoo.com','1975-2-4'),
(5,'TR','Elif','Akþar','elifeel@hotmail.com','1975-12-26'),
(3,'TR','Azade','Çerkezoðlu','info@azade.info','1979-9-5'),
(3,'TR','Asude','Çerkezoðlu','asude@gmail.com','1973-9-5'),
(8,'TR','Cengiz','Çerkezoðlu','cengiz@gmail.com','1950-1-1'),
(1,'TR','Seval','Çerkezoðlu','sevalc@gmail.com','1962-5-1'),
(1,'TR','Aytek','Karadeniz','aytek@hotmail.com','1983-10-11'),
(3,'UK','Jonathan','Fedayi','Jonny@yahoo.com','1978-5-12'),
(1,'DE','Philip','Lahm','philip@hotmail.com','1981-6-5'),
(5,'DE','Lucas','Podolski','lucci@gmail.com','1989-11-27'),
(3,'UK','David','Beckham','db@manchester.city','1981-9-25'),
(3,'UK','Philip','Taylor','taylor@yahoo.com','1978-12-12'),
(4,'DE','Helga','Halag','helhal@gmail.com','1985-6-15'),
(2,'TR','Ahu','Akar','ahuakar@yahoo.com','1978-11-1'),
(1,'TR','Alperen','Canýdemir','alperenc@hotmail.com','1978-9-5'),
(2,'TR','Bülent','Çavuþ','bulentc@msn.com','1981-11-4'),
(8,'TR','Cemal','Akar','cemalakar@yahoo.com','1972-1-1'),
(2,'TR','Cenker','Uçan','cenker@gmail.com','1969-5-15'),
(2,'TR','Cüneyt','Deðertekin','cucu@msn.com','1979-12-28'),
(5,'JP','Yoshi','Mitsu','yoshimitsu@tekken.com','1976-10-12'),
(3,'TR','Yeþim','Kantar','yesim21@yahoo.com','1972-6-16'),
(1,'TR','Yavuz','Akbaþ','yavak@gmail.com','1969-12-5'),
(8,'TR','Yaman','Köseoðlu','yamank@superonline.com','1945-6-6'),
(6,'TR','Suna','Yaþar','suna.yasar@gmail.com','1970-10-20'),
(1,'TR','Reha','Engin','reha.engin@gmail.com','1945-1-1'),
(1,'TR','Ramazan','Salman','ramazansalman@yahoo.com','1978-4-16')

create table Maas (
	MaasId int identity primary key,
	PersonelId int,
	MaasTarihi date,
	MaasTutari money
)

insert into Maas (PersonelId, MaasTarihi, MaasTutari) values
(1,'2020-02-01',2500),
(2,'2020-02-01',800),
(3,'2020-02-01',1200),
(4,'2020-02-01',1800),
(5,'2020-02-01',1900),
(6,'2020-02-01',4000),
(7,'2020-02-01',2200),
(8,'2020-02-01',1300),
(9,'2020-02-01',1500),
(10,'2020-02-01',1000),
(11,'2020-02-01',1350),
(12,'2020-02-01',1800),
(13,'2020-02-01',1750),
(14,'2020-02-01',5500),
(15,'2020-02-01',2800),
(16,'2020-02-01',750),
(17,'2020-02-01',1680),
(18,'2020-02-01',755),
(19,'2020-02-01',7000),
(20,'2020-02-01',1200),
(21,'2020-02-01',1700),
(22,'2020-02-01',3200),
(23,'2020-02-01',2400),
(24,'2020-02-01',4200),
(1,'2020-03-01',2500),
(2,'2020-03-01',800),
(3,'2020-03-01',1200),
(4,'2020-03-01',1800),
(5,'2020-03-01',1900),
(6,'2020-03-01',4000),
(7,'2020-03-01',2200),
(8,'2020-03-01',1300),
(9,'2020-03-01',1500),
(10,'2020-03-01',1000),
(11,'2020-03-01',1350),
(12,'2020-03-01',1800),
(13,'2020-03-01',1750),
(14,'2020-03-01',5500),
(15,'2020-03-01',2800),
(16,'2020-03-01',750),
(17,'2020-03-01',1680),
(18,'2020-03-01',755),
(19,'2020-03-01',7000),
(20,'2020-03-01',1200),
(21,'2020-03-01',1700),
(22,'2020-03-01',3200),
(23,'2020-03-01',2400),
(24,'2020-03-01',4200)

create table Musteri (
	MusteriId int identity(1,1) primary key,
	UlkeId varchar(2),
	MusteriAdi varchar(50),
	MusteriSoyadi varchar(50),
	MusteriEmail varchar(100),
	MusteriDogumTarihi date
)

insert into Musteri
(UlkeId, MusteriAdi, MusteriSoyadi, MusteriEmail, MusteriDogumTarihi)
values 
('TR','Bülent','Muska','bulentmuska@msn.com','1990-10-13'),
('TR','Nuri','Çolak','nuric@hotmail.com','1976-6-2'),
('TR','Mete','Çaðlayan','mete.caglayan@gmail.com','1976-1-5'),
('DE','Begüm','Güven','begum77@yahoo.com','1977-11-8'),
('UK','Azra','Akçetin','buket.akcetin@kuleber.de','1978-6-22'),
('DE','Mesut','Özil','mesudum@hotmail.com','1986-5-3'),
('DE','Schwan','Staiger','Schwi@yahoo.com','1984-7-19'),
('UK','Richard','Thelionheart','ricchie@gmai.com','1958-5-16'),
('UK','Ben','Foster','foster@msn.com','1981-11-29'),
('TR','ibrahim','Karayazgan','swoda@kubbettin.com','1985-6-9'),
('DE','Michael','Ballack','miki@ballack.com','1984-10-19'),
('UK','Wayne','Rooney','wayrun@manshester.united','1976-7-15'),
('TR','Serkan','Balcý','seko_18@gmail.com','1974-5-31'),
('DE','Fernando','Muslera','musty@gmail.com','1986-4-3'),
('DE','Thomas','Low','thommy@hilfiger.com','1964-2-22'),
('TR','Cemal','Çinkýlýç','cemal@doublekey.org','1978-12-27'),
('TR','Burak','Göreli','burak.goreli@diss.com','1972-10-15'),
('TR','Okay','Alp','okay@gmail.com','1974-7-2'),
('TR','Azra','Yalnýz','azra@gmail.com','1972-10-15'),
('TR','Oya','Baþar','oyabas@gmail.com','1973-2-2'),
('TR','Kayýhan','Oyuk','kayihano@hotmail.com','1978-3-22'),
('TR','Tolga','Ader','tolgader@hotmail.com','1972-10-15'),
('TR','Tolga','Çavuþoðlu','tolga.cavusoglu@eczacibasi.com','1972-7-9'),
('TR','Volkan','Özkoçak','master@gmail.com','1970-10-18'),
('UK','Melissa','Crawford','melcraw@mirc.co.uk','1983-10-19'),
('TR','Barýþ','Çekiç','baris.cekic@t-systems.com','1970-10-22'),
('DE','Horst','Müller','horst@gmail.com','1970-7-7'),
('DE','Kurt','Frankfurter','kurtfrank@yahoo.com','1971-5-13'),
('TR','Yavuz','Çetin','yavuz.cetin@otherside.com','1970-5-12'),
('TR','Kerim','Çaplý','kerim.capli@ohterside.com','1960-8-1')

create table Siparis (
	SiparisId int identity primary key,
	SiparisTarihi date,
	MusteriId int,
	SatisTutari money
)

insert into Siparis 
(SiparisTarihi, MusteriId, SatisTutari)
values
('2/15/2020',1,'1000'),
('2/28/2020',4,'1500'),
('3/10/2020',3,'800'),
('3/15/2020',1,'2200'),
('3/18/2020',12,'500'),
('3/24/2020',9,'750'),
('3/26/2020',3,'1250'),
('3/27/2020',8,'1500'),
('3/27/2020',8,'3000'),
('3/28/2020',14,'2500'),
('3/28/2020',1,'900'),
('3/29/2020',7,'500'),
('3/29/2020',7,'750'),
('3/30/2020',5,'1200'),
('3/31/2020',4,'3000'),
('4/1/2020',2,'4500'),
('4/2/2020',2,'800')
