
-- Pembeli gabung alamat
CREATE TABLE IF NOT EXISTS Pembeli(
    idAkun VARCHAR(20),
    namaAkun VARCHAR(20),
    namaAlamat VARCHAR(150),
    detailAlamat VARCHAR(20),
    nomorTelp VARCHAR(20),
    fotoProfil VARCHAR(20),
    eMail VARCHAR(20),
    wallet INT,
    poin INT,
    PRIMARY KEY (idAkun)
);

-- alamat dan wallet penjual
CREATE TABLE IF NOT EXISTS PenjualAW(
    idAkun VARCHAR(20),
    namaAlamat VARCHAR(150),
    detailAlamat VARCHAR(20),
    wallet INT,
    PRIMARY KEY (idAkun)
);

-- Sisa data lain dari penjual
CREATE TABLE IF NOT EXISTS Penjual(
	idAkun VARCHAR(20),
    namaAkun VARCHAR(20),
    nomorTelp VARCHAR(20),
    fotoProfil VARCHAR(20),
    eMail VARCHAR(20),
    nomorRekening VARCHAR(20),
    PRIMARY KEY (idAkun)
);

CREATE TABLE IF NOT EXISTS Layanan (
    idLayanan VARCHAR(20),
    harga INT UNSIGNED NOT NULL,
    durasi INT UNSIGNED NOT NULL,
    PRIMARY KEY(idLayanan)
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


CREATE TABLE IF NOT EXISTS Membeli(
	idAkun VARCHAR(20),
	idTransaksi VARCHAR(20),
	PRIMARY KEY(idAkun,idTransaksi),
	FOREIGN KEY(idAkun) REFERENCES Pembeli(idAkun),
	FOREIGN KEY(idTransaksi) REFERENCES Transaksi(idTransaksi)
);

CREATE TABLE IF NOT EXISTS DaftarLayanan (
    idKurir VARCHAR(20),
    idLayanan VARCHAR(20),
    PRIMARY KEY(idKurir,idLayanan),
    FOREIGN KEY(idKurir) REFERENCES Kurir(idKurir) ,
    FOREIGN KEY(idLayanan) REFERENCES Layanan(idLayanan)
);


CREATE TABLE IF NOT EXISTS IsiReview (
    idReview VARCHAR(20),
    konten VARCHAR(100),
    rating INT NOT NULL,
    tanggalReview DATE NOT NULL,
    PRIMARY KEY(idReview)
);


CREATE TABLE IF NOT EXISTS PenulisReview (
    idAkun VARCHAR(20),
    idCheckout VARCHAR(20),
    idBarang VARCHAR(20),
    idReview VARCHAR(20),
    PRIMARY KEY(idAkun,idCheckout,idBarang)

);


INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, nomorRekening)
VALUES('001','Andi','089906892131','fotoProfil 1','andi@gmail.com', '1657789076589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, nomorRekening)
VALUES('002','Budi','089906849231','fotoProfil 2','budi@gmail.com', '1657815376589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail,  nomorRekening)
VALUES('003','Charlie','084283692131','fotoProfil 3','charlie@gmail.com', '1659785376589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail,  nomorRekening)
VALUES('004','Dodi','084282341131','fotoProfil 4','dodi@gmail.com', '1657814561589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail,  nomorRekening)
VALUES('005','Eko','089956482131','fotoProfil 5','eko@gmail.com', '1657788754589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail,  nomorRekening)
VALUES('006','Firdaus','082506849231','fotoProfil 6','firdaus@gmail.com', '1657774544589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail,  nomorRekening)
VALUES('007','Gandhi','086326892131','fotoProfil 7','gandhi@gmail.com', '3321774544589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail,  nomorRekening)
VALUES('008','Hamish','085906849231','fotoProfil 8','hamish@gmail.com', '1747415376589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail,  nomorRekening)
VALUES('009','Irwan','082306892131','fotoProfil 9','irwan@gmail.com', '1694589076589');

INSERT INTO Penjual(idAkun, namaAkun, nomorTelp, fotoProfil, eMail,  nomorRekening)
VALUES('010','Jamal','085684849231','fotoProfil 10','jamal@gmail.com', '1657815762889');


INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin, namaAlamat, detailAlamat)
VALUES('001','Andi','089906892131','fotoProfil 1','andi@gmail.com',100000, '20000','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin, namaAlamat, detailAlamat)
VALUES('002','Budi','089906849231','fotoProfil 2','budi@gmail.com',782100, '25000','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin, namaAlamat, detailAlamat)
VALUES('003','Charlie','084283692131','fotoProfil 3','charlie@gmail.com',500000, '23000','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin, namaAlamat, detailAlamat)
VALUES('004','Dodi','084282341131','fotoProfil 4','dodi@gmail.com',750100, '12322','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin, namaAlamat, detailAlamat)
VALUES('005','Eko','089956482131','fotoProfil 5','eko@gmail.com',250000, '9000','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin, namaAlamat, detailAlamat)
VALUES('011','Bryan','089956758641','fotoProfil 11','bryan@gmail.com',1002000, '20000','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin, namaAlamat, detailAlamat)
VALUES('012','Valent','089906745891','fotoProfil 12','valent@gmail.com',7812100, '12300','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin, namaAlamat, detailAlamat)
VALUES('013','Fata','089514592131','fotoProfil 13','fata@gmail.com',5785000, '2000','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin, namaAlamat, detailAlamat)
VALUES('014','Hilmi','084287825631','fotoProfil 14','hilmi@gmail.com',740100, '12022','K Y Plaza ( 4th Floor), 191','Rumah');

INSERT INTO Pembeli(idAkun, namaAkun, nomorTelp, fotoProfil, eMail, wallet, poin, namaAlamat, detailAlamat)
VALUES('015','Bram','087542882131','fotoProfil 15','bram@gmail.com',295470, '9000','K Y Plaza ( 4th Floor), 191','Rumah');


INSERT INTO PenjualAW(idAkun, namaAlamat, detailAlamat, wallet)
VALUES('001','K Y Plaza ( 4th Floor), 191','Rumah', 100000);

INSERT INTO PenjualAW(idAkun, namaAlamat, detailAlamat, wallet)
VALUES('002','Jl Jend A Yani 262 RT 02/02','Kosan', 54200);

INSERT INTO PenjualAW(idAkun, namaAlamat, detailAlamat, wallet)
VALUES('003','Jl Jend A Yani 269 Pav','Kantor', 250000);

INSERT INTO PenjualAW(idAkun, namaAlamat, detailAlamat, wallet)
VALUES('004','Jl Babakan Tarogong 244 B','Rumah', 35000);

INSERT INTO PenjualAW(idAkun, namaAlamat, detailAlamat, wallet)
VALUES('005','822/4 Begum Rokeya Sarani','Toko', 15000);

INSERT INTO PenjualAW(idAkun, namaAlamat, detailAlamat, wallet)
VALUES('006','Jl Salemba Tgh 39-BB 10440','Toko', 50000);

INSERT INTO PenjualAW(idAkun, namaAlamat, detailAlamat, wallet)
VALUES('007','JL.Pentaran No.9 Proklamasi, Jakarta Pusat 10320','Rumah', 15000);

INSERT INTO PenjualAW(idAkun, namaAlamat, detailAlamat, wallet)
VALUES('008','Jl WR Supratman 88, Jawa Barat','Rumah', 30000);

INSERT INTO PenjualAW(idAkun, namaAlamat, detailAlamat, wallet)
VALUES('009','Uday Chand Building 7','Ruko', 10000);

INSERT INTO PenjualAW(idAkun, namaAlamat, detailAlamat, wallet)
VALUES('010','Jl. Swadaya IV No4 Kel. Rawa Terate Cakung, Jakarta Timur, Jakarta Timur','Rukan', 33000);


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
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('002', '002', 65077, 'Debit');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('003', '003', 25022, 'Debit');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('004', '004', 599701, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('005', '005', 30090, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('006', '006', 75041, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('007', '007', 200122, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('008', '008', 200056, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('009', '009', 50102, 'Transfer');
INSERT INTO Checkout (idTransaksi, idCheckout, nominal, metode) VALUES ('010', '010', 98574, 'Transfer');

INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('001', '001');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('002', '002');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('003', '006');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('004', '009');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('005', '005');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('006', '003');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('007', '003');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('008', '001');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('009', '001');
INSERT INTO KerjaSama (idAkun, idKurir) VALUES ('010', '004');

INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('001', '001');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('002', '001');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('003', '001');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('004', '002');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('005', '002');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('006', '002');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('007', '003');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('008', '003');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('009', '003');
INSERT INTO Tulis (idTransaksi, idAkun) VALUES ('010', '004');

insert into Membeli values ("001","002");
insert into Membeli values ("002","001");
insert into Membeli values ("003","005");
insert into Membeli values ("004","002");
insert into Membeli values ("005","005");
insert into Membeli values ("011","005");	
insert into Membeli values ("012","001");
insert into Membeli values ("013","008");	
insert into Membeli values ("014","007");
insert into Membeli values ("015","009");	

INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0101',20000,5);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0102',40000,2);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0201',12000,8);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0202',50000,2);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0301',31000,4);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0401',10000,9);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0501',12000,7);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0601',11500,8);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0701',10500,7);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0801',16000,7);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0802',32000,1);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0901',1000,30);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('0902',2100,22);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('1001',3000,15);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('1002',9000,8);

INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('001','0101');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('001','0102');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('002','0201');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('002','0202');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('003','0301');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('004','0401');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('005','0501');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('006','0601');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('007','0701');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('008','0801');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('008','0802');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('009','0901');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('009','0902');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('010','1001');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('010','1002');

INSERT INTO IsiReview(idReview,konten,rating,tanggalReview)
VALUES('001','Bagus, tapi gaada barangnya',5,'2019-11-12');
INSERT INTO IsiReview(idReview,konten,rating,tanggalReview)
VALUES('002','Pengen warna hitam, tapi kepesen warna putih :(',45,'2019-02-03');
INSERT INTO IsiReview(idReview,konten,rating,tanggalReview)
VALUES('003','Kerennn... Tas laptop harga cuman 5 juta, dapet bonus laptop',100,'2019-01-22');
INSERT INTO IsiReview(idReview,konten,rating,tanggalReview)
VALUES('004','Diskonnya tambah dong...',95,'2019-11-02');
INSERT INTO IsiReview(idReview,konten,rating,tanggalReview)
VALUES('005','Mantap, barang sudah diterima',100,'2018-11-12');
INSERT INTO IsiReview(idReview,konten,rating,tanggalReview)
VALUES('006','...',80,'2018-11-12');
INSERT INTO IsiReview(idReview,konten,rating,tanggalReview)
VALUES('007','Saya coba dulu ya',80,'2019-10-12');
INSERT INTO IsiReview(idReview,konten,rating,tanggalReview)
VALUES('008','Makasiihhh...',90,'2019-01-12');
INSERT INTO IsiReview(idReview,konten,rating,tanggalReview)
VALUES('009','Kereennn',100,'2018-04-16');
INSERT INTO IsiReview(idReview,konten,rating,tanggalReview)
VALUES('010','Saya pesen 1 kok kekirim 2 ??',80,'2018-11-01');

INSERT INTO PenulisReview(idAkun,idCheckout,idBarang,idReview)
VALUES('001','001','001','001');
INSERT INTO PenulisReview(idAkun,idCheckout,idBarang,idReview)
VALUES('002','002','002','003');
INSERT INTO PenulisReview(idAkun,idCheckout,idBarang,idReview)
VALUES('003','003','003','003');
INSERT INTO PenulisReview(idAkun,idCheckout,idBarang,idReview)
VALUES('004','004','004','004');
INSERT INTO PenulisReview(idAkun,idCheckout,idBarang,idReview)
VALUES('005','005','005','005');
INSERT INTO PenulisReview(idAkun,idCheckout,idBarang,idReview)
VALUES('006','006','006','006');
INSERT INTO PenulisReview(idAkun,idCheckout,idBarang,idReview)
VALUES('007','007','007','007');
INSERT INTO PenulisReview(idAkun,idCheckout,idBarang,idReview)
VALUES('008','008','008','008');
INSERT INTO PenulisReview(idAkun,idCheckout,idBarang,idReview)
VALUES('009','009','009','009');
INSERT INTO PenulisReview(idAkun,idCheckout,idBarang,idReview)
VALUES('010','010','010','010'); 