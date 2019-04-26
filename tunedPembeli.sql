
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

