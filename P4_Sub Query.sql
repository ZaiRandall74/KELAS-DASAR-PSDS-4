-- Membuat Tabel Nilai MK_Kalkulus
CREATE TABLE MK_KALKULUS (
	NIM VARCHAR(10),
	Nama VARCHAR(30),
	UTS INTEGER,
	UAS INTEGER
)

-- Input Data
INSERT INTO MK_KALKULUS (NIM,Nama,UTS,UAS)
VALUES	("2100015049","Wisnu Catur R",70,90),
		("2100015041","Sindy Mei Marantika",70,70),
		("2100015006","Januar Nur Rasyid",60,70),
		("2100015037","Lisa Nessa Safitri",80,80)
		
-- Melihat Data
SELECT *,((UTS+UAS)/2) as Nilai_Akhir FROM MK_KALKULUS

-- Melihat Rata-rata
SELECT AVG(((UTS+UAS)/2)) as Average FROM MK_KALKULUS

-- Menampilkan Data Diatas Rata-Rata (Rata-Rata= 73.75)
SELECT *,((UTS+UAS)/2) as Nilai_Akhir FROM MK_KALKULUS
WHERE Nilai_Akhir > 73.75

-- Input Data
INSERT INTO MK_KALKULUS (NIM,Nama,UTS,UAS)
VALUES	("2215015035","Hasan Darmawan",40,40)

-- Rata-Rata
SELECT *,((UTS+UAS)/2) as Nilai_Akhir FROM MK_KALKULUS

-- Sub Query menampilkan data lebih dari Rata-Rata
SELECT *,((UTS+UAS)/2) as Nilai_Akhir FROM MK_KALKULUS
WHERE Nilai_Akhir > (SELECT AVG(((UTS+UAS)/2)) as Average FROM MK_KALKULUS)

-- Input Data
INSERT INTO MK_KALKULUS (NIM,Nama,UTS,UAS)
VALUES	("2100015051","Saiful Andika",100,50)

-- Rata-Rata
SELECT *,((UTS+UAS)/2) as Nilai_Akhir FROM MK_KALKULUS