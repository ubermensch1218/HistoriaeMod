--==========================================================================================================================
-- Units
--==========================================================================================================================
INSERT OR REPLACE INTO Units 	
			(Type, 	ExtraMaintenanceCost,			Range, RangedCombat, NumExoticGoods,					PrereqTech, Combat, Cost, Class, FaithCost,	RequiresFaithPurchaseEnabled,	Moves, 	CombatClass, Domain, DefaultUnitAI, Description, 							Civilopedia, 										Help, 										Strategy,								  			MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,							UnitFlagIconOffset,	UnitFlagAtlas,						MoveRate,	PortraitIndex, 	IconAtlas)
SELECT		('UNIT_PHOENICIA_BIREME'),	3,	2, 10, 1,		('TECH_SAILING') , 6, 250, ('UNITCLASS_RECON_SHIP'), FaithCost+220,	RequiresFaithPurchaseEnabled, 5, ('UNITCOMBAT_NAVALMELEE'), Domain, DefaultUnitAI, ('TXT_KEY_UNIT_PHOENICIA_BIREME'), 	('TXT_KEY_CIV5_UNIT_PHOENICIA_BIREME_TEXT'), 	('TXT_KEY_UNIT_PHOENICIA_BIREME_HELP'), 	('TXT_KEY_UNIT_PHOENICIA_BIREME_STRATEGY'),  	MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ('TECH_COMPASS'),	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass,  ('ART_DEF_UNIT_U_CARTHAGE_QUINQUEREME'),  0,					('PHOENICIAN_BIREME_FLAG'),		MoveRate,	2, 				('PHOENICIA_ATLAS')
FROM Units WHERE (Type = 'UNIT_RECON_SHIP');

INSERT OR REPLACE INTO Units 	
			(Type, 				ExtraMaintenanceCost,					PrereqTech, Combat, Cost, Class, FaithCost,	RequiresFaithPurchaseEnabled,	Moves, 	CombatClass, Domain, DefaultUnitAI, Description, 							Civilopedia, 										Help, 										Strategy,								  			MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,UnitFlagIconOffset,	UnitFlagAtlas,	MoveRate,	PortraitIndex, 	IconAtlas)
SELECT		('UNIT_DORIPOROS'),	1,PrereqTech, 12, 55, Class, FaithCost,	RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, ('TXT_KEY_UNIT_DORIPOROS'), 	('TXT_KEY_CIV5_UNIT_DORIPOROS_TEXT'), 	('TXT_KEY_UNIT_DORIPOROS_HELP'), 	('TXT_KEY_UNIT_DORIPOROS_STRATEGY'),  	MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech,	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, ('ART_DEF_UNIT_SPEARMAN'),  9,	UnitFlagAtlas,		MoveRate,	9, 				('UNIT_ATLAS_1')
FROM Units WHERE (Type = 'UNIT_SPEARMAN');

INSERT OR REPLACE INTO Units 	
			(Type, 				PrereqTech, Combat, Cost, Class, FaithCost,	RequiresFaithPurchaseEnabled,	Moves, 	CombatClass, Domain, DefaultUnitAI, Description, 							Civilopedia, 										Help, 										Strategy,	MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,UnitFlagIconOffset,	UnitFlagAtlas,	MoveRate,	PortraitIndex, 	IconAtlas)
SELECT		('UNIT_SARDENIAN'), PrereqTech, 8, 30, Class, FaithCost,	RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, ('TXT_KEY_UNIT_SARDENIAN'), 	('TXT_KEY_CIV5_UNIT_SARDENIAN_TEXT'), 	('TXT_KEY_UNIT_SARDENIAN_HELP'), 	('TXT_KEY_UNIT_SARDENIAN_STRATEGY'),  	MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech,	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, ('ART_DEF_UNIT__WARRIOR'),  3,	UnitFlagAtlas,		MoveRate,	3, 				('UNIT_ATLAS_1')
FROM Units WHERE (Type = 'UNIT_WARRIOR');

