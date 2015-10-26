DELETE FROM Civilization_BuildingClassOverrides
WHERE CivilizationType = 'CIVILIZATION_HUNS';

DELETE FROM Civilization_UnitClassOverrides
WHERE CivilizationType = 'CIVILIZATION_HUNS';

INSERT INTO Civilization_BuildingClassOverrides (CivilizationType,	BuildingClassType,	BuildingType)
SELECT ('CIVILIZATION_HUNS'), Type, null
FROM BuildingClasses WHERE ID >= -1;

INSERT INTO Civilization_UnitClassOverrides (CivilizationType,	UnitClassType,	UnitType)
SELECT ('CIVILIZATION_HUNS'), Type, null
FROM UnitClasses WHERE ID >= -1;

