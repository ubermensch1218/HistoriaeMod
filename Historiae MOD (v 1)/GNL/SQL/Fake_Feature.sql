CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM FakeFeatures ORDER BY ID;
UPDATE FakeFeatures SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE FakeFeatures.Type = IDRemapper.Type);
DROP TABLE IDRemapper;
-- Insert SQL Rules Here 