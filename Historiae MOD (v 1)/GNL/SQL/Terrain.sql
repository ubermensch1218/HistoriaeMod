CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM Terrains ORDER BY ID;
UPDATE Terrains SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Terrains.Type = IDRemapper.Type);
DROP TABLE IDRemapper;
