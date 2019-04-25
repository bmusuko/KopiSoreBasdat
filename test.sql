--PUNYA
CREATE TABLE Punya
(
    idAkun VARCHAR(20),
    kodeVoucher VARCHAR(20) NOT NULL,
    banyakVoucher INT(20) NOT NULL,
    PRIMARY KEY(idAkun,kodeVoucher),
    FOREIGN KEY(kodeVoucher) REFERENCES Voucher(kodeVoucher)
);


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


--VOUCHER
CREATE TABLE Voucher(
	kodeVoucher VARCHAR(20),
	jenis VARCHAR(30) ,
	masaBerlaku VARCHAR(20),
    PRIMARY KEY(kodeVoucher)
);

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
-- add more rows here
GO