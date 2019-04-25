CREATE TABLE IF NOT EXISTS Penjual(
    idAkun VARCHAR(20),
    namaAkun VARCHAR(20),
    nomorTelp VARCHAR(20),
    fotoProfil VARCHAR(20),
    eMail VARCHAR(20),
    wallet INT,
    nomorRekening VARCHAR(20),
    PRIMARY KEY (idAkun)
);

CREATE TABLE IF NOT EXISTS Pembeli(
    idAkun VARCHAR(20),
    namaAkun VARCHAR(20),
    nomorTelp VARCHAR(20),
    fotoProfil VARCHAR(20),
    eMail VARCHAR(20),
    wallet INT,
    poin INT,
    PRIMARY KEY (idAkun)
);
CREATE TABLE IF NOT EXISTS AlamatPenjual(
    idAkun VARCHAR(20),
    namaAlamat VARCHAR(150),
    detailAlamat VARCHAR(20),
    PRIMARY KEY (idAkun),
    FOREIGN KEY (idAkun) REFERENCES Penjual(idAkun)
);

CREATE TABLE IF NOT EXISTS AlamatPembeli(
    idAkun VARCHAR(20),
    namaAlamat VARCHAR(150),
    detailAlamat VARCHAR(20),
    PRIMARY KEY (idAkun),
    FOREIGN KEY (idAkun) REFERENCES Pembeli(idAkun)
);
CREATE TABLE IF NOT EXISTS Transaksi (
	idTransaksi VARCHAR(20), 
	tanggalTransaksi DATE NOT NULL,
	idLayanan varchar(20) NOT NULL,
	alamatPengiriman VARCHAR(20),
	primary key(idTransaksi)
);

CREATE TABLE IF NOT EXISTS Barang(
	idBarang VARCHAR(20),
	idAkun VARCHAR(20),
	namaBarang VARCHAR(20),
	harga INT,
	stok INT,
	deskripsi VARCHAR(50),
	fotoBarang VARCHAR(20),
	PRIMARY KEY(idBarang),
	FOREIGN KEY (idAkun) REFERENCES Penjual(idAkun)
);

CREATE TABLE IF NOT EXISTS TransaksiLine(
	idTransaksi VARCHAR(20),
	nomorBaris INT,
	jumlahBarang INT,
	idBarang VARCHAR(20),
	primary key(idTransaksi,nomorBaris),
	FOREIGN KEY(idTransaksi) REFERENCES Transaksi(idTransaksi),
	FOREIGN KEY(idBarang) REFERENCES Barang(idBarang)
);

CREATE TABLE IF NOT EXISTS Voucher(
	kodeVoucher VARCHAR(20),
	jenis VARCHAR(30) ,
	masaBerlaku VARCHAR(20),
    PRIMARY KEY(kodeVoucher)
);

CREATE TABLE IF NOT EXISTS Punya
(
    idAkun VARCHAR(20),
    kodeVoucher VARCHAR(20) NOT NULL,
    banyakVoucher INT(20) NOT NULL,
    PRIMARY KEY(idAkun,kodeVoucher),
    FOREIGN KEY(kodeVoucher) REFERENCES Voucher(kodeVoucher)
);

CREATE TABLE IF NOT EXISTS Kurir (
	idKurir VARCHAR(20),
	namaPerusahaan VARCHAR(20),
	PRIMARY KEY (idKurir)
);

CREATE TABLE IF NOT EXISTS KerjaSama (
	idAkun VARCHAR(20),
	idKurir VARCHAR(20),
	PRIMARY KEY (idAkun, idKurir),
	FOREIGN KEY(idAkun) REFERENCES Penjual(idAkun),
	FOREIGN KEY(idKurir) REFERENCES Kurir(idKurir)
);

CREATE TABLE IF NOT EXISTS Tulis (
	idTransaksi VARCHAR(20),
	idAkun VARCHAR(20),
	PRIMARY KEY (idTransaksi, idAkun),
	FOREIGN KEY (idTransaksi) REFERENCES Transaksi(idTransaksi),
	FOREIGN KEY (idAkun) REFERENCES Pembeli(idAkun)
);


