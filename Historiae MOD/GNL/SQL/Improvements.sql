CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM Improvements ORDER BY ID;
UPDATE Improvements SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Improvements.Type = IDRemapper.Type);
DROP TABLE IDRemapper; 