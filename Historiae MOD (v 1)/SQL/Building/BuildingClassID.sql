
CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM BuildingClasses ORDER BY ID;
UPDATE BuildingClasses SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE BuildingClasses.Type = IDRemapper.Type);
DROP TABLE IDRemapper;