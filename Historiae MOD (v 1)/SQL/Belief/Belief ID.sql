CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM Beliefs ORDER BY ID;
UPDATE Beliefs SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Beliefs.Type = IDRemapper.Type);
DROP TABLE IDRemapper;
