CREATE TABLE IsiReview (
    idReview VARCHAR(20) PRIMARY KEY,
    konten VARCHAR,
    rating INT NOT NULL,
    tanggalReview DATE NOT NULL
);

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