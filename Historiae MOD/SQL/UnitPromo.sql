CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM UnitPromotions ORDER BY ID;
UPDATE UnitPromotions SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE UnitPromotions.Type = IDRemapper.Type);
DROP TABLE IDRemapper;-- Insert SQL Rules Here 