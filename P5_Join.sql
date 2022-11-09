-- Membuat Tabel Db_Mahasiswa
CREATE TABLE Db_Mahasiswa (
	NIM VARCHAR (10),
	Nama VARCHAR (30)
)

-- Membuat Tabel Db_Asal
CREATE TABLE Db_Asal (
	NIM VARCHAR (10),
	Asal_Kota VARCHAR (30)
)

-- Input Data
INSERT INTO Db_Mahasiswa (NIM,Nama)
VALUES	("2100015049","Wisnu Catur R"),
		("2100015041","Sindy Mei Marantika"),
		("2215015035","Hasan Darmawan"),
		("2100015051","Saiful Andika")
		
INSERT INTO Db_Mahasiswa (NIM)
VALUES	("1800015053"),
		("2100015037")
		
INSERT INTO Db_Asal (NIM,Asal_Kota)
VALUES	("2100015049","Pasuruan"),
		("2100015041","Oku Timur"),		("1800015053","Ciamis"),		("2100015037","Bandung"),
		("2100015050","Kudus"),
		("2100015002","Bogor")
		
INSERT INTO Db_Asal (NIM)
VALUES	("2200015023"),
		("2200015012")
		
-- Inner Join
SELECT m.NIM, m.Nama, a.Asal_Kota
FROM Db_Mahasiswa m
INNER JOIN Db_Asal a
ON m.NIM = a.NIM

-- Left Join
SELECT m.NIM, m.Nama, a.Asal_Kota
FROM Db_Mahasiswa m
LEFT JOIN Db_Asal a
ON m.NIM = a.NIM

-- Right Join
SELECT m.NIM, m.Nama, a.Asal_Kota
FROM Db_Mahasiswa m
RIGHT JOIN Db_Asal a
ON m.NIM = a.NIM

-- Inner Join with Order
SELECT m.NIM, m.Nama, a.Asal_Kota
FROM Db_Mahasiswa m
INNER JOIN Db_Asal a
ON m.NIM = a.NIM
ORDER BY a.Asal_Kota

-- Inner Join with Order (Descending)
SELECT m.NIM, m.Nama, a.Asal_Kota
FROM Db_Mahasiswa m
INNER JOIN Db_Asal a
ON m.NIM = a.NIM
ORDER BY a.Asal_Kota DESC