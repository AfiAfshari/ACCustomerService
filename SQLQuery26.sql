INSERT INTO License (Title, Type)
VALUES ('Johns Title', 'General Class B')

SELECT * FROM License;

INSERT INTO License (Title, Type)
VALUES ('MArks Title', 'General Class B')

INSERT INTO License (Title, Type)
VALUES ('MArks Title', 'General Class B')

UPDATE License
SET Title='Tony’s Title'
WHERE LicenseId=3;

INSERT INTO License (Title, Type)
VALUES ('Tonys Title', 'Wholesaler’s Permit')