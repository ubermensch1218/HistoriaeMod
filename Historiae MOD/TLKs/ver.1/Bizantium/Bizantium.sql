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
--걸작 -  문학 (38)
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
--유세비우스 ㅁ
(
		'TXT_KEY_COURT_BUREAUCRAT_YUSEBIUS',
		'유세비우스'
	),(
		'TXT_KEY_GREAT_WORK_CONSTANTINUS_LIFE',
		'콘스탄티누스의 생에'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_CONSTANTINUS_LIFE',
		'그러한 불경스러운 태도가 인류에게 만연하고 국가는 파멸의 위협을 맞았으니, 신께서는 어떤 대책을 강구하셨는가? ...... 나 자신이 바로 신께서 택하신 도구였다. ...... 그리하여, 해가 자연의 법칙에 순종하여 수평선 아래로 가라앉는 먼 브리타니아의 바다에서부터 시작하여 나는 신의 도움으로 당시 만연한 온갖 형태의 악을 내쫓고 없앴다. 그것은 바로 인류가 나를 통해 깨달음을 얻고 신의 성스러운 법에 제대로 순종토록 하기 위해서였다'
	),
	--막시미아누스	 ㅁ
(
		'TXT_KEY_COURT_BUREAUCRAT_MAXIMIANUS',
		'막시미아누스'
	),(
		'TXT_KEY_GREAT_WORK_CONSTANTINUS_TRIUMPH',
		'콘스탄티누스 개선문'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_CONSTANTINUS_TRIUMPH',
		'폭군과 그의 무리를 상대로 한 정의로운 전쟁에서 위대한 정신으로 승리를 거둔 신성으로 가득찬 황제 플라비우스 콘스탄티누스에게 바치다'
	),
	--그레고리우스
(
		'TXT_KEY_COURT_BUREAUCRAT_GREGORIUS',
		'그레고리우스'
	),(
		'TXT_KEY_GREAT_WORK_CONSTANTINUS_LIFE',
		'성 그레고리우스 나치안추스, 연설'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_CONSTANTINUS_LIFE',
		'...... 기묘하게 굽은 목, 둥글게 휘고 뒤틀린 어깨, 쏘아보는 듯한거친 눈빛, 흔들리는 걸음걸이, 커다란 코에서 뿜어져 나오는 오만한 숨결, 우스꽝스런 표정, 신경질적으로 터져 나오는 웃음, 언제나 까딱거리는 고개와 더듬는 말투, 이 모든 것들은 분명히 거강한 성격이 아님을 말해 주고 있었다.'
	),
	--리바니우스
(
		'TXT_KEY_COURT_BUREAUCRAT_LIBANIUS',
		'리바니우스'
	),(
		'TXT_KEY_GREAT_WORK_YULIANUS_DEATHSPEECH',
		' 리바니우스, 율리아누스 장례식 연설'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_YULIANUS_DEATHSPEECH',
		'요리사와 이발사가 각각 1천 명이었고 집사의 수는 더 많았습니다. 종복들은 엄청나게 많았고, 환관의 수는 봄날으 파리 떼보다도 많았으며, 온갖 종류의 빈둥거리는 자들이 들끓었습니다. 그 게이른 밥벌레들의 도피처는 오로지 황실에서 직함을 얻는 것이었는데, 황금한 덩어리면 충분히 가능했습니다.'
	),
	--아테나이스
(
		'TXT_KEY_COURT_BUREAUCRAT_ATENAIS',
		'아테나이스'
	),(
		'TXT_KEY_GREAT_WORK_BEARD_HATER',
		'배교자 율리아누스 황제, 수염을 증오하는 자들'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_BEARD_HATER',
		'나는 제우스 카시오스의 신전을 나와 서둘러 그곳으로 갔다. 다프네에서라면 백성들의 행복과 사기를 느낄 수 있으리라 믿었다. 꿈에서 환영을 본 사람처럼 나는 그 행진이 어떨까 머릿속에 그려보았다. 제물로 바치는 짐숭, 제주, 신을 찬미하는 합창, 향, 도시의 젊은이들이 흰 옷을 입고 존경의 마음으로 신성한 경내에 모이는 광경, 그러나 내가 신전에 들어가보니 향도, 보리떡고 제물도 없는 것이었다. ...... 신의 연례 축제를 기념하기 위해 시에서는 무엇을 제물로 바칠 것이냐고 묻자 사제는 이렇게 대답했다. "제 집에서 거위를 제물로 가져왔습니다. 하지만 시 측에서는 지금까지 아무런 준비도 하지 않았군요."'
	),
	--암브로시우스
