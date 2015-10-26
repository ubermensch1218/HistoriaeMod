CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM Builds ORDER BY ID;
UPDATE Builds SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Builds.Type = IDRemapper.Type);
DROP TABLE IDRemapper; -- Insert SQL Rules Here 
