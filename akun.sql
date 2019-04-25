CREATE TABLE Penjual(
    idAkun VARCHAR(20),
    namaAkun VARCHAR(20),
    nomorTelp VARCHAR(20),
    fotoProfil VARCHAR(20),
    eMail VARCHAR(20),
    wallet INT,
    nomorRekening VARCHAR(20),
    PRIMARY KEY (idAkun)
);

CREATE TABLE Pembeli(
    idAkun VARCHAR(20),
    namaAkun VARCHAR(20),
    nomorTelp VARCHAR(20),
    fotoProfil VARCHAR(20),
    eMail VARCHAR(20),
    wallet INT,
    poin INT,
    PRIMARY KEY (idAkun)
);

CREATE TABLE AlamatPenjual(
    idAkun VARCHAR(20),
    namaAlamat VARCHAR(150),
    detailAlamat VARCHAR(20),
    PRIMARY KEY (idAkun),
    FOREIGN KEY (idAkun) REFERENCES Penjual(idAkun)
);

CREATE TABLE AlamatPembeli(
    idAkun VARCHAR(20),
    namaAlamat VARCHAR(150),
    detailAlamat VARCHAR(20),
    PRIMARY KEY (idAkun),
    FOREIGN KEY (idAkun) REFERENCES Pembeli(idAkun)
);

-- DELETE FROM Penjual
-- WHERE Penjual.idAkun = '001';

--Ini buat penjual

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

--Ini buat yg pembeli

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

--Ini alamat penjual

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



--Ini Alamat Pembeli

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