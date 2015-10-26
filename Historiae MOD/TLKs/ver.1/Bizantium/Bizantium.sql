--==========================================================================================================================
-- Units
--==========================================================================================================================
INSERT OR REPLACE INTO Units 	
			(Type, 									PrereqTech, Combat, Cost, Class, FaithCost,	RequiresFaithPurchaseEnabled,	Moves, 	CombatClass, Domain, DefaultUnitAI, Description, 							Civilopedia, 										Help, 										Strategy,								  			MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,							UnitFlagIconOffset,	UnitFlagAtlas,						MoveRate,	PortraitIndex, 	IconAtlas)
SELECT		('UNIT_BYZANTINE_DROMON'),			PrereqTech, Combat-2, Cost+220, ('UNITCLASS_RECON_SHIP'), FaithCost+220,	RequiresFaithPurchaseEnabled, Moves+1, ('UNITCOMBAT_NAVALMELEE'), Domain, DefaultUnitAI, ('TXT_KEY_UNIT_BYZANTINE_DROMON'), 	('TXT_KEY_CIV5_UNIT_BYZANTINE_DROMON_TEXT'), 	('TXT_KEY_UNIT_BYZANTINE_DROMON_HELP'), 	('TXT_KEY_UNIT_BYZANTINE_DROMON_STRATEGY'),  	MilitarySupport, MilitaryProduction, Pillage, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, ObsoleteTech,	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass,  ('ART_DEF_UNIT_U_CARTHAGE_QUINQUEREME'),  0,					('PHOENICIAN_BIREME_FLAG'),		MoveRate,	2, 				('PHOENICIA_ATLAS')
FROM Units WHERE (Type = 'UNIT_TRIREME');

--==========================================================================================================================
-- UnitGameplay2DScripts
--==========================================================================================================================
INSERT INTO UnitGameplay2DScripts 	
			(UnitType, 							SelectionSound, FirstSelectionSound)
SELECT		('UNIT_COURT_BUREAUCRAT'), 		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_WRITER');

INSERT OR REPLACE INTO UnitGameplay2DScripts 	
			(UnitType, 								SelectionSound, FirstSelectionSound)
SELECT		('UNIT_IKON'), 			SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_ARTIST');

INSERT OR REPLACE INTO UnitGameplay2DScripts 	
			(UnitType, 								SelectionSound, FirstSelectionSound)
SELECT		('UNIT_BYZANTIN_MISSIONARY'), 			SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_MUSICIAN');
--==========================================================================================================================
-- Unit_AITypes
--==========================================================================================================================
INSERT INTO Unit_AITypes 	
			(UnitType, 								UnitAIType)
SELECT		('UNIT_COURT_BUREAUCRAT'), 			UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_WRITER');

INSERT INTO Unit_AITypes 	
			(UnitType, 								UnitAIType)
SELECT		('UNIT_IKON'), 			UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_ARTIST');

INSERT INTO Unit_AITypes 	
			(UnitType, 								UnitAIType)
SELECT		('UNIT_BYZANTIN_MISSIONARY'), 			UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_MUSICIAN');


--==========================================================================================================================
-- Unit_Flavors
--==========================================================================================================================
INSERT INTO Unit_Flavors 	
			(UnitType, 								FlavorType, Flavor)
SELECT		('UNIT_COURT_BUREAUCRAT'), 			FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_WRITER');
INSERT INTO Unit_Flavors 	
			(UnitType, 								FlavorType, Flavor)
SELECT		('UNIT_IKON'), 			FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_ARTIST');
INSERT INTO Unit_Flavors 	
			(UnitType, 								FlavorType, Flavor)
SELECT		('UNIT_BYZANTIN_MISSIONARY'), 			FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_MUSICIAN');

--==========================================================================================================================	
-- Unit_ClassUpgrades
--==========================================================================================================================	
INSERT INTO Unit_ClassUpgrades 	
			(UnitType, 							UnitClassType)
SELECT		('UNIT_PHOENICIA_BIREME'),		UnitClassType
FROM Unit_ClassUpgrades WHERE (UnitType = 'UNIT_GALLEASS');

--==========================================================================================================================
-- Unit_FreePromotions
--==========================================================================================================================
INSERT INTO Unit_FreePromotions 	
			(UnitType, 							PromotionType)
SELECT		('UNIT_DORIPOROS'), 		PromotionType
FROM Unit_FreePromotions WHERE (UnitType = 'UNIT_SPEARMAN');

--=================================================================================
--���� -  ���� (38)
--================================================================================
INSERT OR REPLACE INTO Unit_UniqueNames  -
         (UnitType,                UniqueName, GreatWorkType)
