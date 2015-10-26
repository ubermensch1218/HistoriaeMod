/*CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (NaturalWonderType) SELECT NaturalWonderType FROM Natural_Wonder_Placement ORDER BY ID;
UPDATE Natural_Wonder_Placement SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Natural_Wonder_Placement.NaturalWonderType = IDRemapper.Type);
DROP TABLE IDRemapper;*/