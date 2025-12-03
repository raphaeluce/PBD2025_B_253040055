USE TokoRetailDB;

SELECT * FROM Pelanggan
WHERE PelangganID = '2';

BEGIN TRANSACTION;

DELETE FROM Pelanggan
WHERE NamaDepan = 'Alzeta';

INSERT INTO Pelanggan (NamaDepan, NamaBelakang, Email)

COMMIT;

SELECT * FROM Pelanggan;