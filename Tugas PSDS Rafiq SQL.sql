CREATE TABLE Outlet (
	id_outlet INT,
	nama_outlet VARCHAR(30)

)

INSERT INTO Outlet
VALUES (1,'Pamela 1'),
       (2,'Pamela 2'),
       (3,'Pamela 3'),
       (4,'Pamela 4'),
       (5,'Pamela 5'),
       (6,'Pamela 6')

CREATE TABLE Barang (
	id_produk INT,
	nama_produk VARCHAR(30),
	stok_produk INT,
	harga_produk INT,
	harga_jual INT
)

INSERT INTO Barang
VALUES (1,'Oreo',267,4500,5000),
	   (2,'Indomie Rendang',521,1200,1800),
	   (3,'Indome Goreng',127,1250,1750),
	   (4,'Indome Soto',426,1223,1678),
	   (5,'Aqua 600 ml',523,2350,3000),
	   (6,'Le Mineral 600 ml',524,2456,2500),
	   (7,'Beras Sahaja 5 Kg',121,48000,54000),
	   (8,'Mama Lemon 250 ml',123,4500,5000),
	   (9,'Cimory Almond 200 ml', 21, 3000,3900),
	   (10,'Lifeboy 250 ml',52,23400,26000)
	   
SELECT * FROM Outlet o 
SELECT * FROM Barang b
SELECT * FROM Penjualan p

/*1. Produk yang tidak laku di semua outlet?*/
SELECT b.nama_produk, p.id_produk, SUM(p.produk_terjual)
FROM Penjualan p
LEFT JOIN Barang b
ON p.id_produk = b.id_produk
GROUP BY p.id_produk
ORDER BY SUM(p.produk_terjual) ASC LIMIT 1

/*2. Berapa keuntungan id_produk 7 di Pamella 1?*/
SELECT
	SUM(p.produk_terjual) AS Barang_Terjual_Pamella_1,
	SUM(p.produk_terjual)*(b.harga_jual - b.harga_produk) AS Keuntungan_Pamella_1
FROM
Penjualan p,
Barang b
WHERE 
p.id_produk = 7 AND
p.id_outlet = 1 AND
b.id_produk = 7

/*3. Dua produk yang tidak laku di Pamella 3?*/
SELECT b.nama_produk, p.id_outlet,  p.id_produk, SUM(p.produk_terjual)
FROM Penjualan p
LEFT JOIN Barang b
ON p.id_produk = b.id_produk
WHERE p.id_outlet = 3
GROUP BY p.id_produk
ORDER BY SUM(p.produk_terjual) ASC LIMIT 2

/*4. Keuntungan Pamela 4 pada bulan Oktober?*/
SELECT
	SUM(p.produk_terjual) AS Barang_Terjual_Pamella_4,
	SUM(p.produk_terjual)*(b.harga_jual - b.harga_produk) AS Keuntungan_Pamella_4
FROM
Penjualan p,
Barang b
WHERE
p.id_outlet = 4

/*5. Berapa keuntungan id_Produk 7 di Pamella 6?*/
SELECT
	SUM(p.produk_terjual) AS Barang_Terjual_Pamella_6,
	SUM(p.produk_terjual)*(b.harga_jual - b.harga_produk) AS Keuntungan_Pamella_4
FROM
Penjualan p,
Barang b
WHERE 
p.id_produk = 7 AND
p.id_outlet = 6 AND
b.id_produk = 7