INSERT OR REPLACE INTO Units 	
			(Type, 					PrereqTech, Combat, Cost, Class, FaithCost,	RequiresFaithPurchaseEnabled,	Moves, 	CombatClass, Domain, DefaultUnitAI, Description, 							Civilopedia, 										Help, 										Strategy,								  			MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,UnitFlagIconOffset,	UnitFlagAtlas,	MoveRate,	PortraitIndex, 	IconAtlas)
SELECT		('UNIT_IBERIAN'), 'TECH_IRON_WORKING', 14, 125, Class, 300,	RequiresFaithPurchaseEnabled, 3, CombatClass, Domain, DefaultUnitAI, ('TXT_KEY_UNIT_IBERIAN'), 	('TXT_KEY_CIV5_UNIT_IBERIAN_TEXT'), 	('TXT_KEY_UNIT_IBERIAN_HELP'), 	('TXT_KEY_UNIT_IBERIAN_STRATEGY'),  	MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech,	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, ('ART_DEF_UNIT_SWORDSMAN'),  14,	UnitFlagAtlas,		MoveRate,	14, 				('UNIT_ATLAS_1')
FROM Units WHERE (Type = 'UNIT_SWORDSMAN');

INSERT OR REPLACE INTO Units 	
			(Type, 					PrereqTech, Combat, Cost, Class, FaithCost,	RequiresFaithPurchaseEnabled,	Moves, 	CombatClass, Domain, DefaultUnitAI, Description, 							Civilopedia, 										Help, 										Strategy,								  			MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,UnitFlagIconOffset,	UnitFlagAtlas,	MoveRate,	PortraitIndex, 	IconAtlas)
SELECT		('UNIT_GARAMANTIA'),	PrereqTech, 10, 80, Class, FaithCost+30,	RequiresFaithPurchaseEnabled, 4, CombatClass, Domain, DefaultUnitAI, ('TXT_KEY_UNIT_GARAMANTIA'), 	('TXT_KEY_CIV5_UNIT_GARAMANTIA_TEXT'), 	('TXT_KEY_UNIT_GARAMANTIA_HELP'), 	('TXT_KEY_UNIT_GARAMANTIA_STRATEGY'),  	MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech,	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,  UnitFlagIconOffset,	UnitFlagAtlas,		MoveRate,	17, 				('UNIT_ATLAS_1')
FROM Units WHERE (Type = 'UNIT_SCOUT_MOUNT');

INSERT OR REPLACE INTO Units 	
			(Type, 		PrereqTech, Combat, Cost, Class, FaithCost,	RequiresFaithPurchaseEnabled,	Moves, 	CombatClass, Domain, DefaultUnitAI, Description, 							Civilopedia, 										Help, 										Strategy,								  			MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,UnitFlagIconOffset,	UnitFlagAtlas,	MoveRate,	PortraitIndex, 	IconAtlas)
SELECT		('UNIT_KAITRAI'),	('TECH_SEA_TRADE') , 13, 100, Class, FaithCost-60,	RequiresFaithPurchaseEnabled, 2, CombatClass, Domain, DefaultUnitAI, ('TXT_KEY_UNIT_KAITRAI'), 	('TXT_KEY_CIV5_UNIT_KAITRAI_TEXT'), 	('TXT_KEY_UNIT_KAITRAI_HELP'), 	('TXT_KEY_UNIT_KAITRAI_STRATEGY'),  	MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech,	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,  UnitFlagIconOffset,	UnitFlagAtlas,		MoveRate,	14, 				('UNIT_ATLAS_1')
FROM Units WHERE (Type = 'UNIT_DEFWARRIOR');


--==========================================================================================================================
-- UnitGameplay2DScripts
--==========================================================================================================================
INSERT OR REPLACE INTO UnitGameplay2DScripts 	
			(UnitType, 								SelectionSound, FirstSelectionSound)
SELECT		('UNIT_PHOENICIA_BIREME'), 			SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_RECON_SHIP');

INSERT OR REPLACE INTO UnitGameplay2DScripts 	
			(UnitType, 							SelectionSound, FirstSelectionSound)
