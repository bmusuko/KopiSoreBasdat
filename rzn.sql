--Tabel Layanan
CREATE TABLE Layanan (
    idLayanan VARCHAR(20) PRIMARY KEY,
    harga INT UNSIGNED NOT NULL,
    durasi INT UNSIGNED NOT NULL
)
--Tabel DaftarLayanan
CREATE TABLE DaftarLayanan (
    idKurir VARCHAR(20),
    idLayanan VARCHAR(20),
    FOREIGN KEY(idKurir) REFERENCES Kurir(idKurir) ,
    FOREIGN KEY(idLayanan) REFERENCES Layanan(idLayanan)
)
--Tabel PenulisReview
CREATE TABLE PenulisReview (
    idAkun VARCHAR(20),
    idCheckout VARCHAR(20),
    idBarang VARCHAR(20),
    idReview VARCHAR(20),
    FOREIGN KEY(idAkun) REFERENCES Pembeli(idAkun),
    FOREIGN KEY(idCheckout) REFERENCES Checkout(idCheckout),
    FOREIGN KEY(idBarang) REFERENCES Barang(idBarang),
    FOREIGN KEY(idReview) REFERENCES IsiReview(idReview)
)
--Isi Layanan
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

--Isi DaftarLayanan
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

--Isi Tabel PenulisReview
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
