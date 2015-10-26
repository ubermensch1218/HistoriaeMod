CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM Policies ORDER BY ID;
UPDATE Policies SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Policies.Type = IDRemapper.Type);
DROP TABLE IDRemapper;