SELECT		('UNIT_DORIPOROS'), 		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_SPEARMAN');

INSERT OR REPLACE INTO UnitGameplay2DScripts 	
			(UnitType, 							SelectionSound, FirstSelectionSound)
SELECT		('UNIT_SARDENIAN'), 		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_WARRIOR');

INSERT OR REPLACE INTO UnitGameplay2DScripts 	
			(UnitType, 							SelectionSound, FirstSelectionSound)
SELECT		('UNIT_IBERIAN'), 		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_SWORDSMAN');


INSERT OR REPLACE INTO UnitGameplay2DScripts 	
			(UnitType, 							SelectionSound, FirstSelectionSound)
SELECT		('UNIT_GARAMANTIA'), 		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_PILLAGE_MOUNT');


INSERT OR REPLACE INTO UnitGameplay2DScripts 	
			(UnitType, 							SelectionSound, FirstSelectionSound)
SELECT		('UNIT_KAITRAI'), 		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_DEFWARRIOR');

--==========================================================================================================================
-- Unit_AITypes
--==========================================================================================================================
INSERT OR REPLACE INTO Unit_AITypes 	
			(UnitType, 								UnitAIType)
SELECT		('UNIT_PHOENICIA_BIREME'), 			UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_GALLEASS');

INSERT OR REPLACE INTO Unit_AITypes 	
			(UnitType, 								UnitAIType)
SELECT		('UNIT_DORIPOROS'), 			UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_SPEARMAN');

INSERT OR REPLACE INTO Unit_AITypes 	
			(UnitType, 								UnitAIType)
SELECT		('UNIT_SARDENIAN'), 			UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_WARRIOR');


INSERT OR REPLACE INTO Unit_AITypes 	
			(UnitType, 								UnitAIType)
SELECT		('UNIT_IBERIAN'), 			UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_SWORDSMAN');


INSERT OR REPLACE INTO Unit_AITypes 	
			(UnitType, 								UnitAIType)
SELECT		('UNIT_GARAMANTIA'), 			UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_PILLAGE_MOUNT');

INSERT OR REPLACE INTO Unit_AITypes 	
			(UnitType, 								UnitAIType)
SELECT		('UNIT_KAITRAI'), 			UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_DEFWARRIOR');


INSERT OR REPLACE INTO Unit_AITypes 	
			(UnitType, 								UnitAIType)
SELECT		('UNIT_TYRIAN_MERCHANT'), 			UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_MERCHANT');

--==========================================================================================================================
-- Unit_Flavors
--=========================================================================================================================
INSERT OR REPLACE INTO Unit_Flavors 	
			(UnitType, 								FlavorType, Flavor)
SELECT		('UNIT_PHOENICIA_BIREME'), 			FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_GALLEASS');


INSERT OR REPLACE INTO Unit_Flavors 	
			(UnitType, 							FlavorType, Flavor)
SELECT		('UNIT_TYRIAN_MERCHANT'), 		FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_MERCHANT');

INSERT OR REPLACE INTO Unit_Flavors 	
			(UnitType, 							FlavorType, Flavor)
SELECT		('UNIT_DORIPOROS'), 		FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_SPEARMAN');

INSERT OR REPLACE INTO Unit_Flavors 	
			(UnitType, 							FlavorType, Flavor)
SELECT		('UNIT_SARDENIAN'), 		FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_WARRIOR');

INSERT OR REPLACE INTO Unit_Flavors 	
			(UnitType, 							FlavorType, Flavor)
SELECT		('UNIT_IBERIAN'), 		FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_SWORDSMAN');

INSERT OR REPLACE INTO Unit_Flavors 	
			(UnitType, 							FlavorType, Flavor)
SELECT		('UNIT_GARAMANTIA'), 		FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_PILLAGE_MOUNT');

INSERT OR REPLACE INTO Unit_Flavors 	
			(UnitType, 							FlavorType, Flavor)
SELECT		('UNIT_KAITRAI'), 		FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_DEFWARRIOR');


