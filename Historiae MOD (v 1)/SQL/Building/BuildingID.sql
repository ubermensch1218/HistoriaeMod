CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM Buildings ORDER BY ID;
UPDATE Buildings SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Buildings.Type = IDRemapper.Type);
DROP TABLE IDRemapper;-- Insert SQL Rules Here 
