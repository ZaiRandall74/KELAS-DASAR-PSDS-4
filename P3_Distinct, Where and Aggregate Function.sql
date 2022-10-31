-- Mengakses tabel Customer
SELECT * FROM Customer c

-- Mengakses tabel customer variabel FirstName,LastName
SELECT i.FirstName,i.LastName FROM customer i
SELECT c.FirstName,c.LastName FROM customer c

-- Menampilkan data negara asal dari semua orang.
SELECT c.Country FROM Customer c

-- Menampilkan semua data negara yang berbeda.
SELECT DISTINCT (c.Country) FROM Customer c

-- Menampilkan semua data dari negara brazil.
SELECT * FROM Customer c
WHERE c.Country = 'Brazil'

-- Menampilkan semua data dari negara brazil dan City São Paulo.
SELECT * FROM Customer c
WHERE c.Country = 'Brazil' AND c.City = 'São Paulo'

-- Menampilkan semua data dari negara brazil atau negara Jerman.
SELECT * FROM Customer c
WHERE c.Country = 'Brazil' OR c.Country = 'Germany'

-- Menampilkan semua data dari negara brazil dan negara Jerman.
SELECT * FROM Customer c
WHERE c.Country IN ('Brazil','Germany')

-- Menghitung total suatu negara
SELECT SUM(i.Total) FROM Invoice i

-- Menghitung Jumlah Average
SELECT AVG(i.Total) FROM Invoice i

-- Menghitung Nilai Minimum
SELECT MIN(i.Total) FROM Invoice i

-- Menghitung Nilai Maksimum
SELECT MAX(i.Total) FROM Invoice i