--==========================================================================================================================	
-- Unit_ClassUpgrades
--==========================================================================================================================	
INSERT OR REPLACE INTO Unit_ClassUpgrades 	
			(UnitType, 							UnitClassType)
SELECT		('UNIT_PHOENICIA_BIREME'),		UnitClassType
FROM Unit_ClassUpgrades WHERE (UnitType = 'UNIT_RECON_SHIP');

INSERT OR REPLACE INTO Unit_ClassUpgrades 	
			(UnitType, 							UnitClassType)
SELECT		('UNIT_DORIPOROS'),		UnitClassType
FROM Unit_ClassUpgrades WHERE (UnitType = 'UNIT_SPEARMAN');


INSERT OR REPLACE INTO Unit_ClassUpgrades 	
			(UnitType, 							UnitClassType)
SELECT		('UNIT_SARDENIAN'),		UnitClassType
FROM Unit_ClassUpgrades WHERE (UnitType = 'UNIT_WARRIOR');

INSERT OR REPLACE INTO Unit_ClassUpgrades 	
			(UnitType, 							UnitClassType)
SELECT		('UNIT_IBERIAN'),		UnitClassType
FROM Unit_ClassUpgrades WHERE (UnitType = 'UNIT_SWORDSMAN');

INSERT OR REPLACE INTO Unit_ClassUpgrades 	
			(UnitType, 							UnitClassType)
SELECT		('UNIT_GARAMANTIA'),		UnitClassType
FROM Unit_ClassUpgrades WHERE (UnitType = 'UNIT_PILLAGE_MOUNT');

INSERT OR REPLACE INTO Unit_ClassUpgrades 	
			(UnitType, 							UnitClassType)
SELECT		('UNIT_KAITRAI'),		UnitClassType
FROM Unit_ClassUpgrades WHERE (UnitType = 'UNIT_DEFWARRIOR');


--==========================================================================================================================
-- Unit_FreePromotions
--==========================================================================================================================
INSERT OR REPLACE INTO UnitPromotions 
         (Type,                            Description,                         Help,                                     Sound,             CannotBeChosen, LostWithUpgrade,   PortraitIndex,   IconAtlas,          PediaType,          PediaEntry)
VALUES      ('PROMOTION_CEDARS_OF_LEBANON',       'TXT_KEY_PROMOTION_CEDARS_OF_LEBANON',      'TXT_KEY_PROMOTION_CEDARS_OF_LEBANON_HELP',       'AS2D_IF_LEVELUP',    1,             0,                59,          'ABILITY_ATLAS',    'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_CEDARS_OF_LEBANON');
--[67893.000] In XMLSerializer while updating table Language_zh_CN from file Localization/IGE_ZH_CN.xml.
--[67896.453] near "(": syntax error
--		3.453		
INSERT OR REPLACE INTO Unit_FreePromotions 	
			(UnitType, 							PromotionType)
SELECT		('UNIT_DORIPOROS'), 		PromotionType
FROM Unit_FreePromotions WHERE (UnitType = 'UNIT_SPEARMAN');

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_DORIPOROS', 	'PROMOTION_EMBARKATION'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_SARDENIAN', 	'PROMOTION_EMBARKATION'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_SARDENIAN', 	'PROMOTION_MOUNTED_PENALTY_1'); 


INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_IBERIAN', 	'PROMOTION_ENFORCING_MARCH'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_IBERIAN', 	'PROMOTION_MOUNTED_PENALTY_1'); 


INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_GARAMANTIA', 	'PROMOTION_RANGED_SUPPORT_FIRE'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_GARAMANTIA', 	'PROMOTION_MARCH'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_GARAMANTIA', 	'PROMOTION_CITY_PENALTY_2'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_GARAMANTIA', 	'PROMOTION_FREE_PILLAGE_MOVES'); 


INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_PHOENICIA_BIREME', 	'PROMOTION_CEDARS_OF_LEBANON'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_PHOENICIA_BIREME', 	'PROMOTION_SELL_EXOTIC_GOODS'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_PHOENICIA_BIREME', 	'PROMOTION_IGNORE_TERRAIN_COST'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_PHOENICIA_BIREME', 	'PROMOTION_OCEAN_MOVEMENT'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_PHOENICIA_BIREME', 	'PROMOTION_SENTRY'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_PHOENICIA_BIREME', 	'PROMOTION_SCOUTING_1'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_PHOENICIA_BIREME', 	'PROMOTION_SCOUTING_2'); 



INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_TYRIAN_MERCHANT', 	'PROMOTION_CARTHAGE_II'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_TYRIAN_MERCHANT', 	'PROMOTION_GREAT_EXPLORER'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_KAITRAI', 	'PROMOTION_COVER_1'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_KAITRAI', 	'PROMOTION_ENFORCING_MARCH'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_CARTHAGINIAN_QUINQUEREME', 	'PROMOTION_CEDARS_OF_LEBANON'); 
INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_CARTHAGINIAN_QUINQUEREME', 	'PROMOTION_BOARDING_PARTY_1'); 
INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_CARTHAGINIAN_QUINQUEREME', 	'PROMOTION_NAVAL_BONUS_1'); 
INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_CARTHAGINIAN_QUINQUEREME', 	'PROMOTION_COASTAL_RAIDER_1'); 
INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_CARTHAGINIAN_QUINQUEREME', 	'PROMOTION_COASTAL_RAIDER_2'); 



DELETE FROM Belief_BuildingClassFaithPurchase
WHERE BeliefType = 'BELIEF_GODIDEA' AND BuildingClassType = 'BUILDINGCLASS_POPE';

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_CARTHAGINIAN_QUINQUEREME', 	'PROMOTION_DOUBLE_PLUNDER'); 


INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_COLONIST', 	'PROMOTION_CARTHAGE_II'); 

INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType, 						PromotionType)
VALUES		('UNIT_COLONIST', 	'PROMOTION_GREAT_EXPLORER');    
      

--==========================================================================================================================
-- Unit_UniqueNames
--==========================================================================================================================
INSERT OR REPLACE INTO Unit_UniqueNames 
         (UnitType,                UniqueName)
VALUES      ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_01'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_02'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_03'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_04'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_05'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_06'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_07'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_08'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_09'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_10'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_11'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_12'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_13'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_14'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_15'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_16'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_17'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_18'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_19'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_20'),
         ('UNIT_TYRIAN_MERCHANT',   'TXT_KEY_GREAT_PERSON_TYRIAN_MERCHANT_21');




INSERT OR REPLACE INTO Unit_UniqueNames 
         (UnitType,                UniqueName, GreatWorkType)
