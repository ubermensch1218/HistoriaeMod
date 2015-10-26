DELETE FROM Civilization_UnitClassOverrides;
DELETE FROM Civilization_BuildingClassOverrides;
DELETE FROM Civilization_FreeTechs;


DELETE FROM Trait_FreePromotionUnitCombats
WHERE PromotionType = 'PROMOTION_SENTRY';

DELETE FROM Leader_Traits
WHERE TraitType = 'TRAIT_INGENIOUS';

DELETE FROM Unit_FreePromotions
WHERE PromotionType = 'PROMOTION_SUPPLY';

DELETE FROM Unit_FreePromotions
WHERE PromotionType = 'PROMOTION_SENTRY';


