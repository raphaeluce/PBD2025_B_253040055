USE RetailStoreDB;
GO

SELECT * FROM Production.Product;

--TAMPILKAN KOLOM NAME DAN COLOR--
SELECT Name, Color
FROM Production.Product;

--BUAT ALIAS NAME JADI NAMA PRODUK--
SELECT Name AS 'Nama Produk'
FROM Production.Product;


SELECT Name, ListPrice, (ListPrice * 10) AS HargaBaru
FROM Production.Product;

--BUAT PENGGABUNGAN MENGGUNAKAN produk + warna--
SELECT Name + ' (' + Color + ')' AS ProdukLengkap
FROM Production.Product;

-- FILTERISASI MENGGUNAKAN warna--
SELECT Name, Color, ListPrice
FROM Production.Product WHERE Color = 'Red';

--CARI DATA MENGGUNAKAN PENGGABUNGAN NAMA DENGAN WARNA Black--
SELECT Name + ' (' + Color + ')' AS ProdukLengkap
FROM Production.Product WHERE Color = 'Black';
