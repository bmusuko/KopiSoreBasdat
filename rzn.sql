--Tabel Layanan
CREATE TABLE Layanan (
    idLayanan VARCHAR(20) PRIMARY KEY,
    harga INT UNSIGNED NOT NULL,
    durasi INT(4) UNSIGNED NOT NULL
)
--Tabel DaftarLayanan
CREATE TABLE DaftarLayanan (
    idKurir VARCHAR(20),
    idLayanan VARCHAR(20),
    FOREIGN KEY(idKurir) REFERENCES Kurir(idKurir) ,
    FOREIGN KEY(idLayanan) REFERENCES Layanan(idLayanan)
)

--Isi Layanan
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00101',20000,5);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00102',40000,2);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00201',12000,8);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00202',50000,2);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00301',31000,4);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00401',10000,9);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00501',12000,7);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00601',11500,8);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00701',10500,7);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00801',16000,7);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00802',32000,1);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00901',1000,30);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L00902',2100,22);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L01001',3000,15);
INSERT INTO Layanan(idLayanan,harga,durasi)
VALUES('L01002',9000,8);

--Isi DaftarLayanan
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('001','L00101');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('001','L00102');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('002','L00201');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('002','L00202');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('003','L00301');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('004','L00401');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('005','L00501');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('006','L00601');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('007','L00701');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('008','L00801');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('008','L00802');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('009','L00901');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('009','L00902');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('010','L01001');
INSERT INTO DaftarLayanan(idKurir,idLayanan)
VALUES('010','L01002');