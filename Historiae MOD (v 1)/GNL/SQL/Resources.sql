CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM Resources ORDER BY ID;
UPDATE Resources SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Resources.Type = IDRemapper.Type);
DROP TABLE IDRemapper;