(
		'TXT_KEY_COURT_BUREAUCRAT_AMBROSIUS',
		'암브로시우스'
	),(
		'TXT_KEY_GREAT_WORK_AMBROSIUS_BOOK',
		'성 암브로시우스, 서한집'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_AMBROSIUS_BOOK',
		'생명수를 맛본 사람이 무엇을 더 바라겠는가? 왕국? 권력? 재산? 아무리 자신이 왕이라해도 이 세상은 비참한 것임을 알게 된다. 황제라는 직위는 덧없고, 삶은 몹시 짧다. 자신의 의지가 아니라 남들의 의지에 따라 살아간다면 아무리 군주라고 해도 결국은 노예일 따름이다.'
	),
	--암미아누스
(
		'TXT_KEY_COURT_BUREAUCRAT_AMIANUS',
		'암미아누스'
	),(
		'TXT_KEY_GREAT_WORK_AMIANUS',
		'암미아누스'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_AMIANUS',
		'도시 전체가 슬픔과 비탄에 빠졌다. 곳곳에서 통곡 이외에는 아무 소리도 들리지 않았다. 아낙네들은 자신이 태어나고 자란 집에서 쫓겨나면서 머리털을 쥐어뜯으며 울부짖었고, 자식을 잃은 어머니, 남편을 잃은 아내는 자식과 남편의 추억이 깃든 집을 떠날 때 문설주와 문지방을 부둥켜안고 펑펑 눈물을 쏟앗다. 길마다 피난민들이 가득했다. 사람들은 저마다 운반할 수 있는 재산을 가지고 나왔으나, 짐을 실을 가축이 없었기 때문에 값비싼 세간은 남겨 두고 떠날 수밖에 없었다.'
	),
	--히에로니무스
(
		'TXT_KEY_COURT_BUREAUCRAT_HIERONIMUS',
		'히에로니무스'
	),(
		'TXT_KEY_GREAT_WORK_HIERONIMUS',
		'성 히에로니무스, 편지'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_HIERONIMUS',
		'서방에서 무시무시한 소문이 전해졌다. 로마가 함락되었고, 로마 시민들이 몸값을 주고 목숨을 건졌다는 것이다. 하지만 재산을 빼앗기자마자 로마는 다시 포위를 당했고, 이미 재산을 잃은 시민들은 이제 목숨마저 잃을 형편이라고 한다. 지금 이 글을 쓰는 나도 목이 메어 말이 잘 나오지 않는다. 세계를 정복했던 도시가 이제 정복당하는 신게가 되돠니...... 로마는 칼로 죽기 전에 기아로 죽어가고 있다. 살아남아서 적에게 포로로 잡히는 사람이 드물 정도다. 극심한 기아는 참혹한 상황을 낳았다. 사람들은 서로 잡아 죽이고, 어미들은 품속의 아기도 돌보지 않는다.'
	),
	--클라우디아누스
(
		'TXT_KEY_COURT_BUREAUCRAT_CLAUDIANUS',
		'클라우디아누스'
	),(
		'TXT_KEY_GREAT_WORK_CLAUDIANUS',
		'클라우디아누스'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_CLAUDIANUS',
		'어떠한 가슴도 그 아름다움을 포착하지 못할 것이며, 어떤 목소리도 그를 찬양하는 데 모자를 것이다. 무기와 법의 어머니인 그대 로마여, 그대의 망령은 온 세상으로 울려 퍼지고 그대의 법은 온 세상의 법칙으로 작용하는구나.'
	),

	--유트로피우스
