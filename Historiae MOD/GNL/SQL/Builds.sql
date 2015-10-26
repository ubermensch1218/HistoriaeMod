CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM Builds ORDER BY ID;
UPDATE Builds SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Builds.Type = IDRemapper.Type);
DROP TABLE IDRemapper; -- Insert SQL Rules Here 


UPDATE Units SET FaithCost = 0 WHERE RequiresFaithPurchaseEnabled = true;

INSERT OR REPLACE INTO Units (Cost,	FaithCost)
SELECT Cost, Cost * 2.5
FROM Units WHERE RequiresFaithPurchaseEnabled = 1;