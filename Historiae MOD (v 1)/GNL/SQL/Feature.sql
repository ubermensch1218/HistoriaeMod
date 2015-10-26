CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM Features ORDER BY ID;
UPDATE Features SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Features.Type = IDRemapper.Type);
DROP TABLE IDRemapper;