VALUES      ('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_TALES', 'GREAT_WORK_TALES'),
			('UNIT_SOPHIST',   'TXT_KET_SOPHIST_ARCHIMEDES', 'GREAT_WORK_ARCHIMEDES'),
			('UNIT_SOPHIST',   'TXT_KET_SOPHIST_PLATON', 'GREAT_WORK_PLATON'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_PARMENIDAS', 'GREAT_WORK_PARMENIDAS'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_XENON', 'GREAT_WORK_XENON'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_DEMOCRITOS', 'GREAT_WORK_DEMOCRITOS'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_PROTAGORAS', 'GREAT_WORK_PROTAGORAS'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_GORGIAS', 'GREAT_WORK_GORGIAS'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_ARISTOTLE', 'GREAT_WORK_ARISTOTLE'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_ANAXIMENES', 'GREAT_WORK_ANAXIMENES'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_EMPEDOCLAS', 'GREAT_WORK_EMPEDOCLAS'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_EPIQUROS', 'GREAT_WORK_EPIQUROS'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_HIPATIA', 'GREAT_WORK_HIPATIA'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_ANAXIMANDROS', 'GREAT_WORK_ANAXIMANDROS'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_PITAGORAS', 'GREAT_WORK_PITAGORAS'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_EUCLID', 'GREAT_WORK_EUCLID'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_HERON', 'GREAT_WORK_HERON'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_DIOPANTOS', 'GREAT_WORK_DIOPANTOS'),
			('UNIT_SOPHIST',   'TXT_KEY_SOPHIST_SOCRATES', 'GREAT_WORK_SOCRATES');

INSERT OR REPLACE INTO GreatWorks
		(Type, GreatWorkClassType, Description, Quote, Image)
VALUES		('GREAT_WORK_TALES','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_TALES',	'TXT_KEY_GREAT_WORK_QUOTE_TALES','GreatWriter_Background.dds'),
			('GREAT_WORK_ARCHIMEDES','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_ARCHIMEDES',	'TXT_KEY_GREAT_WORK_QUOTE_ARCHIMEDES','GreatWriter_Background.dds'),
			('GREAT_WORK_PLATON','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_PLATON',	'TXT_KEY_GREAT_WORK_QUOTE_PLATON','GreatWriter_Background.dds'),
			('GREAT_WORK_PARMENIDAS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_PARMENIDAS',	'TXT_KEY_GREAT_WORK_QUOTE_PARMENIDAS','GreatWriter_Background.dds'),
			('GREAT_WORK_XENON','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_XENON',	'TXT_KEY_GREAT_WORK_QUOTE_XENON','GreatWriter_Background.dds'),
			('GREAT_WORK_DEMOCRITOS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_DEMOCRITOS',	'TXT_KEY_GREAT_WORK_QUOTE_DEMOCRITOS','GreatWriter_Background.dds'),
			('GREAT_WORK_PROTAGORAS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_PROTAGORAS',	'TXT_KEY_GREAT_WORK_QUOTE_PROTAGORAS','GreatWriter_Background.dds'),
			('GREAT_WORK_GORGIAS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_GORGIAS',	'TXT_KEY_GREAT_WORK_QUOTE_GORGIAS','GreatWriter_Background.dds'),
			('GREAT_WORK_ARISTOTLE','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_ARISTOTLE',	'TXT_KEY_GREAT_WORK_QUOTE_ARISTOTLE','GreatWriter_Background.dds'),
			('GREAT_WORK_ANAXIMENES','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_ANAXIMENES',	'TXT_KEY_GREAT_WORK_QUOTE_ANAXIMENES','GreatWriter_Background.dds'),
			('GREAT_WORK_EMPEDOCLAS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_EMPEDOCLAS',	'TXT_KEY_GREAT_WORK_QUOTE_EMPEDOCLAS','GreatWriter_Background.dds'),
			('GREAT_WORK_EPIQUROS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_EPIQUROS',	'TXT_KEY_GREAT_WORK_QUOTE_EPIQUROS','GreatWriter_Background.dds'),
			('GREAT_WORK_HIPATIA','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_HIPATIA',	'TXT_KEY_GREAT_WORK_QUOTE_HIPATIA','GreatWriter_Background.dds'),
			('GREAT_WORK_ANAXIMANDROS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_ANAXIMANDROS',	'TXT_KEY_GREAT_WORK_QUOTE_ANAXIMANDROS','GreatWriter_Background.dds'),
			('GREAT_WORK_PITAGORAS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_PITAGORAS',	'TXT_KEY_GREAT_WORK_QUOTE_PITAGORAS','GreatWriter_Background.dds'),
			('GREAT_WORK_EUCLID','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_EUCLID',	'TXT_KEY_GREAT_WORK_QUOTE_EUCLID','GreatWriter_Background.dds'),
			('GREAT_WORK_HERON','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_HERON',	'TXT_KEY_GREAT_WORK_QUOTE_HERON','GreatWriter_Background.dds'),
			('GREAT_WORK_DIOPANTOS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_DIOPANTOS',	'TXT_KEY_GREAT_WORK_QUOTE_DIOPANTOS','GreatWriter_Background.dds'),
			('GREAT_WORK_SOCRATES','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_SOCRATES',	'TXT_KEY_GREAT_WORK_QUOTE_SOCRATES','GreatWriter_Background.dds');
			--('GREAT_WORK_','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatWriter_Background.dds');
			