CREATE TABLE IF NOT EXISTS Checkout (
	idTransaksi VARCHAR(20),
	idCheckout VARCHAR(20),
	nominal INT,
	metode VARCHAR(20),
	PRIMARY KEY(idTransaksi,idCheckout),
	FOREIGN KEY (idTransaksi) REFERENCES Transaksi(idTransaksi)
);

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, nomorRekening)
VALUES('001','Andi','089906892131','fotoProfil 1','andi@gmail.com',100000, '1657789076589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, nomorRekening)
VALUES('002','Budi','089906849231','fotoProfil 2','budi@gmail.com',782100, '1657815376589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, nomorRekening)
VALUES('003','Charlie','084283692131','fotoProfil 3','charlie@gmail.com',500000, '1659785376589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, nomorRekening)
VALUES('004','Dodi','084282341131','fotoProfil 4','dodi@gmail.com',750100, '1657814561589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, nomorRekening)
VALUES('005','Eko','089956482131','fotoProfil 5','eko@gmail.com',250000, '1657788754589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, nomorRekening)
VALUES('006','Firdaus','082506849231','fotoProfil 6','firdaus@gmail.com',412100, '1657774544589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, nomorRekening)
VALUES('007','Gandhi','086326892131','fotoProfil 7','gandhi@gmail.com',900000, '3321774544589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, nomorRekening)
VALUES('008','Hamish','085906849231','fotoProfil 8','hamish@gmail.com',524100, '1747415376589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, nomorRekening)
VALUES('009','Irwan','082306892131','fotoProfil 9','irwan@gmail.com',445000, '1694589076589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, nomorRekening)
VALUES('010','Jamal','085684849231','fotoProfil 10','jamal@gmail.com',387100, '1657815762889');


INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin)
VALUES('001','Andi','089906892131','fotoProfil 1','andi@gmail.com',100000, '20000');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin)
VALUES('002','Budi','089906849231','fotoProfil 2','budi@gmail.com',782100, '25000');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin)
VALUES('003','Charlie','084283692131','fotoProfil 3','charlie@gmail.com',500000, '23000');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin)
VALUES('004','Dodi','084282341131','fotoProfil 4','dodi@gmail.com',750100, '12322');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin)
VALUES('005','Eko','089956482131','fotoProfil 5','eko@gmail.com',250000, '9000');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin)
VALUES('011','Bryan','089956758641','fotoProfil 11','bryan@gmail.com',1002000, '20000');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin)
VALUES('012','Valent','089906745891','fotoProfil 12','valent@gmail.com',7812100, '12300');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin)
VALUES('013','Fata','089514592131','fotoProfil 13','fata@gmail.com',5785000, '2000');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin)
VALUES('014','Hilmi','084287825631','fotoProfil 14','hilmi@gmail.com',740100, '12022');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin)
VALUES('015','Bram','087542882131','fotoProfil 15','bram@gmail.com',295470, '9000');


