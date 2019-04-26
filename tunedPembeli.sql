
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