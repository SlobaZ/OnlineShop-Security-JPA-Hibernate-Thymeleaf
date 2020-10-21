
create table if not exists persistent_logins ( 
  username varchar(100) not null, 
  series varchar(64) primary key, 
  token varchar(64) not null, 
  last_used timestamp not null
);

delete from  user_role;
delete from  roles;
delete from  user;
delete from proizvod;
delete from kupovina;
delete from stavka;


INSERT INTO roles (role_id, name) VALUES 
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER')
;

INSERT INTO user (user_id, email, password, username, firstname, lastname, mesto, adresa, jmbg, telefon, brojracuna, stanje ) VALUES 
(1000000, 'admin@gmail.com', '$2a$10$hKDVYxLefVHV/vtuPhWD3OigtRyOykRLDdUAp80Z1crSoS1lFqaFS', 'Admin', 'Administrator', 'Administrator',
'AdminMesto', 'AdminAdresa','1010101010101', '0601111111', '150-123-10', 1000.0),
(1000001, 'user@gmail.com', '$2a$10$ByIUiNaRfBKSV6urZoBBxe4UbJ/sS6u1ZaPORHF9AtNWAuVPVz1by', 'User', 'Korisnik', 'Korisnik',
'UserMesto', 'UserAdresa','1010101010101', '0601111111', '150-123-10', 1000.0),
(1000002, 'pera@gmail.com', '$2a$10$Locf9fRBO84ejEc/bQFEROChVsd2ixjv4M2kYX6KSLp74iacK.N3W', 'PeraPeric', 'Pera', 'Peric',
'Novi Sad', 'Masarikova 15','0506964112233', '0641122111', '150-545454-11', 50000.0),
(1000003, 'vasa@gmail.com', '$2a$10$bwQVsArIQJtmkPckmfRZGOEMAGBXcHaziXIEgstc9ePsPG6sYEFK.', 'VasaVasic', 'Vasa', 'Vasic',
'Beograd', 'Gagarinova 25','1208978112233', '0631122111', '150-545454-22', 60000.0)
;


insert into user_role(user_id, role_id) values
(1000000,1),
(1000000,2),
(1000001,2),
(1000002,2),
(1000003,2)
;

INSERT INTO proizvod(id,naziv,marka,kolicina,cena,photo) VALUES
(1000,'Televizor', 'Sony', 50, 25000.0, 'SlikaTV.jpg'),
(1001,'Telefon', 'Samsung', 70, 15000.0, 'SlikaTelefon.jpg'),
(1002,'Frizider', 'Gorenje', 30, 35000.0, 'SlikaFrizider.jpg'),
(1003,'Ves masina', 'Beko', 40, 30000.0, 'SlikaVesMasina.jpg'),
(1004,'Usisivac', 'Vox', 35, 7000.0, 'SlikaUsisivac.jpg'),
(1005,'Pegla', 'Gorenje', 60, 4000.0, 'SlikaPegla.jpg'),
(1006,'Sporet', 'Alfa Plam', 25, 30000.0, 'SlikaSporet.jpg')
;


INSERT INTO kupovina(id,datetime,datumvreme,sifra,ukupnacena,user) VALUES
(10000001,'15.04.2019. 08:25','2019-04-15 08:25:20.000000','A 123',194000.0,1000002),
(10000002,'27.09.2020. 23:04','2020-09-27 23:04:26.000000','B 456',96000.0,1000003)
;



INSERT INTO stavka(id,cenastavke,kolicinastavke,kupovina,proizvod) VALUES
(10000001,50000.0,2,10000001,1000),
(10000002,45000.0,3,10000001,1001),
(10000003,35000.0,1,10000001,1002),
(10000004,0.0,0,10000001,1003),
(10000005,0.0,0,10000001,1004),
(10000006,4000.0,1,10000001,1005),
(10000007,60000.0,2,10000001,1006),
(10000008,25000.0,1,10000002,1000),
(10000009,15000.0,1,10000002,1001),
(10000010,45000.0,1,10000002,1002),
(10000011,0.0,0,10000002,1003),
(10000012,7000.0,1,10000002,1004),
(10000013,4000.0,1,10000002,1005),
(10000014,0.0,0,10000002,1006)
;