VALUES      ('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_YUSEBIUS', 'GREAT_WORK_CONSTANTINUS_LIFE'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_MAXIMIANUS', 'GREAT_WORK_CONSTANTINUS_TRIUMPH'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_GREGORIUS', 'GREAT_WORK_GREG_SPEECH'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_LIBANIUS', 'GREAT_WORK_YULIANUS_DEATHSPEECH'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_ATENAIS', 'GREAT_WORK_BEARD_HATER'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_AMBROSIUS', 'GREAT_WORK_AMBROSIUS_BOOK'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_AMIANUS', 'GREAT_WORK_AMIANUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_HIERONIMUS', 'GREAT_WORK_HIERONIMUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_CLAUDIANUS', 'GREAT_WORK_CLAUDIANUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_EUTROPIUS', 'GREAT_WORK_EUTROPIUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_NISANIUS', 'GREAT_WORK_NISANIUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_PRISUCUS', 'GREAT_WORK_PRISUCUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_MARKELINUS', 'GREAT_WORK_MARKELINUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_YUDOCSIA', 'GREAT_WORK_YUDOCSIA'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_PAULUS', 'GREAT_WORK_PAULUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_YOHANNES', 'GREAT_WORK_YOHANNES'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_NARCESS', 'GREAT_WORK_NARCESS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_RUPINUS', 'GREAT_WORK_RUPINUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_PROKOPIUS', 'GREAT_WORK_PROKOPIUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_THEODORICUS', 'GREAT_WORK_THEODORICUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_KORIPUS', 'GREAT_WORK_KORIPUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_THEOPILACTUS', 'GREAT_WORK_THEOPILACTUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_AMANTIUS', 'GREAT_WORK_AMANTIUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_STAURAKIUS', 'GREAT_WORK_STAURAKIUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_EUPHEMIUS', 'GREAT_WORK_EUPHEMIUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_ANTIOCOS', 'GREAT_WORK_ANTIOCOS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_TRIBONIANUS', 'GREAT_WORK_TRIBONIANUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_GEORUGIUS', 'GREAT_WORK_GEORUGIUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_THEOPHANES', 'GREAT_WORK_THEOPHANES'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_SERGIUS', 'GREAT_WORK_SERGIUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_SOPHRONIUS', 'GREAT_WORK_SOPHRONIUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_NIKEPHORUS', 'GREAT_WORK_NIKEPHORUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_HIPATIUS', 'GREAT_WORK_HIPATIUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_HORMISDAS', 'GREAT_WORK_HORMISDAS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_DIAKONUS', 'GREAT_WORK_DIAKONUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_STEPHANUS', 'GREAT_WORK_STEPHANUS'),
			('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_KLEMENS', 'GREAT_WORK_KLEMENS');
			--('UNIT_COURT_BUREAUCRAT',   'TXT_KEY_COURT_BUREAUCRAT_', 'GREAT_WORK_');

INSERT OR REPLACE INTO GreatWorks
		(Type, GreatWorkClassType, Description, Quote, Image)
VALUES		('GREAT_WORK_CONSTANTINUS_LIFE','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_CONSTANTINUS_LIFE',	'TXT_KEY_GREAT_WORK_QUOTE_CONSTANTINUS_LIFE','GreatWriter_Background.dds'),
			('GREAT_WORK_CONSTANTINUS_TRIUMPH','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_CONSTANTINUS_TRIUMPH',	'TXT_KEY_GREAT_WORK_QUOTE_CONSTANTINUS_TRIUMPH','GreatWriter_Background.dds'),
			('GREAT_WORK_GREG_SPEECH','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_GREG_SPEECH',	'TXT_KEY_GREAT_WORK_QUOTE_GREG_SPEECH','GreatWriter_Background.dds'),
			('GREAT_WORK_YULIANUS_DEATHSPEECH','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_YULIANUS_DEATHSPEECH',	'TXT_KEY_GREAT_WORK_QUOTE_YULIANUS_DEATHSPEECH','GreatWriter_Background.dds'),
			('GREAT_WORK_BEARD_HATER','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_BEARD_HATER',	'TXT_KEY_GREAT_WORK_QUOTE_BEARD_HATER','GreatWriter_Background.dds'),
			('GREAT_WORK_AMBROSIUS_BOOK','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_AMBROSIUS_BOOK',	'TXT_KEY_GREAT_WORK_QUOTE_AMBROSIUS_BOOK','GreatWriter_Background.dds'),
			('GREAT_WORK_AMIANUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_AMIANUS',	'TXT_KEY_GREAT_WORK_QUOTE_AMIANUS','GreatWriter_Background.dds'),
			('GREAT_WORK_HIERONIMUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_HIERONIMUS',	'TXT_KEY_GREAT_WORK_QUOTE_HIERONIMUS','GreatWriter_Background.dds'),
			('GREAT_WORK_CLAUDIANUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_CLAUDIANUS',	'TXT_KEY_GREAT_WORK_QUOTE_CLAUDIANUS','GreatWriter_Background.dds'),
			('GREAT_WORK_EUTROPIUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_EUTROPIUS',	'TXT_KEY_GREAT_WORK_QUOTE_EUTROPIUS','GreatWriter_Background.dds'),
			('GREAT_WORK_NISANIUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_NISANIUS',	'TXT_KEY_GREAT_WORK_QUOTE_NISANIUS','GreatWriter_Background.dds'),
			('GREAT_WORK_PRISUCUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_PRISUCUS',	'TXT_KEY_GREAT_WORK_QUOTE_PRISUCUS','GreatWriter_Background.dds'),
			('GREAT_WORK_MARKELINUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_MARKELINUS',	'TXT_KEY_GREAT_WORK_QUOTE_MARKELINUS','GreatWriter_Background.dds'),
			('GREAT_WORK_YUDOCSIA','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_YUDOCSIA',	'TXT_KEY_GREAT_WORK_QUOTE_YUDOCSIA','GreatWriter_Background.dds'),
			('GREAT_WORK_PAULUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_PAULUS',	'TXT_KEY_GREAT_WORK_QUOTE_PAULUS','GreatWriter_Background.dds'),
			('GREAT_WORK_YOHANNES','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_YOHANNES',	'TXT_KEY_GREAT_WORK_QUOTE_YOHANNES','GreatWriter_Background.dds'),
			('GREAT_WORK_NARCESS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_NARCESS',	'TXT_KEY_GREAT_WORK_QUOTE_NARCESS','GreatWriter_Background.dds'),
			('GREAT_WORK_RUPINUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_RUPINUS',	'TXT_KEY_GREAT_WORK_QUOTE_RUPINUS','GreatWriter_Background.dds'),
			('GREAT_WORK_PROKOPIUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_PROKOPIUS',	'TXT_KEY_GREAT_WORK_QUOTE_PROKOPIUS','GreatWriter_Background.dds'),
			('GREAT_WORK_THEODORICUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_THEODORICUS',	'TXT_KEY_GREAT_WORK_QUOTE_THEODORICUS','GreatWriter_Background.dds'),
			('GREAT_WORK_KORIPUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_KORIPUS',	'TXT_KEY_GREAT_WORK_QUOTE_KORIPUS','GreatWriter_Background.dds'),
			('GREAT_WORK_THEOPILACTUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_THEOPILACTUS',	'TXT_KEY_GREAT_WORK_QUOTE_THEOPILACTUS','GreatWriter_Background.dds'),
			('GREAT_WORK_AMANTIUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_AMANTIUS',	'TXT_KEY_GREAT_WORK_QUOTE_AMANTIUS','GreatWriter_Background.dds'),
			('GREAT_WORK_STAURAKIUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_STAURAKIUS',	'TXT_KEY_GREAT_WORK_QUOTE_STAURAKIUS','GreatWriter_Background.dds'),
			('GREAT_WORK_EUPHEMIUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_EUPHEMIUS',	'TXT_KEY_GREAT_WORK_QUOTE_EUPHEMIUS','GreatWriter_Background.dds'),
			('GREAT_WORK_ANTIOCOS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_ANTIOCOS',	'TXT_KEY_GREAT_WORK_QUOTE_ANTIOCOS','GreatWriter_Background.dds'),
			('GREAT_WORK_TRIBONIANUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_TRIBONIANUS',	'TXT_KEY_GREAT_WORK_QUOTE_TRIBONIANUS','GreatWriter_Background.dds'),
			('GREAT_WORK_GEORUGIUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_GEORUGIUS',	'TXT_KEY_GREAT_WORK_QUOTE_GEORUGIUS','GreatWriter_Background.dds'),
			('GREAT_WORK_THEOPHANES','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_THEOPHANES',	'TXT_KEY_GREAT_WORK_QUOTE_THEOPHANES','GreatWriter_Background.dds'),
			('GREAT_WORK_SERGIUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_SERGIUS',	'TXT_KEY_GREAT_WORK_QUOTE_SERGIUS','GreatWriter_Background.dds'),
			('GREAT_WORK_SOPHRONIUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_SOPHRONIUS',	'TXT_KEY_GREAT_WORK_QUOTE_SOPHRONIUS','GreatWriter_Background.dds'),
			('GREAT_WORK_NIKEPHORUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_NIKEPHORUS',	'TXT_KEY_GREAT_WORK_QUOTE_NIKEPHORUS','GreatWriter_Background.dds'),
			('GREAT_WORK_HIPATIUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_HIPATIUS',	'TXT_KEY_GREAT_WORK_QUOTE_HIPATIUS','GreatWriter_Background.dds'),
			('GREAT_WORK_HORMISDAS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_HORMISDAS',	'TXT_KEY_GREAT_WORK_QUOTE_HORMISDAS','GreatWriter_Background.dds'),
			('GREAT_WORK_DIAKONUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_DIAKONUS',	'TXT_KEY_GREAT_WORK_QUOTE_DIAKONUS','GreatWriter_Background.dds'),
			('GREAT_WORK_STEPHANUS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_STEPHANUS',	'TXT_KEY_GREAT_WORK_QUOTE_STEPHANUS','GreatWriter_Background.dds'),
			('GREAT_WORK_KLEMENS','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_KLEMENS',	'TXT_KEY_GREAT_WORK_QUOTE_KLEMENS','GreatWriter_Background.dds');
			--('GREAT_WORK_','GREAT_WORK_LITERATURE','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatWriter_Background.dds');

--TEXT============================================
INSERT OR REPLACE INTO Language_KO_KR (Tag, Text)
VALUES
--������콺 ��
(
		'TXT_KEY_COURT_BUREAUCRAT_YUSEBIUS',
		'������콺'
	),(
		'TXT_KEY_GREAT_WORK_CONSTANTINUS_LIFE',
		'�ܽ�źƼ������ ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_CONSTANTINUS_LIFE',
		'�׷��� �Ұ潺���� �µ��� �η����� �����ϰ� ������ �ĸ��� ������ �¾�����, �Ų����� � ��å�� �����ϼ̴°�? ...... �� �ڽ��� �ٷ� �Ų��� ���Ͻ� ��������. ...... �׸��Ͽ�, �ذ� �ڿ��� ��Ģ�� �����Ͽ� ���� �Ʒ��� ����ɴ� �� �긮Ÿ�Ͼ��� �ٴٿ������� �����Ͽ� ���� ���� �������� ��� ������ �°� ������ ���� ���Ѱ� ���ݴ�. �װ��� �ٷ� �η��� ���� ���� �������� ��� ���� �������� ���� ����� ������� �ϱ� ���ؼ�����'
	),
	--���ù̾ƴ���	 ��
(
		'TXT_KEY_COURT_BUREAUCRAT_MAXIMIANUS',
		'���ù̾ƴ���'
	),(
		'TXT_KEY_GREAT_WORK_CONSTANTINUS_TRIUMPH',
		'�ܽ�źƼ���� ������'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_CONSTANTINUS_TRIUMPH',
		'������ ���� ������ ���� �� ���Ƿο� ���￡�� ������ �������� �¸��� �ŵ� �ż����� ������ Ȳ�� �ö��콺 �ܽ�źƼ�������� ��ġ��'
	),
	--�׷����콺
(
		'TXT_KEY_COURT_BUREAUCRAT_GREGORIUS',
		'�׷����콺'
	),(
		'TXT_KEY_GREAT_WORK_CONSTANTINUS_LIFE',
		'�� �׷����콺 ��ġ���߽�, ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_CONSTANTINUS_LIFE',
		'...... �⹦�ϰ� ���� ��, �ձ۰� �ְ� ��Ʋ�� ���, ��ƺ��� ���Ѱ�ģ ����, ��鸮�� ��������, Ŀ�ٶ� �ڿ��� �վ��� ������ ������ ����, �콺�ν��� ǥ��, �Ű��������� ���� ������ ����, ������ ����Ÿ��� ���� ����� ����, �� ��� �͵��� �и��� �Ű��� ������ �ƴ��� ���� �ְ� �־���.'
	),
	--���ٴϿ콺
(
		'TXT_KEY_COURT_BUREAUCRAT_LIBANIUS',
		'���ٴϿ콺'
	),(
		'TXT_KEY_GREAT_WORK_YULIANUS_DEATHSPEECH',
		' ���ٴϿ콺, �����ƴ��� ��ʽ� ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_YULIANUS_DEATHSPEECH',
		'�丮��� �̹߻簡 ���� 1õ ���̾��� ������ ���� �� ���ҽ��ϴ�. �������� ��û���� ���Ұ�, ȯ���� ���� ������ �ĸ� �����ٵ� ��������, �°� ������ ��հŸ��� �ڵ��� ��������ϴ�. �� ���̸� ��������� ����ó�� ������ Ȳ�ǿ��� ������ ��� ���̾��µ�, Ȳ���� ����� ����� �����߽��ϴ�.'
	),
	--���׳��̽�
(
		'TXT_KEY_COURT_BUREAUCRAT_ATENAIS',
		'���׳��̽�'
	),(
		'TXT_KEY_GREAT_WORK_BEARD_HATER',
		'�豳�� �����ƴ��� Ȳ��, ������ �����ϴ� �ڵ�'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_BEARD_HATER',
		'���� ���콺 ī�ÿ����� ������ ���� ���ѷ� �װ����� ����. �����׿������ �鼺���� �ູ�� ��⸦ ���� �� �������� �Ͼ���. �޿��� ȯ���� �� ���ó�� ���� �� ������ ��� �Ӹ��ӿ� �׷����Ҵ�. ������ ��ġ�� ����, ����, ���� �����ϴ� ��â, ��, ������ �����̵��� �� ���� �԰� ������ �������� �ż��� �泻�� ���̴� ����, �׷��� ���� ������ ������ �⵵, �������� ������ ���� ���̾���. ...... ���� ���� ������ ����ϱ� ���� �ÿ����� ������ ������ ��ĥ ���̳İ� ���� ������ �̷��� ����ߴ�. "�� ������ ������ ������ �����Խ��ϴ�. ������ �� �������� ���ݱ��� �ƹ��� �غ� ���� �ʾұ���."'
	),
	--�Ϻ�νÿ콺
(
		'TXT_KEY_COURT_BUREAUCRAT_AMBROSIUS',
		'�Ϻ�νÿ콺'
	),(
		'TXT_KEY_GREAT_WORK_AMBROSIUS_BOOK',
		'�� �Ϻ�νÿ콺, ������'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_AMBROSIUS_BOOK',
		'������� ���� ����� ������ �� �ٶ�ڴ°�? �ձ�? �Ƿ�? ���? �ƹ��� �ڽ��� ���̶��ص� �� ������ ������ ������ �˰� �ȴ�. Ȳ����� ������ ������, ���� ���� ª��. �ڽ��� ������ �ƴ϶� ������ ������ ���� ��ư��ٸ� �ƹ��� ���ֶ�� �ص� �ᱹ�� �뿹�� �����̴�.'
	),
	--�Ϲ̾ƴ���
(
		'TXT_KEY_COURT_BUREAUCRAT_AMIANUS',
		'�Ϲ̾ƴ���'
	),(
		'TXT_KEY_GREAT_WORK_AMIANUS',
		'�Ϲ̾ƴ���'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_AMIANUS',
		'���� ��ü�� ���İ� ��ź�� ������. �������� ��� �̿ܿ��� �ƹ� �Ҹ��� �鸮�� �ʾҴ�. �Ƴ��׵��� �ڽ��� �¾�� �ڶ� ������ �Ѱܳ��鼭 �Ӹ����� �������� ���¢����, �ڽ��� ���� ��Ӵ�, ������ ���� �Ƴ��� �ڽİ� ������ �߾��� ��� ���� ���� �� �����ֿ� �������� �ε��ѾȰ� ���� ������ ��Ѵ�. �渶�� �ǳ��ε��� �����ߴ�. ������� ������ ����� �� �ִ� ����� ������ ��������, ���� ���� ������ ������ ������ ����� ������ ���� �ΰ� ���� ���ۿ� ������.'
	),
	--�����δϹ���
(
		'TXT_KEY_COURT_BUREAUCRAT_HIERONIMUS',
		'�����δϹ���'
	),(
		'TXT_KEY_GREAT_WORK_HIERONIMUS',
		'�� �����δϹ���, ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_HIERONIMUS',
		'���濡�� ���ù����� �ҹ��� ��������. �θ��� �Զ��Ǿ���, �θ� �ùε��� ������ �ְ� ����� �����ٴ� ���̴�. ������ ����� ���ѱ��ڸ��� �θ��� �ٽ� ������ ���߰�, �̹� ����� ���� �ùε��� ���� ������� ���� �����̶�� �Ѵ�. ���� �� ���� ���� ���� ���� �޾� ���� �� ������ �ʴ´�. ���踦 �����ߴ� ���ð� ���� �������ϴ� �Ű԰� �ǵ´�...... �θ��� Į�� �ױ� ���� ��Ʒ� �׾�� �ִ�. ��Ƴ��Ƽ� ������ ���η� ������ ����� �幰 ������. �ؽ��� ��ƴ� ��Ȥ�� ��Ȳ�� ���Ҵ�. ������� ���� ��� ���̰�, ��̵��� ǰ���� �Ʊ⵵ ������ �ʴ´�.'
	),
	--Ŭ����ƴ���
(
		'TXT_KEY_COURT_BUREAUCRAT_CLAUDIANUS',
		'Ŭ����ƴ���'
	),(
		'TXT_KEY_GREAT_WORK_CLAUDIANUS',
		'Ŭ����ƴ���'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_CLAUDIANUS',
		'��� ������ �� �Ƹ��ٿ��� �������� ���� ���̸�, � ��Ҹ��� �׸� �����ϴ� �� ���ڸ� ���̴�. ����� ���� ��Ӵ��� �״� �θ���, �״��� ������ �� �������� ��� ������ �״��� ���� �� ������ ��Ģ���� �ۿ��ϴ±���.'
	),

	--��Ʈ���ǿ콺
(
		'TXT_KEY_COURT_BUREAUCRAT_EUTROPIUS',
		'��Ʈ���ǿ콺'
	),(
		'TXT_KEY_GREAT_WORK_EUTROPIUS',
		'Ŭ����ƴ���, ��Ʈ���ǿ�'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_EUTROPIUS',
		'� �̴� �ð��� ������ �ְ� �ƽþ��� ������ ������, � �̴� �Ƴ��� ������ ���ְ� �ø����� ������ ��´�. �� � �̴� ��Ÿ�Ͼ��� ������ ��� �ڱ� ������� ���� �ִ�, �ʹ� ��� �ŷ���. ��Ʈ���ǿ콺�� ���� ���ǿ��� ���� ������ ���� ������ ���� �ִ� ���ǥ�� �ɷ� �ִ�. ...... �� ȯ���� �Ϲ����� ��ġ �ӿ��� �ڽ��� �������� ��ġ�� �����, �ڱ� �ڽ��� �ȾƳѰ���� ������ �ٸ� ��� ���� �Ȱ��� �Ѵ�.'
	),
	--�ϻ�Ͽ콺
(
		'TXT_KEY_COURT_BUREAUCRAT_NISANIUS',
		'�ϻ�Ͽ콺'
	),(
		'TXT_KEY_GREAT_WORK_NISANIUS',
		'�ϻ��� �׷����콺'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_NISANIUS',
		'���� ����� ���������� ��ȭ�� �䱸�Ѵٸ� �״� �¾�� ���� �ڿ� �¾ �ڿ� ���� ö�� �� �丷�� ���� �� ���̴�. �� �� ������ ���� �󸶳İ� ���´ٸ� �״� "���ΰ� �� �����ϰ�, ���ڰ� �� �����ϴ�"�� ����� ���̴�. �� ��� �غ� �Ǿ����İ� ���´ٸ� ���ڴ� ������ ���ܳ��ٴ� ����� ���� ���̴�.'
	),
	--��������
(
		'TXT_KEY_COURT_BUREAUCRAT_PRISUCUS',
		'��������'
	),(
		'TXT_KEY_GREAT_WORK_PRISUCUS',
		'��������'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_PRISUCUS',
		'�ٸ� �߸��� ������ �츮 �տ��� �� �׸��� ǳ���ϰ� ������ ������ �� ���� ��ƿ�� �տ��� ���� �׸��� ��⸸ ���� ���̾���. ...... ��ȸ�� ������ ����鿡�Դ� �ݰ� ������ �� ���ܵ��� ���������� ��ƿ��� ������ ����鿡�Դ� �ݰ� ������ �� ���ܵ��� ���������� ��ƿ��� ������ ���� ���� ����ߴ�. ���� ���� ���� �ҹ��߰�, �����ϴٴ� �� �̿ܿ��� �ٸ� ������� ���� �ʰ� ���� �ٸ� �� ������. �ٸ� ��ŰŸ���ε�ó�� �������� �� ���̳� ��ȭ�� �ɼ�, ���� �簥���� ���̳� �������� ����� ���� �ʾҴ�.'
	),
	--�����̸�����
(
		'TXT_KEY_COURT_BUREAUCRAT_MARKELINUS',
		'�����̸�����'
	),(
		'TXT_KEY_GREAT_WORK_MARKELINUS',
		'�����̸�����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_MARKELINUS',
		'�θ��ε��� ���� ������ ...... � Ȳ���� ���Ҿ� ����߰� ....... �� �ڷδ� ��Ʈ���� �յ��� �θ��� �����ߴ�'
	),
	--�����þ�
(
		'TXT_KEY_COURT_BUREAUCRAT_YUDOCSIA',
		'�����þ�'
	),(
		'TXT_KEY_GREAT_WORK_YUDOCSIA',
		'�׿����� Ȳ��, �������ǿ콺, ������ ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_YUDOCSIA',
		'���� �¾ �ڴ� ������ ������ �װ� �����Դϴ�. �׷��� ���� Ȳ���� �η��� ���� ���� �� �ִ� ���Դϱ�? ���� ���� �� ������ �� Ȳ���� �ǻ��� ���� ���� ���̸�, �״� �������� Ȳ�Ķ�� ��Ī�� ������ ���� ���Դϴ�. �׷��� Ȳ�� ���ϲ����� ������ �����ø� �󸶵��� ���ʽÿ�. �츮�� �����̰� �ٴٿ��� �츮�� ����� �ֽ��ϴ�. ������ ���ϲ��� ������������ �� ���� ������ �������� ���� ���� ��ȸ���� ����� ���� ������ ���ʽÿ�. ���� "���ֻ� ���� ���� ����� ����"��� ������ ���� ���̿ɴϴ�'
	),
	--�Ŀ�罺
(
		'TXT_KEY_COURT_BUREAUCRAT_PAULUS',
		'�Ŀ�罺'
	),(
		'TXT_KEY_GREAT_WORK_PAULUS',
		'�Ŀ�罺, �ϱ�� �뼺���� �����Ͽ�'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_PAULUS',
		'..... ī�������������� ������ ����� �븮���� ĳ��, �������� ��ƿ����� ��ȫ���� ����� �ڼ��� �������� ������ �ɹ��̷� ������ ���� ���� ������ �븮���� ���´�. ���� �����̰� ������ �ѷ��� �ݾ��� �迡 �Ƿ� ���� ���� ���� �뷮���� ���۵ȴ�. ���ĸ�Ÿ������ ���޶���� �븮��, �̾ƽ� ���� ������ ����� �������� �ͺ��� �������� ������� ���칫��, ���ṫ�̰� ������ �븮���� ����ȴ�. ...... ������� �¾��� �޺����� �ޱ��� ���縦 �����. �������� ��� �� ��ο� ƴ�ٱ��Ͽ����� �ݺ��� ������ ����� ���簡, ��Ʈ���� �����꿡���� ���Ⱑ ���� ��� ǥǥ�鿡 ������ �ѷ� ���� ���� ������ ���´�. ���� �ٸ� ��ó�� ���̴� ������ ��� ���뵵 �ִ�. ��Ʈ�������� ���� �븮���� ...... �ٴٳ� ���޶��带 ���� ������ ����� ��鼭�� Ǯ�� �ӿ� �� �Ķ� ������ȭ ���⵵ �ϰ� �������� �����̰� ���� �� ���⵵ �ϴ�.'
	),
	--���ѳ׽�
	(
		'TXT_KEY_COURT_BUREAUCRAT_YOHANNES',
		'���ѳ׽�'
	),(
		'TXT_KEY_GREAT_WORK_YOHANNES',
		'ī�ĵ�Ű���� ���ѳ׽�, �������ǿ콺, ������ ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_YOHANNES',
		'����, ī��Ÿ�� ������ �����ϼ̴µ�, ���η� ���ٸ� �����̳� �ɸ��ϴ�. ���� ���� ���븦 �����Ѵٸ� �ٴ��� �ż� ǳ���� �̰ܳ��� �մϴ�. �츮 ���밡 �糭�� ������ �ص� �� �ҽ��� �츮���� �������� ���� 1���� ���� �ɸ� ���Դϴ�. �� ���� �츮�� �¸��ߴ� �ص� ��Ż���ƿ� ��ĥ���ư� ���� �տ� �ִ� �� ������ī�� ������ ���� �����ϴ�. ������ �й��Ѵٸ� �츮�� ������ ������ �� ������ ���� ��ü�� �������� ���Դϴ�. ������ �����Ѵ� �ص� �������� �̵��� ���� ���ϰ�, �����Ѵٸ� �� �����ϴ� ������ �ĸ��� �������� �𸨴ϴ�.'
	),
	--��������
	(
		'TXT_KEY_COURT_BUREAUCRAT_NARCESS',
		'��������'
	),(
		'TXT_KEY_GREAT_WORK_NARCESS',
		'��������, �����ǿ콺, ������ ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_NARCESS',
		'���� ���ѳ׽��� �ѻ�ɰ��� ����� �����ߴٸ� ���̴ϸ� ������ ���� �׸� �ѻ�ɰ� ������� ó���ص� �����ϴ�. ������ �װ� ������ ���� ������ �Ǽ� ������ �׸� ¡���Ѵٸ� �װ��� Ȳ�� ���Ͽ� �츮 �Źε��� �̸����� ¡���ϴ� ���� �ƴ��� ����ؾ� �մϴ�.'
	),
	--���Ǵ���
	(
		'TXT_KEY_COURT_BUREAUCRAT_RUPINUS',
		'���Ǵ���'
	),(
		'TXT_KEY_GREAT_WORK_RUPINUS',
		'��ƿ��, �θ� ���ο��� ���� ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_RUPINUS',
		'�� �ұ��� ������ �����п��Դ� �и��� �������� �� �������� �ص�, �� �׿��������� �Ƹ����Ÿ�� �����ϴ� ���� ���ȴ� ������ �̵��ݾ� ��ﳯ ���Դϴ�. ...... ���� �θ� ģ�����̿�, �� �����ڵ鿡 ���� ���� ���� �츮�� �ƴ� �׸����ε��� �ڱ� �鼺�鿡�� �ϴ� ������ ���� ���ʽÿ�. ���� ������ Ư���� ������ �߸����� ���������� ���Ѵٰ� �������� ���ʽÿ�. �����п��� ���ϳ��, �츮�� �� ��� ���� �ٲٰ� ��Ż���Ƹ� �������� �վƱͿ��� ���� ���Դϴ�. �� ���� ������ �� �ִ� ���� �츮�� ��⸸�� �ƴ϶�, �� ����ڵ鿡 �װ������ν� �츮�� ���� ���Ǹ� �޵�� �ִٴ� Ȯ���Դϴ�.'
	),
	--�������ǿ콺
	(
		'TXT_KEY_COURT_BUREAUCRAT_PROKOPIUS',
		'�������ǿ콺'
	),(
		'TXT_KEY_GREAT_WORK_PROKOPIUS',
		'�������ǿ콺, ������ ���� II'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_PROKOPIUS',
		'���� ȣ���ο쿡�� ���ư��� �ִ��� ���� ������� ����ߴ�. �ڱⰡ ���� �屺�� �糪�̴��, ��� �������� �����ο��, �װ� �Ŵ��� ����鵵 �ѹ��� �� ���� ���� �ڵ��̶�� ���̾���. �θ��ε��� �Ҹ� ���� �����縮�콺�� �����ߴ�. �״� ������ �ָ��޸��� ��Ƽ�Խ��� ������ ����Ƽ������ �������� �����ٵ� �̹� �Ͽ� ���� ū �ںν��� ���� ���ߴ�.'
	),
	--�׿�������
	(
		'TXT_KEY_COURT_BUREAUCRAT_THEODORICUS',
		'�׿�������'
	),(
		'TXT_KEY_GREAT_WORK_THEODORICUS',
		'�����縮�콺, ����Ƽ�Ͼƴ��� �������� ������ ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_THEODORICUS',
		'����, ������ ��������� �츮 ������ ��ټ��� ���� ���� ��ġ �Ʒ� �����ϰ� �ֽ��ϴ�. ���� �����縮�콺�� ��Ż���ƿ� ������ �Ϳ��� �����ϽŴٸ� ���� �غ�� �̴�ε� �Ϻ��մϴ�. ������ ���� �̱���� �� �̻��� ��ġ�� ���ؾ� �մϴ�. ����� ���� ���� �ƹ��͵� �� �� �����ϴ�. �켱 �� ��ȣ������ �⺴�� ���� ��� ���� �ֽʽÿ�. ��°��, ������ ����� �߸��� �δ븦 ���� ���� �ֽʽÿ�. ��°��, ����鿡�� �޷Ḧ �� ���� �����ֽʽÿ�.'
	),
	--�ڸ�Ǫ��
	(
		'TXT_KEY_COURT_BUREAUCRAT_KORIPUS',
		'�ڸ�Ǫ��'
	),(
		'TXT_KEY_GREAT_WORK_KORIPUS',
		'����Ƽ���� 2�� Ȳ��, �ڶ�Ǫ���� �ο�, ����Ƽ������ ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_KORIPUS',
		'�� �ƹٸ����� �糪�� ����ũ��, ���Ǵ������� ��Ÿ����, �� �ۿ� ���� ������, �׵��� ��ġ�� ���γ��� ��濡�� �츮�� ������ �´�. �� �糪�� ������ ����ġ���� � ���� ã�ƾ� �ϰڴ°�? ��, �θ��� ���� ������°�?'
	),
	--�׿��ʶ�����
	(
		'TXT_KEY_COURT_BUREAUCRAT_THEOPILACTUS',
		'�׿��ʶ�����'
	),(
		'TXT_KEY_GREAT_WORK_THEOPILACTUS',
		'�׿��ʶ�����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_THEOPILACTUS',
		'���� ������ ���°� �̼Ҹ� ���� �Ǿ����Ƿ�, ȣ�޷ν� ������ ǥ���ϸ� �߸����� �ұ����� �����, '��̸� ������'�� �� ������ Į�� �ͺ����� ������ �ʰ� �Ǿ����Ƿ� Ȳ���� ���븦 �������� �̵����״�.'
	),
	--�Ƹ�Ƽ�콺
	(
		'TXT_KEY_COURT_BUREAUCRAT_AMANTIUS',
		'�Ƹ�Ƽ�콺'
	),(
		'TXT_KEY_GREAT_WORK_AMANTIUS',
		'��������� ���ѳ׽�, ��ȸ��'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_AMANTIUS',
		'����Ƽ���� Ȳ���� ���Ⱑ ����ɾ��� �� �״� ���� ������ �ɾƼ� �������� ������ �а� ���Ҹ� �� ���� ���� �ϸ鼭 ��ſ��ߴ�. ������ �״� �����ϸ� ������ �ֵθ��� �Ͼ�����, ������ �ִ� ����� �ڴ�� ���ȴ�.'
	),
	--��Ÿ���Ű�콺
	(
		'TXT_KEY_COURT_BUREAUCRAT_STAURAKIUS',
		'��Ÿ���Ű�콺'
	),(
		'TXT_KEY_GREAT_WORK_STAURAKIUS',
		'���츮Ű�콺 Ȳ��, ó�����ϱ� ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_STAURAKIUS',
		'���̽ÿ�, ����� �����Ͻʴϴ�. ����� �Ǵ��� �����Ͻʴϴ�.'
	),
	--����̿콺
	(
		'TXT_KEY_COURT_BUREAUCRAT_EUPHEMIUS',
		'����̿콺'
	),(
		'TXT_KEY_GREAT_WORK_EUPHEMIUS',
		'�̶�Ŭ������ Ȳ��, ��ī���� ó���ϱ� ������'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_EUPHEMIUS',
		'�״밡 ������ �� �÷� ���� ���ΰ�?'
	),
	--��Ƽ���ڽ�
	(
		'TXT_KEY_COURT_BUREAUCRAT_ANTIOCOS',
		'��Ƽ���ڽ�'
	),(
		'TXT_KEY_GREAT_WORK_ANTIOCOS',
		'��ī�� Ȳ��, ó�����ϱ� ������ ���� �̶�Ŭ������ Ȳ���� ������ ���� ���'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_ANTIOCOS',
		'�״밡 �ٽ����ٸ� �� ���ڴ°�?'
	),
	--Ʈ�����Ͼƴ���
	(
		'TXT_KEY_COURT_BUREAUCRAT_TRIBONIANUS',
		'Ʈ�����Ͼƴ���'
	),(
		'TXT_KEY_GREAT_WORK_TRIBONIANUS',
		'������ �丣�þ��� ���ѻ� ȣ���ο� 2��, �̶�Ŭ������ Ȳ������ ������ ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_TRIBONIANUS',
		'���� ����� ���̸�, �� ������ �հ� �����̸�, ������ ȣ�������� ȣ���ο��� �Ƶ��� õ�ϰ� ������ �뿹 �̶�Ŭ���������� ���ϳ��. �ʴ� �츮�� ���踦 �ź��ϰ� �����θ� ���ֶ�� Ī�ϰ� �ִ�. �ʴ� �츮�� ������ ���Ѱ� �츮�� ���ε��� ���̰� �ִ�. ���� �� ���� ����� �츮�� ���Ӿ��� �������� �ִ�. �� ���� ���� �׸����ε��� ������ ��������? �ʴ� ���� �ϴ´ٰ� ���Ѵ�. �׷��ٸ� �� ���� �����Ͽ� �� �տ��� ī�̼�����, ����췽, �˷���帮�Ƹ� ���Ѿ� ���� �ʴ���? ...... ���� �ܽ�źƼ���ñ��� �ı����� ���� �ٷ� �ƴ°�?'
	),
	--�Կ�����콺
	(
		'TXT_KEY_COURT_BUREAUCRAT_GEORUGIUS',
		'�Կ�����콺'
	),(
		'TXT_KEY_GREAT_WORK_GEORUGIUS',
		' �ǽõ���� �Կ�����콺'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_GEORUGIUS',
		'���ֿ� ���� �θ��� ���۰����� Ȳ���� ȯ�� ã�Ұ� �ڽ��� �����ӿ��� �Ͼ�� �ż��� ������ ������.'
	),
	--�׿��ĳ׽�
	(
		'TXT_KEY_COURT_BUREAUCRAT_THEOPHANES',
		'�׿��ĳ׽�'
	),(
		'TXT_KEY_GREAT_WORK_THEOPHANES',
		'������ �丣�þ��� �屺 ���帣�ٶ���, ��ȸ�� �׿��ĳ׽�, �����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_THEOPHANES',
		'���� Ȳ��, �̶�Ŭ�������� ���ƶ�! ��ġ ��� �� ���ó�� �� ȭ��� â�� ���� �η������� �ʴ±���!'
	),
	--������콺
	(
		'TXT_KEY_COURT_BUREAUCRAT_SERGIUS',
		'������콺'
	),(
		'TXT_KEY_GREAT_WORK_SERGIUS',
		'������콺 �ܽ�źƼ���� �Ѵ��ֱ�, �̶�Ŭ�������� �� �丣�þ� ���� ���� �޼���'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_SERGIUS',
		'�ϴ����� ǰ �ȿ��� ��ſ��϶� ...... ��(������ �丣�þ��� ���ѻ� ȣ���ο� 2��)�� ������ �ִԲ��� �ƿ� �¾�� �ʾҴ���� ������ ���̶�� �����ϼ̴� ������ ���ٿ� �Ȱ��� ���� �ɾ����ϴ�. ......'
	),
	--�����δϿ콺
	(
		'TXT_KEY_COURT_BUREAUCRAT_SOPHRONIUS',
		'�����δϿ콺'
	),(
		'TXT_KEY_GREAT_WORK_SOPHRONIUS',
		'�����δϿ콺 ����췽 �Ѵ��ֱ�, �츶������ ���ɴ��� ����췽���� ���º��� 24�� 15���� �ο��ϸ�'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_SOPHRONIUS',
		'����, ������ �ٴϿ��� ���� ��ó�� ����� ������ ���� �ŷ��� ���� �� �ֵ���.'
	),
	--�������罺
	(
		'TXT_KEY_COURT_BUREAUCRAT_NIKEPHORUS',
		'�������罺'
	),(
		'TXT_KEY_GREAT_WORK_NIKEPHORUS',
		'�������罺'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_NIKEPHORUS',
		'��(�̶�Ŭ������)�� �Һ��� �� ������ �Һ��� �󱼿� Ƣ�� �ʵ��� �ϱ� ���� �� �κп� ���ڸ� ���� ���ƾ߸� �ߴ�.'
	),
	--����Ƽ�콺
	(
		'TXT_KEY_COURT_BUREAUCRAT_HIPATIUS',
		'����Ƽ�콺'
	),(
		'TXT_KEY_GREAT_WORK_HIPATIUS',
		'�ܽ�ź�� 2�� Ȳ��, �����ϸ� �� ���ο��� ���� ����, �׿��ĳ׽�'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_HIPATIUS',
		'���� �ƹ��� �ܽ�źƼ������ �ڽ��� �ƹ������� ���� �Ҿƹ����� �̶�Ŭ�������� �Բ� �������� ���� �ٽ������� �Ҿƹ����� ���� �ڿ��� ���� ª�� �Ⱓ�� ������ �־����ϴ�. ����� ����Ƽ���� �������� ���� ������ ���� ���ư� ������ ���� ������� �Ѿư� ���̾����ϴ�. �� ������ ������ �׳డ �̶�Ŭ�ο����� ��ģ���� ���� ���� �Ƶ� �̶�Ŭ�γ����� ���ؼ������ϴ�. �������� ǥ���� �������ٵ� ����Ƽ���� �׳��� �Ƶ��� �����ϰ� �������� �������� �ϴ� �� �⿩�߽��ϴ�. �θ� ������ ���� ����� �������� ���� �����ؼ��� �� �ȴٴ� ���� ���� �� ���Դϴ�. �̷ν� ������ ����� ���� �θ� �˷������ϴ�. �׷��Ƿ� �����ε� �������� ������ ���� �Ǵ����ν� ���� �鼺���� �����ϰ� �̲� �� �ֵ��� �����ֽñ� �ٶ��ϴ�.'
	),
	--ȣ���̽��ٽ�
	(
		'TXT_KEY_COURT_BUREAUCRAT_HORMISDAS',
		'ȣ���̽��ٽ�'
	),(
		'TXT_KEY_GREAT_WORK_HORMISDAS',
		'����Ƽ�Ͼƴ��� 2�� Ȳ��, ��ǳ�� ���߷��� �ڽſ��� �ݴ��� �ڵ��� ����ְڴ� ����ϴ� �⵵�� �ؾ� �Ѵٴ� �ڸ�����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_HORMISDAS',
		'�� ���̶� ����ִ��� ���� ���� ���� ���� ���� �װڴ�'
	),
	--����ڴ���
	(
		'TXT_KEY_COURT_BUREAUCRAT_DIAKONUS',
		'����ڴ���'
	),(
		'TXT_KEY_GREAT_WORK_DIAKONUS',
		'�Ŀ�罺 ����ڴ���, �ҹٸ������� ����'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_DIAKONUS',
		'��(����Ƽ�Ͼƴ��� 2�� Ȳ��)�� ��ġ �౸�ۿ��� �๰�� ���ĳ����� �ƹ������� �ʰ� �ڽſ��� �ݴ��ϴ� ����� ���̶�� ���ߴ�.'
	),
	--�����Ĵ���
	(
		'TXT_KEY_COURT_BUREAUCRAT_STEPHANUS',
		'�����Ĵ���'
	),(
		'TXT_KEY_GREAT_WORK_STEPHANUS',
		'���ڹ̻�(�� �� �����Ĵ����� �ϴ�� ����)'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_STEPHANUS',
		'����ɸ������� ���� ���� ���� �ִ� �׸������� ���ָ� ǥ���� ������ũ�� ���� �� �ڸ��� ��� �� �׸��� ������ ��, ������ ������, �������� �������� �� ǳ��ȭ����. �Ѵ��ֱ��� ������ �渶�� ��� ����� ������ �׸���� ȭ���ϰ� ��ĵǾ���.'
	),
	--Ŭ���ེ
	(
		'TXT_KEY_COURT_BUREAUCRAT_KLEMENS',
		'Ŭ���ེ'
	),(
		'TXT_KEY_GREAT_WORK_KLEMENS',
		'�˷���帮���� Ŭ���ེ, �������罺�� �ο�'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_KLEMENS',
		'�ǹ��� �������� ���� ���� �׸��� ��ġ �ǹ�ó�� �Ǹ��ϴ�. �׷��� ������ ������ �� �׸��� ���� �Ҵ´�. ��ó�� ���缺�� ������ �巯���� �ѿ����� ���ε� �� �ִ�.'
	);


INSERT OR REPLACE INTO Unit_UniqueNames 
         (UnitType,                UniqueName, GreatWorkType)
VALUES      ('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', ''),
			('UNIT_IKON',   '', '');


INSERT OR REPLACE INTO GreatWorks
		(Type, GreatWorkClassType, Description, Image)
VALUES		('GREAT_WORK_','GREAT_WORK_ART','TXT_KEY_GREAT_WORK_',	'GreatWriter_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_ART','TXT_KEY_GREAT_WORK_',	'GreatWriter_Background.dds');
			--('GREAT_WORK_','GREAT_WORK_ART','TXT_KEY_GREAT_WORK_',	'GreatWriter_Background.dds');


--TEXT============================================
INSERT OR REPLACE INTO Language_KO_KR (Tag, Text)
VALUES

(
		'TXT_KEY_CIV_MC_CHINOOK_ADJECTIVE',
		'Chinookan'
	),
	(
		'TXT_KEY_CIV_MC_CHINOOK_ADJECTIVE',
		'Chinookan'
	);

--======================���ǰ�=========================
INSERT OR REPLACE INTO Unit_UniqueNames 
         (UnitType,                UniqueName, GreatWorkType)
VALUES      ('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_'),
			('UNIT_BYZANTIN_MISSIONARY',   'TXT_KEY_BYZANTIN_MISSIONARY_', 'GREAT_WORK_');
			--('UNIT_BYZANTIN_MISSIONARY',   '', '');

INSERT OR REPLACE INTO GreatWorks
		(Type, GreatWorkClassType, Description, Quote, Image)
VALUES		('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds'),
			('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds');
			--('GREAT_WORK_','GREAT_WORK_MUSIC','TXT_KEY_GREAT_WORK_',	'TXT_KEY_GREAT_WORK_QUOTE_','GreatMusician_Background.dds');

--TEXT============================================
INSERT OR REPLACE INTO Language_KO_KR (Tag, Text)
VALUES

(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	),
(
		'TXT_KEY_BYZANTIN_MISSIONARY_',
		'Chinookan'
	),
	(
		'TXT_KEY_GREAT_WORK_',
		'Chinookan'
	),(
		'TXT_KEY_GREAT_WORK_QUOTE_',
		'Chinookan'
	);	

--THEMA========================================================

INSERT INTO Improvement_ResourceTypes (ImprovementType, ResourceType)
SELECT 'IMPROVEMENT_THEMA', Type FROM Resources;


INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
SELECT 'IMPROVEMENT_THEMA', Type FROM Terrains;

INSERT INTO Improvement_ValidImprovements (ImprovementType, PrereqImprovement)
SELECT 'IMPROVEMENT_THEMA', Type FROM Improvements;

INSERT OR REPLACE INTO Unit_Builds
			(UnitType, 						BuildType)
SELECT		('UNIT_COURT_BUREAUCRAT'), BuildType
FROM Unit_Builds WHERE (UnitType = 'UNIT_WORKER');    


      
