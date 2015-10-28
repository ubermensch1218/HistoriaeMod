INSERT OR REPLACE INTO Civilization_BuildingClassOverrides (CivilizationType,	BuildingClassType,	BuildingType)
SELECT ('CIVILIZATION_BARBARIAN'), Type, null
FROM BuildingClasses WHERE ID >= -1;

INSERT OR REPLACE INTO Civilization_BuildingClassOverrides (CivilizationType,	BuildingClassType,	BuildingType)
SELECT ('CIVILIZATION_MINOR'), Type, null
FROM BuildingClasses WHERE MaxGlobalInstances = 1;

INSERT OR REPLACE INTO Civilization_UnitClassOverrides (CivilizationType,	UnitClassType,	UnitType)
SELECT Type, ('UNITCLASS_FAKE'), ('UNIT_FAKE')
FROM Civilizations WHERE ID >= 0;

INSERT OR REPLACE INTO Buildings (Type,	PrereqTech)
SELECT Type, ('TECH_POTTERY')
FROM Buildings WHERE ID >= 0 AND PrereqTech = NULL;

/*======================================================
 NEW TECH SHOULD ACTIVATE THIS
 ======================================================
 */

 INSERT INTO Belief_BuildingClassFaithPurchase (BeliefType, BuildingClassType)
SELECT 'BELIEF_GODIDEA', Type FROM BuildingClasses;

INSERT OR REPLACE INTO Civilization_FreeTechs (CivilizationType, TechType)
SELECT Type  , ('TECH_POTTERY') 
FROM Civilizations WHERE ID >= 0;

INSERT OR REPLACE INTO Civilization_FreeTechs (CivilizationType, TechType)
SELECT Type  , ('TECH_STONEAGE')
FROM Civilizations WHERE ID >= 0;

INSERT OR REPLACE INTO Civilization_FreeTechs (CivilizationType, TechType)
SELECT Type  , ('TECH_AGRICULTURE')
FROM Civilizations WHERE ID >= 0;


INSERT OR REPLACE INTO Unit_FreePromotions (UnitType,	PromotionType)
SELECT Type, ('PROMOTION_OCEAN_IMPASSABLE')
FROM Units WHERE Domain = ('DOMAIN_SEA') AND Cost < 400 ;

DELETE FROM Unit_FreePromotions
WHERE UnitType = 'UNIT_CARTHAGINIAN_QUINQUEREME' AND PromotionType = 'PROMOTION_OCEAN_IMPASSABLE';

/*INSERT INTO Resources	(Type,					Description,							Civilopedia,								Help,										ResourceClassType)
SELECT					'RESOURCE_TAXES',		'TXT_KEY_RESOURCE_DUMMY',				'TXT_KEY_CIV5_RESOURCE_DUMMY_TEXT',		'TXT_KEY_RESOURCE_DUMMY_HELP',				'RESOURCECLASS_DUMMY';

INSERT INTO Improvements (Type,  Description,  Civilopedia, ArtDefineTag, Water, PortraitIndex, IconAtlas )
SELECT 'IMPROVEMENT_HURRICANE', 'TXT_KEY_IMPROVEMENT_HURRICANE', 'TXT_KEY_IMPROVEMENT_HURRICANE_TEXT', 'ART_DEF_IMPROVEMENT_HURRICANE', 1, 36, 'TERRAIN_ATLAS' UNION ALL
SELECT 'IMPROVEMENT_BURN', 'TXT_KEY_IMPROVEMENT_BURN', 'TXT_KEY_IMPROVEMENT_BURN_TEXT', 'ART_DEF_IMPROVEMENT_BURN', 1, 36, 'TERRAIN_ATLAS';


INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
SELECT	'ART_DEF_IMPROVEMENT_HURRICANE', 'Improvement', 'Hurricane'	UNION ALL
SELECT	'ART_DEF_IMPROVEMENT_BURN', 'Improvement', 'Burn';

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model)
SELECT	'Any', 'Any', 1.0, 'ART_DEF_IMPROVEMENT_HURRICANE', 'SNAPSHOT', 'ART_DEF_RESOURCE_ALL', 'Hurricane.fxsxml' UNION ALL
SELECT	'Any', 'Any', 1.0, 'ART_DEF_IMPROVEMENT_BURN', 'SNAPSHOT', 'ART_DEF_RESOURCE_ALL', 'forest_burn.fxsxml';
*/

INSERT OR REPLACE INTO Unit_FreePromotions (UnitType,	PromotionType)
SELECT Type, ('PROMOTION_ONLY_DEFENSIVE') FROM Units WHERE RangedCombat > 0;

INSERT OR REPLACE INTO Unit_FreePromotions (UnitType,	PromotionType)
SELECT Type, ('PROMOTION_OCEAN_IMPASSABLE')
FROM Units WHERE Domain = ('DOMAIN_SEA') AND Cost < 350 ;

UPDATE Units SET MoveAfterPurchase=1 WHERE ID >= -1;






-- 일반 건물
UPDATE Buildings SET UnlockedByBelief=1, FaithCost=Cost*2 WHERE Cost > 0;

-- 불가사의
UPDATE Buildings SET UnlockedByBelief=1, FaithCost=Cost*10 WHERE HurryCostModifier = -1 AND Cost > 0 ;
-- 교황청

INSERT INTO Belief_BuildingClassFaithPurchase (BeliefType, BuildingClassType)
SELECT 'BELIEF_GODIDEA', Type FROM BuildingClasses;

DELETE FROM Belief_BuildingClassFaithPurchase
WHERE BeliefType = 'BELIEF_GODIDEA' AND BuildingClassType = 'BUILDINGCLASS_POPE';

DELETE FROM Belief_BuildingClassFaithPurchase
WHERE BeliefType = 'BELIEF_GODIDEA' AND BuildingClassType = 'BUILDINGCLASS_MOSQUE';
DELETE FROM Belief_BuildingClassFaithPurchase
WHERE BeliefType = 'BELIEF_GODIDEA' AND BuildingClassType = 'BUILDINGCLASS_PAGODA';
DELETE FROM Belief_BuildingClassFaithPurchase
WHERE BeliefType = 'BELIEF_GODIDEA' AND BuildingClassType = 'BUILDINGCLASS_CATHEDRAL';


INSERT OR REPLACE INTO LocalizedText (Language, Tag, Gender, Plurality, Text) Select Language, Replace(Tag, 'TXT_KEY_TECH_', 'TXT_KEY_'), Gender, Plurality, Text from LocalizedText where Tag LIKE 'TXT_KEY_TECH_%';