(
		'TXT_KEY_COURT_BUREAUCRAT_EUTROPIUS',
		'유트로피우스'
	),(
		'TXT_KEY_GREAT_WORK_EUTROPIUS',
		'클라우디아누스, 유트로피움'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_EUTROPIUS',
		'어떤 이는 시골의 주택을 주고 아시아의 관직을 받으며, 어떤 이는 아내의 보석을 내주고 시리아의 관직을 얻는다. 또 어떤 이는 비타니아의 관직을 사며 자기 조상들의 집을 주니, 너무 비싼 거래다. 유트로피우스의 공식 대기실에는 여러 지방의 관직 가격을 보여 주는 요금표가 걸려 있다. ...... 그 환과은 일반적인 수치 속에서 자신의 개인적인 수치를 지우며, 자기 자신을 팔아넘겼듯이 이제는 다른 모든 것을 팔고자 한다.'
	),
	--니사니우스
(
		'TXT_KEY_COURT_BUREAUCRAT_NISANIUS',
		'니사니우스'
	),(
		'TXT_KEY_GREAT_WORK_NISANIUS',
		'니사의 그레고리우스'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_NISANIUS',
		'만약 당신이 누군가에게 변화를 요구한다면 그는 태어나지 않은 자와 태어난 자에 대한 철학 한 토막을 말해 줄 것이다. 빵 한 덩이의 값이 얼마냐고 묻는다면 그는 "성부가 더 위대하고, 성자가 더 열등하다"고 대답할 것이다. 또 목욕 준비가 되었느냐고 묻는다면 성자는 무에서 생겨났다는 대답을 들을 것이다.'
	),
	--프리스쿠스
(
		'TXT_KEY_COURT_BUREAUCRAT_PRISUCUS',
		'프리스쿠스'
	),(
		'TXT_KEY_GREAT_WORK_PRISUCUS',
		'프리스쿠스'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_PRISUCUS',
		'다른 야만족 사람들과 우리 앞에는 은 그릇에 풍성하게 음식이 차려진 데 비해 아틸라 앞에는 나무 그릇에 고기만 있을 뿐이었다. ...... 연회에 참석한 사람들에게는 금과 은으로 된 술잔들을 제공햇으나 아틸라는 참석한 사람들에게는 금과 은으로 된 수잔들을 제공했으나 아틸라는 나무로 만든 잔을 사용했다. 그의 옷은 아주 소박했고, 깨끗하다는 점 이외에는 다른 사람들이 입은 옷과 전혀 다를 게 없었다. 다른 스키타이인들처럼 옆구리에 찬 검이나 장화의 걸쇠, 말의 재갈에도 금이나 보석으로 장식을 하지 않았다.'
	),
	--마르켈리누스
(
		'TXT_KEY_COURT_BUREAUCRAT_MARKELINUS',
		'마르켈리누스'
	),(
		'TXT_KEY_GREAT_WORK_MARKELINUS',
		'마르켈리누스'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_MARKELINUS',
		'로마인들의 서방 제국은 ...... 어린 황제와 더불어 멸망했고 ....... 그 뒤로는 고트족의 왕들이 로마를 지배했다'
	),
	--유독시아
(
		'TXT_KEY_COURT_BUREAUCRAT_YUDOCSIA',
		'유독시아'
	),(
		'TXT_KEY_GREAT_WORK_YUDOCSIA',
		'테오도라 황후, 프로코피우스, 전쟁의 역사'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_YUDOCSIA',
		'무릇 태어난 자는 누구나 언젠가 죽게 마련입니다. 그런데 어찌 황제가 두려움에 몸을 피할 수 있단 말입니까? 저는 결코 제 손으로 이 황후의 의상을 벗지 않을 것이며, 죽는 순간까지 황후라는 명칭을 버리지 않을 것입니다. 그러니 황제 폐하께서는 떠나고 싶으시면 얼마든지 가십시오. 우리는 부자이고 바다에는 우리의 배들이 있습니다. 하지만 폐하께서 안전해지셨을 때 차라리 죽음을 선택하지 않은 것을 후회하지 않을까를 먼저 생각해 보십시오. 저는 "자주색 옷은 가장 고귀한 수의"라는 옛말에 따를 것이옵니다'
	),
	--파울루스
