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
	PRIMARY KEY(idBarang)
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