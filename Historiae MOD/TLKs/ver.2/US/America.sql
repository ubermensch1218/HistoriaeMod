--==========================================================================================================================
-- UnitPromotions
--==========================================================================================================================	
INSERT INTO UnitPromotions 
			(Type, 									Description, 								Help, 												Sound, 				AttackMod,	DefenseMod,	AdjacentTileHealChange, CityAttack, CannotBeChosen, PortraitIndex,	IconAtlas, 			PediaType, 			PediaEntry)
VALUES		('PROMOTION_US_SPEECH_1',		'TXT_KEY_PROMOTION_US_SPEECH_1',	'TXT_KEY_PROMOTION_US_SPEECH_1_HELP', 		'AS2D_IF_LEVELUP',	15, 		0, 			0, 						0, 			1, 				59, 			'ABILITY_ATLAS', 	'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_US_SPEECH_1');
--==========================================================================================================================
-- UnitPromotions_UnitCombats
--==========================================================================================================================	
INSERT INTO UnitPromotions_UnitCombats
			(PromotionType, 						UnitCombatType)
SELECT 		'PROMOTION_US_SPEECH_1',		Type
FROM UnitCombatInfos;
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================	
-- Policies
--==========================================================================================================================	
INSERT INTO Policies
			(Type, 							Description,							UnitGoldMaintenanceMod, UnhappinessMod, GreatGeneralRateModifier, 	GreatAdmiralRateModifier, 	UnitPurchaseCostModifier, 	MilitaryProductionModifier)
VALUES		('POLICY_US_SPEECH_1',	'TXT_KEY_US_SPEECH_1_BUTTON',	0,						0,				0, 							0, 							0, 							0),
			('POLICY_US_SPEECH_2',	'TXT_KEY_US_SPEECH_2_BUTTON',	-15,					0,				0, 							0, 							0, 							0),
			('POLICY_US_SPEECH_3', 'TXT_KEY_US_SPEECH_3_BUTTON',	0,						0,				30, 						30, 						0, 							0),
			('POLICY_US_SPEECH_4',	'TXT_KEY_US_SPEECH_4_BUTTON',	0,						0,				0, 							0, 							0, 							20),
			('POLICY_US_SPEECH_5',	'TXT_KEY_US_SPEECH_5_BUTTON',	0,						-15,			0, 							0, 							0, 							0),
			('POLICY_US_SPEECH_6',	'TXT_KEY_US_SPEECH_6_BUTTON',	0,						0,				0, 							0, 							-15, 						0);			
--==========================================================================================================================	
-- Policy_FreePromotions
--==========================================================================================================================	
INSERT INTO Policy_FreePromotions 
			(PolicyType, 						PromotionType)
VALUES		('POLICY_US_SPEECH_1', 	'PROMOTION_US_SPEECH_1');