(
		'TXT_KEY_COURT_BUREAUCRAT_PAULUS',
		'파울루스'
	),(
		'TXT_KEY_GREAT_WORK_PAULUS',
		'파울루스, 하기아 대성당을 찬미하여'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_PAULUS',
		'..... 카리스투스에서는 선명한 녹색의 대리석을 캐고, 프리지아 산맥에서는 분홍색과 흰색이 뒤섞여 붉은색과 은색의 꽃무늬로 빛나는 여러 가지 색깔의 대리석이 나온다. 밝은 별무늬가 점점이 뿌려진 반암은 배에 실려 나일 강을 통해 대량으로 수송된다. 스파르타에서는 에메랄드색 대리석, 이아시 구릉 지대의 깊숙한 곳에서는 핏빛의 붉은색과 연백색의 빗살무늬, 물결무늬가 빛나는 대리석이 생산된다. ...... 리비아의 태양은 햇볕으로 달궈진 석재를 만든다. 무어인의 언덕 그 어두운 틈바구니에서는 금빛이 감도는 보라색 석재가, 켈트족의 바위산에서는 윤기가 도는 흑색 표표면에 우유를 뿌려 놓은 듯한 수정이 나온다. 금을 바른 것처럼 보이는 귀중한 얼룩 마노도 있다. 아트락스에서 나온 대리석은 ...... 바다나 에메랄드를 닮은 선명한 녹색을 띠면서도 풀밭 속에 핀 파란 수레국화 같기도 하고 여기저기 눈송이가 앉은 것 같기도 하다.'
	),
	--요한네스
	(
		'TXT_KEY_COURT_BUREAUCRAT_YOHANNES',
		'요한네스'
	),(
		'TXT_KEY_GREAT_WORK_YOHANNES',
		'카파도키아의 요한네스, 프로코피우스, 전쟁의 역사'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_YOHANNES',
		'폐하, 카르타고 정벌을 말씀하셨는데, 육로로 간다면 열흘이나 걸립니다. 만약 뱃길로 군대를 수송한다면 바다의 거센 풍랑을 이겨내야 합니다. 우리 군대가 재난을 만났다 해도 그 소식이 우리에게 전해지는 데만 1년이 꼬박 걸릴 것입니다. 또 설사 우리가 승리했다 해도 이탈리아와 시칠리아가 남의 손에 있는 한 아프리카를 점령할 수는 없습니다. 더구나 패배한다면 우리가 조약을 위반한 것 때문에 제국 전체가 위험해질 것입니다. 요컨대 성공한다 해도 지속적인 이득을 얻지 못하고, 실패한다면 이 번영하는 제국이 파멸을 맞을지도 모릅니다.'
	),
	--나르세스
	(
		'TXT_KEY_COURT_BUREAUCRAT_NARCESS',
		'나르세스'
	),(
		'TXT_KEY_GREAT_WORK_NARCESS',
		'나르세스, 프로피우스, 전쟁의 역사'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_NARCESS',
		'만약 요한네스가 총사령관의 명령을 무시했다면 리미니를 구원한 다음 그를 총사령관 마음대로 처리해도 좋습니다. 하지만 그가 무지로 인해 저지른 실수 때문에 그를 징계한다면 그것은 황제 폐하와 우리 신민들의 이름으로 징계하는 것이 아님을 명심해야 합니다.'
	),
	--루피누스
	(
		'TXT_KEY_COURT_BUREAUCRAT_RUPINUS',
		'루피누스'
	),(
		'TXT_KEY_GREAT_WORK_RUPINUS',
		'토틸라, 로마 원로원에 보낸 편지'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_RUPINUS',
		'이 불길한 시절에 여러분에게는 분명히 여러분이 얼마 전까지만 해도, 즉 테오도리쿠스와 아말라순타가 지배하던 때에 누렸던 혜택이 이따금씩 기억날 것입니다. ...... 나의 로마 친구들이여, 그 지배자들에 대한 기억과 지금 우리가 아는 그리스인들이 자기 백성들에게 하는 행위를 비교해 보십시오. 내가 젊은이 특유의 억지나 야만족의 오만함으로 말한다고 생각하지 마십시오. 여러분에게 말하노니, 우리는 이 모든 것을 바꾸고 이탈리아를 독재자의 손아귀에서 구할 것입니다. 그 일을 가능케 해 주는 것은 우리의 용기만이 아니라, 이 억압자들에 항거함으로써 우리가 신의 정의를 받들고 있다는 확신입니다.'
	),
	--프로코피우스
	(
		'TXT_KEY_COURT_BUREAUCRAT_PROKOPIUS',
		'프로코피우스'
	),(
		'TXT_KEY_GREAT_WORK_PROKOPIUS',
		'프로코피우스, 전쟁의 역사 II'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_PROKOPIUS',
		'대사는 호스로우에게 돌아가서 최대한 빨리 떠나라고 충고했다. 자기가 만난 장군은 사나이답고, 어느 누구보다 지혜로우며, 그가 거느린 병사들도 한번도 본 적이 없는 자들이라는 것이었다. 로마인들은 소리 높여 벨리사리우스를 찬양했다. 그는 일찍히 겔리메르나 비티게스를 사로잡아 비잔티움으로 데려왔을 때보다도 이번 일에 더욱 큰 자부심을 느낀 듯했다.'
	),
	--테오도리쿠스
	(
		'TXT_KEY_COURT_BUREAUCRAT_THEODORICUS',
		'테오도리쿠스'
	),(
		'TXT_KEY_GREAT_WORK_THEODORICUS',
		'벨리사리우스, 유스티니아누스 대제에게 보내는 편지'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_THEODORICUS',
		'폐하, 솔직히 말씀드려서 우리 군대의 대다수는 현재 적의 기치 아래 복무하고 있습니다. 그저 벨리사리우스를 이탈리아에 보내는 것에만 만족하신다면 전쟁 준비는 이대로도 완벽합니다. 하지만 적을 이기려면 그 이상의 조치를 취해야 합니다. 장수는 부하 없이 아무것도 할 수 없습니다. 우선 제 경호병들을 기병과 보병 모두 보내 주십시오. 둘째로, 훈족을 비롯한 야만족 부대를 많이 보내 주십시오. 셋째로, 병사들에게 급료를 줄 돈을 보내주십시오.'
	),
	--코리푸스
	(
		'TXT_KEY_COURT_BUREAUCRAT_KORIPUS',
		'코리푸스'
	),(
		'TXT_KEY_GREAT_WORK_KORIPUS',
		'유스티누스 2세 황제, 코라푸스의 인용, 유스티누스의 찬가'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_KORIPUS',
		'저 아바르족과 사나운 프랑크족, 게피다이족과 게타이족, 그 밖에 많은 민족들, 그들은 기치를 나부끼며 사방에서 우리를 공격해 온다. 이 사나운 적들을 물리치려면 어떤 힘을 찾아야 하겠는가? 오, 로마의 힘은 사라졌는가?'
	),
	--테오필락투스
	(
		'TXT_KEY_COURT_BUREAUCRAT_THEOPILACTUS',
		'테오필락투스'
	),(
		'TXT_KEY_GREAT_WORK_THEOPILACTUS',
		'테오필락투스'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_THEOPILACTUS',
		'이제 동방의 사태가 미소를 짓게 되었으므로, 호메로스 식으로 표현하면 야만족의 소굴에서 벗어났고, '장미를 만졌다'고 할 정도로 칼이 핏빛으로 물들지 않게 되었으므로 황제는 군대를 유럽으로 이동시켰다.'
	),
	--아만티우스
	(
		'TXT_KEY_COURT_BUREAUCRAT_AMANTIUS',
		'아만티우스'
	),(
		'TXT_KEY_GREAT_WORK_AMANTIUS',
		'에페수스의 요한네스, 교회사'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_AMANTIUS',
		'유스티누스 황제의 광기가 가라앉았을 때 그는 작은 수레에 앉아서 시종에게 수레를 밀고 숙소를 몇 바퀴 돌게 하면서 즐거워했다. 하지만 그는 걸핏하면 폭력을 휘두르기 일쑤였고, 가까이 있는 사람을 멋대로 때렸다.'
	),
	--스타우라키우스
	(
		'TXT_KEY_COURT_BUREAUCRAT_STAURAKIUS',
		'스타우라키우스'
	),(
		'TXT_KEY_GREAT_WORK_STAURAKIUS',
		'마우리키우스 황제, 처형당하기 직전'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_STAURAKIUS',
		'신이시여, 당신은 공정하십니다. 당신의 판단은 공정하십니다.'
	),
	--유페미우스
	(
		'TXT_KEY_COURT_BUREAUCRAT_EUPHEMIUS',
		'유페미우스'
	),(
		'TXT_KEY_GREAT_WORK_EUPHEMIUS',
		'이라클리오스 황제, 포카스를 처형하기 직전에'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_EUPHEMIUS',
		'그대가 제국을 이 꼴로 만든 자인가?'
	),
	--안티오코스
	(
		'TXT_KEY_COURT_BUREAUCRAT_ANTIOCOS',
		'안티오코스'
	),(
		'TXT_KEY_GREAT_WORK_ANTIOCOS',
		'포카스 황제, 처형당하기 직전에 받은 이라클리오스 황제의 질문에 대한 대답'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_ANTIOCOS',
		'그대가 다스린다면 더 낫겠는가?'
	),
	--트리보니아누스
	(
		'TXT_KEY_COURT_BUREAUCRAT_TRIBONIANUS',
		'트리보니아누스'
	),(
		'TXT_KEY_GREAT_WORK_TRIBONIANUS',
		'사산왕조 페르시아의 샤한샤 호스로우 2세, 이라클리오스 황제에게 보내는 편지'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_TRIBONIANUS',
		'가장 고귀한 신이며, 이 세상의 왕과 주인이며, 위대한 호르미즈드와 호스로우의 아들이 천하고 무지한 노예 이라클리오스에게 고하노라. 너는 우리의 지배를 거부하고 스스로를 군주라고 칭하고 있다. 너는 우리의 보물을 빼앗고 우리의 하인들을 속이고 있다. 도적 떼 같은 군대로 우리를 끊임없이 괴롭히고 있다. 내 어찌 너희 그리스인들을 멸하지 않으리라? 너는 신을 믿는다고 말한다. 그렇다면 그 신은 어이하여 내 손에서 카이세리아, 예루살렘, 알렉산드리아를 빼앗아 가지 않느냐? ...... 내가 콘스탄티노플까지 파괴하지 못할 줄로 아는가?'
	),
	--게오르기우스
	(
		'TXT_KEY_COURT_BUREAUCRAT_GEORUGIUS',
		'게오르기우스'
	),(
		'TXT_KEY_GREAT_WORK_GEORUGIUS',
		' 피시디아의 게오르기우스'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_GEORUGIUS',
		'반주에 맞춰 부르는 찬송가에서 황제는 환희를 찾았고 자신의 마음속에서 일어나는 신성한 공명을 느꼈다.'
	),
	--테오파네스
	(
		'TXT_KEY_COURT_BUREAUCRAT_THEOPHANES',
		'테오파네스'
	),(
		'TXT_KEY_GREAT_WORK_THEOPHANES',
		'사산왕조 페르시아의 장군 샤흐르바라즈, 참회자 테오파네스, 연대기'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_THEOPHANES',
		'너희 황제, 이라클리오스를 보아라! 마치 쇠로 된 모루처럼 이 화살과 창을 전혀 두려워하지 않는구나!'
	),
	--세르기우스
	(
		'TXT_KEY_COURT_BUREAUCRAT_SERGIUS',
		'세르기우스'
	),(
		'TXT_KEY_GREAT_WORK_SERGIUS',
		'세르기우스 콘스탄티노플 총대주교, 이라클리오스의 대 페르시아 전쟁 승전 메세지'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_SERGIUS',
		'하느님의 품 안에서 즐거워하라 ...... 그(사산왕조 페르시아의 샤한샤 호스로우 2세)는 일찍이 주님께서 아예 태어나지 않았더라면 좋았을 것이라고 말씀하셨던 가리옷 유다와 똑같은 길을 걸었습니다. ......'
	),
	--소프로니우스
	(
		'TXT_KEY_COURT_BUREAUCRAT_SOPHRONIUS',
		'소프로니우스'
	),(
		'TXT_KEY_GREAT_WORK_SOPHRONIUS',
		'소프로니우스 예루살렘 총대주교, 우마르에게 점령당한 예루살렘에서 마태복음 24장 15절을 인용하며'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_SOPHRONIUS',
		'보라, 선지자 다니엘이 말한 것처럼 멸망의 가증한 것이 거룩한 곳에 서 있도다.'
	),
	--니케포루스
	(
		'TXT_KEY_COURT_BUREAUCRAT_NIKEPHORUS',
		'니케포루스'
	),(
		'TXT_KEY_GREAT_WORK_NIKEPHORUS',
		'니케포루스'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_NIKEPHORUS',
		'그(이라클리오스)는 소변을 볼 때마다 소변이 얼굴에 튀지 않도록 하기 위해 배 부분에 판자를 걸쳐 놓아야만 했다.'
	),
	--히파티우스
	(
		'TXT_KEY_COURT_BUREAUCRAT_HIPATIUS',
		'히파티우스'
	),(
		'TXT_KEY_GREAT_WORK_HIPATIUS',
		'콘스탄스 2세 황제, 즉위하며 한 원로원에 대한 연설, 테오파네스'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_HIPATIUS',
		'나의 아버지 콘스탄티누스는 자신의 아버지이자 나의 할아버지인 이라클리오스와 함께 오랫동안 나라를 다스렸으나 할아버지가 죽은 뒤에는 아주 짧은 기간만 제위에 있었습니다. 계모인 마르티나의 질투심이 그의 숭고한 꿈을 망쳤고 끝내는 그의 목숨까지 앗아간 것이었습니다. 그 이유는 오로지 그녀가 이라클로오스와 근친상간을 통해 낳은 아들 이라클로나스를 위해서였습니다. 여러분의 표결은 무엇보다도 마르티나와 그녀의 아들을 정당하게 제위에서 물러나게 하는 데 기여했습니다. 로마 제국이 법에 모욕이 가해지는 것을 묵인해서는 안 된다는 것을 보여 준 것입니다. 이로써 열분의 고결한 명성이 널리 알려졌습니다. 그러므로 앞으로도 여러분은 현명한 충고와 판단으로써 내가 백성들을 안전하게 이끌 수 있도록 도와주시기 바랍니다.'
	),
	--호르미스다스
	(
		'TXT_KEY_COURT_BUREAUCRAT_HORMISDAS',
		'호르미스다스'
	),(
		'TXT_KEY_GREAT_WORK_HORMISDAS',
		'유스티니아누스 2세 황제, 폭풍을 멈추려면 자신에게 반대한 자들을 살려주겠다 약속하는 기도를 해야 한다는 자리에서'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_HORMISDAS',
		'한 놈이라도 살려주느니 차라리 지금 당장 물에 빠져 죽겠다'
	),
	--디아코누스
	(
		'TXT_KEY_COURT_BUREAUCRAT_DIAKONUS',
		'디아코누스'
	),(
		'TXT_KEY_GREAT_WORK_DIAKONUS',
		'파울루스 디아코누스, 롬바르드족의 역사'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_DIAKONUS',
		'그(유스티니아누스 2세 황제)는 마치 콧구멍에서 콧물을 훔쳐내듯이 아무렇지도 않게 자신에게 반대하는 사람을 죽이라고 명했다.'
	),
	--스테파누스
	(
		'TXT_KEY_COURT_BUREAUCRAT_STEPHANUS',
		'스테파누스'
	),(
		'TXT_KEY_GREAT_WORK_STEPHANUS',
		'작자미상(성 소 스테파누스의 일대기 작자)'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_STEPHANUS',
		'블라케르나이의 성모 성당 벽에 있던 그리스도의 생애를 표현한 모자이크를 떼어 낸 자리에 대신 들어간 그림은 나무와 새, 과일이 가득한, 시장인지 새장인지 모를 풍경화였다. 총대주교의 궁전도 경마와 사냥 장면을 묘사한 그림들로 화려하게 장식되었다.'
	),
	--클레멘스
	(
		'TXT_KEY_COURT_BUREAUCRAT_KLEMENS',
		'클레멘스'
	),(
		'TXT_KEY_GREAT_WORK_KLEMENS',
		'알렉산드리아의 클레멘스, 니케포루스의 인용'
	),
	(
		'TXT_KEY_GREAT_WORK_QUOTE_KLEMENS',
		'실물이 존재하지 않을 때는 그림이 마치 실물처럼 훌륭하다. 그러나 현실이 존재할 때 그림은 빛을 잃는다. 이처럼 유사성은 진실을 드러내는 한에서만 용인될 수 있다.'
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

--======================음악가=========================
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


      