INSERT INTO AlamatPenjual(idAkun, namaAlamat, detailAlamat)
VALUES('001','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO AlamatPenjual(idAkun, namaAlamat, detailAlamat)
VALUES('002','Jl Jend A Yani 262 RT 02/02','Kosan');

INSERT INTO AlamatPenjual(idAkun, namaAlamat, detailAlamat)
VALUES('003','Jl Jend A Yani 269 Pav','Kantor');

INSERT INTO AlamatPenjual(idAkun, namaAlamat, detailAlamat)
VALUES('004','Jl Babakan Tarogong 244 B','Rumah');

INSERT INTO AlamatPenjual(idAkun, namaAlamat, detailAlamat)
VALUES('005','822/4 Begum Rokeya Sarani','Toko');

INSERT INTO AlamatPenjual(idAkun, namaAlamat, detailAlamat)
VALUES('006','Jl Salemba Tgh 39-BB 10440','Toko');

INSERT INTO AlamatPenjual(idAkun, namaAlamat, detailAlamat)
VALUES('007','JL.Pentaran No.9 Proklamasi, Jakarta Pusat 10320','Rumah');

INSERT INTO AlamatPenjual(idAkun, namaAlamat, detailAlamat)
VALUES('008','Jl WR Supratman 88, Jawa Barat','Rumah');

INSERT INTO AlamatPenjual(idAkun, namaAlamat, detailAlamat)
VALUES('009','Uday Chand Building 7','Ruko');

INSERT INTO AlamatPenjual(idAkun, namaAlamat, detailAlamat)
VALUES('010','Jl. Swadaya IV No4 Kel. Rawa Terate Cakung, Jakarta Timur, Jakarta Timur','Rukan');


INSERT INTO AlamatPembeli(idAkun, namaAlamat, detailAlamat)
VALUES('001','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO AlamatPembeli(idAkun, namaAlamat, detailAlamat)
VALUES('002','Jl Jend A Yani 262 RT 02/02','Kosan');

INSERT INTO AlamatPembeli(idAkun, namaAlamat, detailAlamat)
VALUES('003','Jl Jend A Yani 269 Pav','Kantor');

INSERT INTO AlamatPembeli(idAkun, namaAlamat, detailAlamat)
VALUES('004','Jl Babakan Tarogong 244 B','Rumah');

INSERT INTO AlamatPembeli(idAkun, namaAlamat, detailAlamat)
VALUES('005','822/4 Begum Rokeya Sarani','Toko');

INSERT INTO AlamatPembeli(idAkun, namaAlamat, detailAlamat)
VALUES('011','Jl RC Veteran 100,Bintaro','Rukan');

INSERT INTO AlamatPembeli(idAkun, namaAlamat, detailAlamat)
VALUES('012','Central Java, 081326558220 / 085641458110, Jawa Tengah','Rumah');

INSERT INTO AlamatPembeli(idAkun, namaAlamat, detailAlamat)
VALUES('013','Jl Jababeka 17-B Kawasan Industri Jababeka Tahap I Bl U/20','Toko');

INSERT INTO AlamatPembeli(idAkun, namaAlamat, detailAlamat)
VALUES('014','Jl Simprug Garden III Bl C/11 RT 007/003, Dki Jakarta','Kantor');

INSERT INTO AlamatPembeli(idAkun, namaAlamat, detailAlamat)
VALUES('015','Jl Kalibaru Brt I 3,Kalibaru','Kantor');

insert into Transaksi values ('001', "2019-04-21", '010', 'sangkuriang');
insert into Transaksi values ('002', "2019-04-22", '009', 'dago');
insert into Transaksi values ('003', "2019-04-23", '008', 'coblong');
insert into Transaksi values ('004', "2019-04-24", '007', 'tubis');
insert into Transaksi values ('005', "2019-04-25", '006', 'suite house');
insert into Transaksi values ('006', "2019-04-26", '005', 'sangkuriang');
insert into Transaksi values ('007', "2019-04-27", '004', 'dagos');
insert into Transaksi values ('008', "2019-04-28", '003', 'yordania');
insert into Transaksi values ('009', "2019-04-29", '002', 'pohon');
insert into Transaksi values ('010', "2019-04-20", '001', 'hutan');	

insert into Barang values ("001","001","Batu",10000,5,"batu super","foto 1");
insert into Barang values ("002","001","Mouse",800000,5,"Mouse Gaming","foto 2");	
insert into Barang values ("003","002","Handphone",30000000,5,"Iphone 7","foto 3");
insert into Barang values ("004","002","Kopi",12000,5,"kopi susu","foto 4");
insert into Barang values ("005","003","Yakult",1000,5,"yakult kesehatan","foto 5");
insert into Barang values ("006","003","Laptop",90000000,5,"laptop kerja","foto 6");
insert into Barang values ("007","004","Dompet",30000,5,"dompet kulit","foto 7");
insert into Barang values ("008","005","Headphone",400000,5,"Headphone audio","foto 8");
insert into Barang values ("009","006","speaker",1000000,5,"speaker simbada","foto 9");
insert into Barang values ("010","007","buku",100000,5,"buku wangsit","foto 110");	

insert into TransaksiLine values ('001', 1, 2, '001');	
insert into TransaksiLine values ('001', 2, 5, '003');
insert into TransaksiLine values ('002', 1, 1, '001');
insert into TransaksiLine values ('002', 2, 3, '006');
insert into TransaksiLine values ('003', 1, 5, '007');	
insert into TransaksiLine values ('003', 2, 3, '002');
insert into TransaksiLine values ('004', 1, 5, '001');
insert into TransaksiLine values ('004', 2, 1, '005');
insert into TransaksiLine values ('005', 1, 4, '003');
insert into TransaksiLine values ('005', 2, 1, '008');	

INSERT INTO Voucher (kodeVoucher, jenis, masaBerlaku)
VALUES
( "001", "OJEK", 3 ),
( "002", "PesawatTerbang", 4 ),
( "003", "KeretaApi", 5 ),
( "004", "OVO", 6 ),
( "005", "GOPAY", 7 ),
( "006", "DANA", 8 ),
( "007", 'TOKPED', 9 ),
( "008", "GOJEK", 3 ),
( "009", "GRAB", 4 ),
( "010", "NGANGKOT", 10 );


INSERT INTO Punya ( idAkun, kodeVoucher, banyakVoucher)
VALUES
( "001","001", 3 ),
("002", "002", 4 ),
("003", "003", 5),
("004", "004", 6),
("005", "005",7),
("006", "006",8),
("007", "007",9),
("008", "008", 10),
("009", "009", 11),
("010", "010", 12);

INSERT INTO Kurir (idKurir, namaPerusahaan) VALUES ('001', 'Valent Express');
INSERT INTO Kurir (idKurir, namaPerusahaan) VALUES ('002', 'Fast Fatt');
INSERT INTO Kurir (idKurir, namaPerusahaan) VALUES ('003', 'Brum Brum Bram');
INSERT INTO Kurir (idKurir, namaPerusahaan) VALUES ('004', 'GDE');
INSERT INTO Kurir (idKurir, namaPerusahaan) VALUES ('005', 'Hilmi Post');
INSERT INTO Kurir (idKurir, namaPerusahaan) VALUES ('006', 'Putux');
INSERT INTO Kurir (idKurir, namaPerusahaan) VALUES ('007', 'Tikki');
INSERT INTO Kurir (idKurir, namaPerusahaan) VALUES ('008', 'JME');
INSERT INTO Kurir (idKurir, namaPerusahaan) VALUES ('009', 'GO-LENT');
INSERT INTO Kurir (idKurir, namaPerusahaan) VALUES ('010', 'MustGO Post');

INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('001', '001', 70080, 'Debit');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('002', '001', 65077, 'Debit');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('003', '001', 25022, 'Debit');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('004', '001', 599701, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('005', '001', 30090, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('006', '001', 75041, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('007', '001', 200122, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('008', '001', 200056, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('009', '001', 50102, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('010', '001', 98574, 'Transfer');

INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('abangcakeep', '001');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('abangcakeep', '002');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('abangcakeep', '006');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('abangcakeep', '009');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('hilminaufal', '005');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('hilminaufal', '003');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('brammusuko', '003');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('fattahillahi', '001');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('putugde', '001');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('putugde', '004');

INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('001', 'abangcakeep');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('002', 'abangcakeep');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('003', 'abangcakeep');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('004', 'brammusuko');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('005', 'brammusuko');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('006', 'brammusuko');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('007', 'putugde');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('008', 'putugde');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('009', 'hilminaufal');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('010', 'hilminaufal');
