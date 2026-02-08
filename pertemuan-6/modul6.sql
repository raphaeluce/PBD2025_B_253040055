-- CARA MEMBUAT VARIABEL

-- CARA KEDUA
DECLARE @Nilai INT = 100

-- CARA KEDUA
DECLARE @Nama CHAR(255);
SET @Nama = 'Raffa';
PRINT @Nama;

-- JIKA NILAINYA DIATAS 80, MAKA TAMPILANNYA 'LULUS'
-- JIKA TIDAK MAKA TAMPILANNYA 'TIDAK LULUS'
DECLARE @Nilai INT = 100;
IF @Nilai > 80
	PRINT 'LULUS'
ELSE
	PRINT 'TIDAK LULUS'

-- BUATKAN KONDISI JIKA HARGA BARANG LEBIH DARO 100.000, MAKAN TAMPILANKAN 'MAHAL'
-- JIKA TIDAK, MAKA TAMPILKAN BELI
DECLARE @HargaBarang INT = 130000;
IF @HargaBarang > 100000
	PRINT 'MAHAL'
ELSE
	PRINT 'BELI'

-- VIEW
-- TANPA VIEW
SELECT * FROM Mahasiswa;

-- Mahasiswa + Nilai
SELECT * FROM Mahasiswa M
INNER JOIN Nilai N
ON M.MahasiswaID = N.MahasiswaID;

-- VIEW
CREATE OR ALTER VIEW vw_mahasiswanilai
AS
SELECT M.NamaMahasiswa, M.Prodi, M.Angkatan, N.NilaiAkhir
FROM Mahasiswa M
INNER JOIN Nilai N
ON M.MahasiswaID = N.MahasiswaID;

-- CARA PANGGIL VIEW
SELECT * FROM vw_mahasiswanilai

-- buatkan sebuah view 'vw_mahasiswasmt' yang dimana
-- ketika di panggil menampilkan
-- nama mahasiswa dan juga semester yang diambil
CREATE OR ALTER VIEW vw_mahasiswasmt
AS
SELECT M.NamaMahasiswa, K.Semester FROM Mahasiswa M
INNER JOIN KRS K
ON K.MahasiswaID = M.MahasiswaID

SELECT * FROM vw_mahasiswasmt

-- STORED PROCEDURE
CREATE OR ALTER PROCEDURE sp_LihatMahasiswa
AS
BEGIN
	SELECT * FROM Mahasiswa
END;

EXEC sp_LihatMahasiswa;

-- BUAT PROCEDURE 'sp_Nilai'
-- YANG DIMANA JIKA NILAI AKHIR NYA ADALAH 'A'
-- TAMPILKAN 'Lulus'
-- JIKA TIDAK< TAMPILKAN 'TIDAK LULUS'
CREATE OR ALTER PROCEDURE sp_Nilai
AS
BEGIN
	DECLARE @NilaiAkhir CHAR(1) = 'A';
	IF @NilaiAkhir = 'A'
		SELECT M.NamaMahasiswa, M.Prodi, M.Angkatan, N.NilaiAkhir
		FROM Mahasiswa M
		INNER JOIN Nilai N
		ON M.MahasiswaID = N.MahasiswaID
		WHERE N.NilaiAkhir = 'A';

	ELSE
		PRINT 'TIDAK LULUS'
END;

EXEC sp_Nilai;