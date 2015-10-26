-- Example events
-- Author: veyDer
-- Add by JS , INGAMEUI
--------------------------------------------------------------

include("UserEvents");

--[[ Wandering Wiseman ]]--
function WanderingWisemanCond( player, city, unit, plot )
 	return city and city:IsCapital() and plot:IsCity();
end

function WanderingWisemanCond1( player, city, unit, plot )
	local nera	= player:GetCurrentEra(); 
	local ncounter = 0;
	if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
		ncounter = 1;
	elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
		ncounter = 2;
	elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
		ncounter = 3;
	elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
		ncounter = 4;
	elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
		ncounter = 5;
	elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
		ncounter = 6;
	else
		ncounter = 7;
	end
	return WanderingWisemanCond( player, city, unit, plot ) and player:GetGold() >= (200 + ncounter*50) ;
end
function WanderingWisemanCond2( player, city, unit, plot )
	local nera	= player:GetCurrentEra(); 
	local ncounter = 0;
	if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
		ncounter = 1;
	elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
		ncounter = 2;
	elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
		ncounter = 3;
	elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
		ncounter = 4;
	elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
		ncounter = 5;
	elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
		ncounter = 6;
	else
		ncounter = 7;
	end
	return WanderingWisemanCond( player, city, unit, plot ) and player:GetGold() >= (100 + ncounter*25) ;
end

function WanderingWisemanNoEffect( player, city, unit, plot )
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_WANDERING_WISEMAN_EFFECT_NONE" ) );
end

function WanderingWisemanEffect1( player, city, unit, plot )
	local nera	= player:GetCurrentEra(); 
	local ncounter = 0;
	if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
		ncounter = 1;
	elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
		ncounter = 2;
	elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
		ncounter = 3;
	elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
		ncounter = 4;
	elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
		ncounter = 5;
	elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
		ncounter = 6;
	else
		ncounter = 7;
	end
	player:ChangeGold( - (200 + ncounter*50) );
	_AddNewUnit( player, "UNIT_SCIENTIST", plot:GetX(), plot:GetY() );
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_WANDERING_WISEMAN_EFFECT1" ) );
end

function WanderingWisemanEffect2( player, city, unit, plot )
	local mera	= player:GetCurrentEra(); 
	local mcounter = 0;
	if mera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
		mcounter = 1;
	elseif mera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
		mcounter = 2;
	elseif mera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
		mcounter = 3;
	elseif mera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
		mcounter = 4;
	elseif mera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
		mcounter = 5;
	elseif mera == GameInfo.Eras[ "ERA_MODERN" ].ID then
		mcounter = 6;
	else
		mcounter = 7;
	end
	player:ChangeGold ( - (100 + mcounter*25) );
	local res	= math.random( 0, 99 );
	if res < 35 then
		local nera	= player:GetCurrentEra(); 
		local ncounter = 0;
		if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
			ncounter = 40;
		elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
			ncounter = 70;
		elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
			ncounter = 122;
		elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
			ncounter = 214;
		elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
			ncounter = 375;
		elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
			ncounter = 656;
		else
			ncounter = 1148;
		end
		player:GetCurrentCultureBonus(ncounter);
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_WANDERING_WISEMAN_EFFECT2A" ) );
	elseif res < 40 then
		player:SetNumFreeTechs( 1 );
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_WANDERING_WISEMAN_EFFECT2B" ) );
		Events.SerialEventGameMessagePopup( {	Type	= ButtonPopupTypes.BUTTONPOPUP_CHOOSETECH,
												Data1	= player,
												Data3	= -1
											} );

	elseif res < 60 then
		local tech = player:GetCurrentResearch();
		_PlayerSetTech( player, tech, true );
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_WANDERING_WISEMAN_EFFECT2C" ) );
		Events.SerialEventGameMessagePopup( {	Type	= ButtonPopupTypes.BUTTONPOPUP_CHOOSETECH,
												Data1	= player,
												Data3	= tech
											} );
	elseif res < 95 then
		local turns	= math.random( 2, 4 );
		player:ChangeGoldenAgeTurns( turns );
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_WANDERING_WISEMAN_EFFECT2D", turns ) );
	else
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_WANDERING_WISEMAN_EFFECT2E" ) );
	end
end
UserEventAdd{
    id			= "WANDERING_WISEMAN",
	probability	= 0.0015,
	options		= {
		OPTION1 = {	order	= 1, condition	= WanderingWisemanCond1, effect	= WanderingWisemanEffect1 },
		OPTION2 = {	order	= 2, condition	= WanderingWisemanCond2, effect	= WanderingWisemanEffect2 },
		OPTION3 = {	order	= 3, condition	= WanderingWisemanCond, effect	= WanderingWisemanNoEffect },
		}
};
--[[ / Wandering Wiseman ]]--

--[[ Builder ]]--
function BuilderCond( player, city, unit, plot )
	return city and city:IsCapital() and plot:IsCity() and _PlayerHasTech( player, "TECH_CONSTRUCTION");
end

function BuilderCond1( player, city, unit, plot )
local nera	= player:GetCurrentEra(); 
	local ncounter = 0;
	if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
			ncounter = 1;
		elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
			ncounter = 2;
		elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
			ncounter = 3;
		elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
			ncounter = 4;
		elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
			ncounter = 5;
		elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
			ncounter = 6;
		else
			ncounter = 7;
	end
	local goldneeded = ( 125 * ncounter );
	return BuilderCond( player, city, unit, plot ) and player:GetGold() >= goldneeded;
end
function BuilderCond2( player, city, unit, plot )
local nera	= player:GetCurrentEra(); 
	local ncounter = 0;
	if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
			ncounter = 1;
		elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
			ncounter = 2;
		elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
			ncounter = 3;
		elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
			ncounter = 4;
		elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
			ncounter = 5;
		elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
			ncounter = 6;
		else
			ncounter = 7;
	end
	local goldneeded = ( 75 * ncounter );
	return BuilderCond( player, city, unit, plot ) and player:GetGold() >= goldneeded;
end

function BuilderNoEffect( player, city, unit, plot )
	for ncity in player:Cities() do
		ncity:ChangeProduction(ncity:GetYieldRate(GameInfo.Yields[ "YIELD_PRODUCTION" ].ID)*1);
	end
end

function BuilderEffect1( player, city, unit, plot )
	local nera	= player:GetCurrentEra(); 
	local ncounter = 0;
	if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
			ncounter = 1;
		elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
			ncounter = 2;
		elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
			ncounter = 3;
		elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
			ncounter = 4;
		elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
			ncounter = 5;
		elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
			ncounter = 6;
		else
			ncounter = 7;
	end
	player:ChangeGold ( - 125 * ncounter );
	
	for ncity in player:Cities() do
		ncity:ChangeProduction(ncity:GetYieldRate(GameInfo.Yields[ "YIELD_PRODUCTION" ].ID)*5);
	end
	_UserEventMessage(Locale.ConvertTextKey( "TXT_USER_EVENT_BUILDER_EFFECT1" ) );
end

function BuilderEffect2( player, city, unit, plot )
	local nera	= player:GetCurrentEra(); 
	local ncounter = 0;
	if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
			ncounter = 1;
		elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
			ncounter = 2;
		elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
			ncounter = 3;
		elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
			ncounter = 4;
		elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
			ncounter = 5;
		elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
			ncounter = 6;
		else
			ncounter = 7;
	end
	player:ChangeGold ( - 75 * ncounter );
	
	for ncity in player:Cities() do
		ncity:ChangeProduction(ncity:GetYieldRate(GameInfo.Yields[ "YIELD_PRODUCTION" ].ID)*3);
	end
	_UserEventMessage(Locale.ConvertTextKey( "TXT_USER_EVENT_BUILDER_EFFECT2" ) );
end
UserEventAdd{
    id			= "BUILDER",
	probability	= 0.0015,
	options		= {
		OPTION1 = {	order	= 1, condition	= BuilderCond1, effect	= BuilderEffect1 },
		OPTION2 = {	order	= 2, condition	= BuilderCond2, effect	= BuilderEffect2 },
		OPTION3 = {	order	= 3, condition	= BuilderCond, effect	= BuilderNoEffect },
		}
};
--[[ / Builder ]]--



--[[ Artist ]]--
function ArtistCond( player, city, unit, plot )
	return city and plot:IsCity();
end

function ArtistCond1( player, city, unit, plot )
	return ArtistCond( player, city, unit, plot ) and player:GetGold() >= (150);
end
function ArtistCond2( player, city, unit, plot )
	return ArtistCond( player, city, unit, plot ) and (
	(  city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MONUMENT" ].ID ) ~= 1 ) or
	( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MONUMENT" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_TEMPLE"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_PHILOSOPHY") ) or
	( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_TEMPLE" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_OPERA_HOUSE"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_ACOUSTICS") ) or
	( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_OPERA_HOUSE" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MUSEUM"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_ARCHAEOLOGY") ) or
	( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_TEMPLE" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_OPERA_HOUSE"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_ACOUSTICS") ) or
	( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MUSEUM" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_BROADCAST_TOWER"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_RADIO") ) )
	and player:GetGold() >= 300;
end

function ArtistNoEffect( player, city, unit, plot )
	city:DoJONSCultureLevelIncrease();
	_UserEventMessage(Locale.ConvertTextKey( "TXT_USER_EVENT_ARTIST_EFFECT_NONE" ) );
end

function ArtistEffect1( player, city, unit, plot )
	city:DoJONSCultureLevelIncrease();
	city:DoJONSCultureLevelIncrease();
	city:DoJONSCultureLevelIncrease();
	player:ChangeGold(-150);
	_UserEventMessage(Locale.ConvertTextKey( "TXT_USER_EVENT_ARTIST_EFFECT1" ) );
end

function ArtistEffect2( player, city, unit, plot )
	if (  city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MONUMENT" ].ID ) ~= 1 ) then
		city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MONUMENT" ].ID, 1 );
	elseif ( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MONUMENT" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_TEMPLE"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_PHILOSOPHY") ) then
		city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_TEMPLE"].ID, 1 );
	elseif ( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_TEMPLE" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_OPERA_HOUSE"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_ACOUSTICS") ) then
		city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_OPERA_HOUSE"].ID, 1 );
	elseif ( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_OPERA_HOUSE" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MUSEUM"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_ARCHAEOLOGY") ) then
		city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MUSEUM"].ID, 1 );
	elseif ( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_TEMPLE" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_OPERA_HOUSE"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_ACOUSTICS") ) then
		city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_OPERA_HOUSE"].ID, 1 );
	elseif ( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MUSEUM" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_BROADCAST_TOWER"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_RADIO") ) then
		city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_BROADCAST_TOWER"].ID, 1 );	
	end	
	player:ChangeGold(-300);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_ARTIST_EFFECT2", city:GetName() ) );
end
UserEventAdd{
    id			= "ARTIST",
	probability	= 0.0015,
	options		= {
		OPTION1 = {	order	= 1, condition	= ArtistCond1, effect	= ArtistEffect1 },
		OPTION2 = {	order	= 2, condition	= ArtistCond2, effect	= ArtistEffect2 },
		OPTION3 = {	order	= 3, condition	= ArtistCond, effect	= ArtistNoEffect },
		}
};
--[[ / Artist ]]--

--[[ New Spring ]]--
function NewSpringCond( player, city, unit, plot )
	return city and plot:GetTerrainType() == GameInfo.Terrains[ "TERRAIN_DESERT" ].ID 
	and not plot:IsCity() and plot:GetFeatureType() == -1 and plot:GetResourceType() == -1 and plot:IsFlatlands();
end
function NewSpringEffect( player, city, unit, plot )
	plot:SetFeatureType( GameInfo.Features[ "FEATURE_OASIS" ].ID );
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEW_SPRING_EFFECT" ) );
end
UserEventAdd{
	id			= "NEW_SPRING",
	probability	= 0.0010,
	options		= {
		OPTION1	= { order	= 1, condition	= NewSpringCond, effect	= NewSpringEffect }
		}
};
--[[ / New Spring ]]--

--[[ NewMineral ]]--
function NewMineralCond( player, city, unit, plot )
	return plot and not plot:IsCity() and plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_MINE" ].ID 
	and plot:GetResourceType() == -1;
end
function NewMineralEffect( player, city, unit, plot )
	local nvalidmineral = false;
	local nmineral = math.random( 1, 7 );
	while (nvalidmineral == false) do
		nmineral = math.random( 1, 7 );
		nvalidmineral = true;
		if 	( nmineral == 7 and not _PlayerHasTech( player, "TECH_ATOMIC_THEORY") ) or 
			( nmineral == 6 and not _PlayerHasTech( player, "TECH_ELECTRICITY") ) or 
			( nmineral == 5 and not _PlayerHasTech( player, "TECH_SCIENTIFIC_THEORY") ) then
				nvalidmineral = false;
		end
	end
	local namount = math.random( 2, 5 );
	if nmineral == 1 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_IRON" ].ID, namount); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWMINERAL_EFFECT1" ) );
	end
	if nmineral == 2 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_GOLD" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWMINERAL_EFFECT2" ) );
	end
	if nmineral == 3 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_SILVER" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWMINERAL_EFFECT3" ) );
	end
	if nmineral == 4 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_GEMS" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWMINERAL_EFFECT4" ) );
	end
	if nmineral == 5 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_COAL" ].ID, namount); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWMINERAL_EFFECT5" ) );
	end
	if nmineral == 6 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_ALUMINIUM" ].ID, namount); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWMINERAL_EFFECT6" ) );
	end
	if nmineral == 7 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_URANIUM" ].ID, namount); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWMINERAL_EFFECT7" ) );
	end	
end
UserEventAdd{
	id			= "NEWMINERAL",
	probability	= 0.0010,
	options		= {
		OPTION1	= { order	= 1, condition	= NewMineralCond, effect	= NewMineralEffect }
		}
};
--[[ / NewMineral ]]--

--[[ NewPlant ]]--
function NewPlantCond( player, city, unit, plot )
	return plot and not plot:IsCity() and _PlayerHasTech( player, "TECH_CALENDAR") 	and plot:GetResourceType() == -1 and
	( plot:GetTerrainType() == GameInfo.Terrains[ "TERRAIN_PLAINS" ].ID or plot:GetTerrainType() == GameInfo.Terrains[ "TERRAIN_GRASS" ].ID ) 
	and	plot:GetImprovementType() == -1	and plot:IsFlatlands();
end
function NewPlantEffect( player, city, unit, plot )
	local nvalidplant = false;
	local nplant = math.random( 1, 8 );
	while (nvalidplant == false) do
		nplant = math.random( 1, 8 );
		nvalidplant = true;
		if 	( ( nplant == 1 and not plot:CanHaveResource( GameInfo.Resources[ "RESOURCE_BANANA" ].ID, true) ) or 
			  ( nplant == 2 and not plot:CanHaveResource( GameInfo.Resources[ "RESOURCE_DYE" ].ID, true) ) or 
			  ( nplant == 3 and not plot:CanHaveResource( GameInfo.Resources[ "RESOURCE_SPICES" ].ID, true) ) or 
			  ( nplant == 4 and not plot:CanHaveResource( GameInfo.Resources[ "RESOURCE_SILK" ].ID, true) ) or 
			  ( nplant == 5 and not plot:CanHaveResource( GameInfo.Resources[ "RESOURCE_SUGAR" ].ID, true) ) or 
			  ( nplant == 6 and not plot:CanHaveResource( GameInfo.Resources[ "RESOURCE_COTTON" ].ID, true) ) or 
			  ( nplant == 7 and not plot:CanHaveResource( GameInfo.Resources[ "RESOURCE_WINE" ].ID, true) ) or 
			  ( nplant == 8 and not plot:CanHaveResource( GameInfo.Resources[ "RESOURCE_INCENSE" ].ID, true) ) ) then
			nvalidplant = false;
		end
	end
	if nplant == 1 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_BANANA" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWPLANT_EFFECT1" ) );
	end	
	if nplant == 2 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_DYE" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWPLANT_EFFECT2" ) );
	end	
	if nplant == 3 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_SPICES" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWPLANT_EFFECT3" ) );
	end	
	if nplant == 4 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_SILK" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWPLANT_EFFECT4" ) );
	end	
	if nplant == 5 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_SUGAR" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWPLANT_EFFECT5" ) );
	end	
	if nplant == 6 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_COTTON" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWPLANT_EFFECT6" ) );
	end	
	if nplant == 7 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_WINE" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWPLANT_EFFECT7" ) );
	end
	if nplant == 8 then
		plot:SetResourceType( GameInfo.Resources[ "RESOURCE_INCENSE" ].ID, 1); 
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_NEWPLANT_EFFECT8" ) );
	end	
end
UserEventAdd{
	id			= "NEWPLANT",
	probability	= 0.0010,
	options		= {
		OPTION1	= { order	= 1, condition	= NewPlantCond, effect	= NewPlantEffect }
		}
};
--[[ / NewPlant ]]--

--[[ Parrots ]]--
function ParrotsCond( player, city, unit, plot )
	return city and plot:GetFeatureType() == GameInfo.Features[ "FEATURE_JUNGLE" ].ID and _PlayerHasTech( player, "TECH_ANIMAL_HUSBANDRY");
end
function ParrotsEffect( player, city, unit, plot )
	Game.SetPlotExtraYield( plot:GetX(), plot:GetY(), GameInfo.Yields[ "YIELD_GOLD" ].ID, 2);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_PARROTS_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "PARROTS",
	probability	= 0.0015,
	options		= {
		OPTION1 = {	order	= 1, condition	= ParrotsCond, effect	= ParrotsEffect },
		}
};
--[[ / Parrots ]]--

--[[ RareHerbs ]]--
function RareHerbsCond( player, city, unit, plot )
	return city and plot:GetFeatureType() == GameInfo.Features[ "FEATURE_MARSH" ].ID 
	and _PlayerHasTech( player, "TECH_EDUCATION");
end
function RareHerbsEffect( player, city, unit, plot )
	Game.SetPlotExtraYield( plot:GetX(), plot:GetY(), GameInfo.Yields[ "YIELD_FOOD" ].ID, 1);
	Game.SetPlotExtraYield( plot:GetX(), plot:GetY(), GameInfo.Yields[ "YIELD_GOLD" ].ID, 1);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_PARROTS_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "RAREHERBS",
	probability	= 0.0015,
	options		= {
		OPTION1 = {	order	= 1, condition	= RareHerbsCond, effect	= RareHerbsEffect },
		}
};
--[[ / RareHerbs ]]--

--[[ Fertile Soil ]]--
function FertileSoilCond( player, city, unit, plot )
	return city and plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_FARM" ].ID and
	( plot:GetFeatureType() == GameInfo.Features[ "FEATURE_FLOOD_PLAINS" ].ID or
	  plot:GetTerrainType() == GameInfo.Terrains[ "TERRAIN_PLAINS" ].ID or 
	  plot:GetTerrainType() == GameInfo.Terrains[ "TERRAIN_GRASS" ].ID ) 
	and plot:IsFlatlands() and plot:GetResourceType() == -1;
end
function FertileSoilEffect( player, city, unit, plot )
	plot:SetResourceType( GameInfo.Resources[ "RESOURCE_WHEAT" ].ID, 1);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_FERTILESOIL_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "FERTILESOIL",
	probability	= 0.002,
	options		= {
		OPTION1 = {	order	= 1, condition	= FertileSoilCond, effect	= FertileSoilEffect },
		}
};
--[[ / Fertile Soil ]]--

--[[ Holiday Resort ]]--
function ResortCond( player, city, unit, plot )
	return city and plot:GetFeatureType() == GameInfo.Features[ "FEATURE_ATOL" ].ID and _PlayerHasTech( player, "TECH_COMPASS");
end
function ResortEffect( player, city, unit, plot )
	Game.SetPlotExtraYield( plot:GetX(), plot:GetY(), GameInfo.Yields[ "YIELD_GOLD" ].ID, 1);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_RESORT_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "RESORT",
	probability	= 0.0015,
	options		= {
		OPTION1 = {	order	= 1, condition	= ResortCond, effect	= ResortEffect },
		}
};
--[[ / Holiday Resort ]]--

--[[ Minerals ]]--
function MineralsCond( player, city, unit, plot )
	return city and plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_MINE" ].ID and _PlayerHasTech( player, "TECH_MINING");
end
function MineralsEffect( player, city, unit, plot )
	Game.SetPlotExtraYield( plot:GetX(), plot:GetY(), GameInfo.Yields[ "YIELD_PRODUCTION" ].ID, 1);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_MINERALS_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "MINERALS",
	probability	= 0.002,
	options		= {
		OPTION1 = {	order	= 1, condition	= MineralsCond, effect	= MineralsEffect },
		}
};
--[[ / Minerals ]]--

--[[ Tradecenter ]]--
function TradecenterCond( player, city, unit, plot )
	return city and plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_TRADING_POST" ].ID
	and _PlayerHasTech( player, "TECH_BANKING");
end
function TradecenterEffect( player, city, unit, plot )
	plot:SetImprovementType(17); 
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_TRADECENTER_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "TRADECENTER",
	probability	= 0.0015,
	options		= {
		OPTION1 = {	order	= 1, condition	= TradecenterCond, effect	= TradecenterEffect },
		}
};
--[[ / Tradecenter ]]--

--[[ Renown ]]--
function RenownCond( player, city, unit, plot )
	return city 
	and (plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_ACADEMY" ].ID 
	or plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_CITADEL" ].ID 
	or plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_MANUFACTORY" ].ID 
	or plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_CUSTOMS_HOUSE" ].ID 
	or plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_LANDMARK" ].ID )
	and _PlayerHasTech( player, "TECH_PHILOSOPHY");
end
function RenownEffect( player, city, unit, plot )
	plot:ChangeCulture(3);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_RENOWN_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "RENOWN",
	probability	= 0.002,
	options		= {
		OPTION1 = {	order	= 1, condition	= RenownCond, effect	= RenownEffect },
		}
};
--[[ / Renown ]]--

--[[ Tornado ]]--
function TornadoCond( player, city, unit, plot )
	return city 
	and not plot:IsImprovementPillaged()
	and	(plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_MINE" ].ID
	or	plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_PLANTATION" ].ID 
	or	plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_FARM" ].ID 
	or	plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_TERRACE_FARM" ].ID 
	or	plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_QUARRY" ].ID 
	or	plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_TRADING_POST" ].ID 
	or	plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_LUMBERMILL" ].ID 
	or	plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_PASTURE" ].ID 
	or	plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_CAMP" ].ID 
	or	plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_WELL" ].ID 
	or	plot:GetImprovementType() == GameInfo.Improvements[ "IMPROVEMENT_FORT" ].ID );
end
function TornadoEffect( player, city, unit, plot )
	plot:SetImprovementPillaged(true);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_TORNADO_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "TORNADO",
	probability	= 0.0033,
	options		= {
		OPTION1 = {	order	= 1, condition	= TornadoCond, effect	= TornadoEffect },
		}
};
--[[ / Tornado ]]--

--[[ Meteor ]]--
function MeteorCond( player, city, unit, plot )
	return plot and plot:IsCity() and city:IsCapital();
end
function MeteorEffect( player, city, unit, plot )
	plot:NukeExplosion(1); 
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_METEOR_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "METEOR",
	probability	= 0.0002,
	options		= {
		OPTION1 = {	order	= 1, condition	= MeteorCond, effect	= MeteorEffect },
		}
};
--[[ / Meteor ]]--

--[[ Marketcrash ]]--
function MarketcrashCond( player, city, unit, plot )
	return city and city:IsCapital();
end
function MarketcrashEffect( player, city, unit, plot )
	player:ChangeGold( - ( player:GetGold() * ( math.random( 20,50 ) / 100 ) ) );	
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_MARKETCRASH_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "MARKETCRASH",
	probability	= 0.0015,
	options		= {
		OPTION1 = {	order	= 1, condition	= MarketcrashCond, effect	= MarketcrashEffect },
		}
};
--[[ / Marketcrash ]]--

--[[ Donation ]]--
function DonationCond( player, city, unit, plot )
	return city and city:IsCapital();
end
function DonationEffect( player, city, unit, plot )
	local nera	= player:GetCurrentEra(); 
	local ncounter = 0;
	if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
		ncounter = 1;
	elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
		ncounter = 2;
	elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
		ncounter = 3;
	elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
		ncounter = 4;
	elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
		ncounter = 5;
	elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
		ncounter = 6;
	else
		ncounter = 7;
	end	
	player:ChangeGold( (40 * ncounter) + math.random( (1 * ncounter), (80 * ncounter) ));
	
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_DONATION_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "DONATION",
	probability	= 0.002,
	options		= {
		OPTION1 = {	order	= 1, condition	= DonationCond, effect	= DonationEffect },
		}
};
--[[ / Donation ]]--

--[[ Plague ]]--
function PlagueCond( player, city, unit, plot )
	return city and plot:IsCity() and (city:GetPopulation() > 3) and not _PlayerHasTech( player, "TECH_PENICILIN");
end
function PlagueEffect( player, city, unit, plot )
	local npopulation = city:GetPopulation();
	if npopulation < 7 then
	city:ChangePopulation(- math.random(1,3), true); 
	elseif npopulation < 15 then
	city:ChangePopulation(- math.random(2,4), true);
	end
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_PLAGUE_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "PLAGUE",
	probability	= 0.0015,
	options		= {
		OPTION1 = {	order	= 1, condition	= PlagueCond, effect	= PlagueEffect },
		}
};
--[[ / Plague ]]--

--[[ Boom ]]--
function BoomCond( player, city, unit, plot )
	return city and plot:IsCity();
end
function BoomEffect( player, city, unit, plot )
	city:ChangePopulation(math.random(1,3), true); 
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_BOOM_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "BOOM",
	probability	= 0.002,
	options		= {
		OPTION1 = {	order	= 1, condition	= BoomCond, effect	= BoomEffect },
		}
};
--[[ / Boom ]]--

--[[ Plotplus ]]--
function PlotplusCond( player, city, unit, plot )
	return city and plot:IsCity() and (city:GetPopulation() < 6);
end
function PlotplusEffect( player, city, unit, plot )
	city:DoJONSCultureLevelIncrease();
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_PLOTPLUS_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "PLOTPLUS",
	probability	= 0.002,
	options		= {
		OPTION1 = {	order	= 1, condition	= PlotplusCond, effect	= PlotplusEffect },
		}
};
--[[ / Plotplus ]]--

--[[ Sickness ]]--
function SicknessCond( player, city, unit, plot )
	return unit and unit:GetCurrHitPoints() > 1 and not _PlayerHasTech( player, "TECH_BIOLOGY") and unit:CanAcquirePromotionAny();
end
function SicknessEffect( player, city, unit, plot )
	unit:SetDamage( math.random( 1, math.floor( unit:GetCurrHitPoints() - 1 ) ) );
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_SICKNESS_EFFECT", Locale.ConvertTextKey( GameInfo.Units[ unit:GetUnitType() ].Description ) ) );
end
UserEventAdd{
    id			= "SICKNESS",
	probability	= 0.002,
	options		= {
		OPTION1 = {	order	= 1, condition	= SicknessCond, effect	= SicknessEffect },
		}
};
--[[ / Sickness ]]--

--[[ Policy ]]--
function PolicyCond( player, city, unit, plot )
	return city and _PlayerHasTech( player, "TECH_ARCHAEOLOGY");
end
function PolicyEffect( player, city, unit, plot )
	player:SetNumFreePolicies(1);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_POLICY_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "POLICY",
	probability	= 0.001,
	options		= {
		OPTION1 = {	order	= 1, condition	= PolicyCond, effect	= PolicyEffect },
		}
};
--[[ / Policy ]]--

--[[ HasMonarchy ]]--
function HasMonarchyCond( player, city, unit, plot )
	return city and city:IsCapital() and player:HasPolicy( GameInfo.Policies[ "POLICY_MONARCHY" ].ID );
end
function HasMonarchyEffect( player, city, unit, plot )
	city:ChangePopulation(3, true);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_HASMONARCHY_EFFECT") );
end
UserEventAdd{
    id			= "HASMONARCHY",
	probability	= 0.0014,
	options		= {
		OPTION1 = {	order	= 1, condition	= HasMonarchyCond, effect	= HasMonarchyEffect },
		}
};
--[[ / HasMonarchy ]]--

--[[ HasMilTrad ]]--
function HasMilTradCond( player, city, unit, plot )
	return unit and ( unit:CanAcquirePromotionAny() and not unit:IsHasPromotion(GameInfo.UnitPromotions[ "PROMOTION_SECOND_ATTACK" ].ID) and player:HasPolicy( GameInfo.Policies[ "POLICY_MILITARY_TRADITION" ].ID ) );
end
function HasMilTradEffect( player, city, unit, plot )
	unit:SetHasPromotion( GameInfo.UnitPromotions[ "PROMOTION_SECOND_ATTACK" ].ID, true);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_HASMILTRAD_EFFECT") );
end
UserEventAdd{
    id			= "HASMILTRAD",
	probability	= 0.0014,
	options		= {
		OPTION1 = {	order	= 1, condition	= HasMilTradCond, effect	= HasMilTradEffect },
		}
};
--[[ / HasMilTrad ]]--

--[[ HasMeritocracy ]]--
function HasMeritocracyCond( player, city, unit, plot )
	return player and player:HasPolicy( GameInfo.Policies[ "POLICY_MERITOCRACY" ].ID );
end
function HasMeritocracyEffect( player, city, unit, plot )
	local nera	= player:GetCurrentEra(); 
	local ncounter = 0;
	if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
		ncounter = 1;
	elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
		ncounter = 2;
	elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
		ncounter = 3;
	elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
		ncounter = 4;
	elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
		ncounter = 5;
	elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
		ncounter = 6;
	else
		ncounter = 7;
	end
	
	for ncity in player:Cities() do
		if (not ncity:IsPuppet() and not ncity:IsOccupied()) then
			player:ChangeGold( math.random(10,50 ) * ncounter);
		else
		
		end
	end
	
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_HASMERITOCRACY_EFFECT" ) );
end
UserEventAdd{
    id			= "HASMERITOCRACY",
	probability	= 0.0014,
	options		= {
		OPTION1 = {	order	= 1, condition	= HasMeritocracyCond, effect	= HasMeritocracyEffect },
		}
};
--[[ / HasMeritocracy ]]--


--[[ Unpuppet ]]--
function UnpuppetCond( player, city, unit, plot )
	return city and city:IsPuppet();
end
function UnpuppetEffect( player, city, unit, plot )
	city:SetPuppet(false);
	city:SetOccupied(false);
	city:SetProductionAutomated(false);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_UNPUPPET_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "UNPUPPET",
	probability	= 0.0012,
	options		= {
		OPTION1 = {	order	= 1, condition	= UnpuppetCond, effect	= UnpuppetEffect },
		}
};
--[[ / Unpuppet ]]--

--[[ Revolt ]]--
function RevoltCond( player, city, unit, plot )
	return city and not city:IsPuppet() and not city:IsCapital()
	and plot:IsCity() and not city:IsOccupied() and
	city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_COURTHOUSE" ].ID ) == 0;
end
function RevoltEffect( player, city, unit, plot )
	city:SetOccupied(true);
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_REVOLT_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "REVOLT",
	probability	= 0.0012,
	options		= {
		OPTION1 = {	order	= 1, condition	= RevoltCond, effect	= RevoltEffect },
		}
};
--[[ / Revolt ]]--

--[[ Entrepeneur ]]--
function EntrepeneurCond( player, city, unit, plot )
	return city and plot:IsCity() and (
	   (  city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MARKET" ].ID ) ~= 1 and
	   _PlayerHasTech( player, "TECH_CURRENCY") ) 
	   
	   or ( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MARKET" ].ID ) == 1 and
	    city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_BANK" ].ID ) ~= 1 and
	   _PlayerHasTech( player, "TECH_BANKING") ) 
	   
	   or ( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_BANK"   ].ID ) == 1 and
	    city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_STOCK_EXCHANGE" ].ID ) ~= 1 and
	   _PlayerHasTech( player, "TECH_ELECTRICITY") )
	);
end
function EntrepeneurEffect( player, city, unit, plot )
	if (  city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MARKET" ].ID ) ~= 1 and _PlayerHasTech( player, "TECH_CURRENCY") ) then
		city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MARKET" ].ID, 1 );
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_ENTREPENEUR_EFFECT1", city:GetName() ) );
	elseif ( city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_MARKET" ].ID ) == 1 and city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_BANK"].ID ) ~= 1 and _PlayerHasTech( player, "TECH_BANKING") ) then
		city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_BANK"].ID, 1 );
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_ENTREPENEUR_EFFECT2", city:GetName() ) );
	else
		city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_STOCK_EXCHANGE" ].ID, 1 );
		_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_ENTREPENEUR_EFFECT3", city:GetName() ) );
	end		
end
UserEventAdd{
    id			= "ENTREPENEUR",
	probability	= 0.0012,
	options		= {
		OPTION1 = {	order	= 1, condition	= EntrepeneurCond, effect	= EntrepeneurEffect },
		}
};
--[[ / Entrepeneur ]]--

--[[ Tidal Wave ]]--
function TidalWaveCond( player, city, unit, plot )
	return city and plot:IsCity() and
	(city:GetNumRealBuilding(GameInfo.Buildings[ "BUILDING_HARBOR" ].ID ) == 1 or
	city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_LIGHTHOUSE" ].ID ) == 1 or
	city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_SEAPORT" ].ID ) == 1);
end
function TidalWaveEffect( player, city, unit, plot )
	city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_HARBOR" ].ID , -1 );
	city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_LIGHTHOUSE" ].ID , -1 );
	city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_SEAPORT" ].ID , -1 );
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_TIDALWAVE_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "TIDALWAVE",
	probability	= 0.0012,
	options		= {
		OPTION1 = {	order	= 1, condition	= TidalWaveCond, effect	= TidalWaveEffect },
		}
};
--[[ / Tidal Wave ]]--

--[[ Flash Flood ]]--
function FlashFloodCond( player, city, unit, plot )
	return city and plot:IsCity() and
	(city:GetNumRealBuilding(GameInfo.Buildings[ "BUILDING_WATERMILL" ].ID ) == 1 or
	city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_HYDRO_PLANT" ].ID ) == 1);
end
function FlashFloodEffect( player, city, unit, plot )
	city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_WATERMILL" ].ID , -1 );
	city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_HYDRO_PLANT" ].ID , -1 );
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_FLASHFLOOD_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "FLASHFLOOD",
	probability	= 0.0012,
	options		= {
		OPTION1 = {	order	= 1, condition	= FlashFloodCond, effect	= FlashFloodEffect },
		}
};
--[[ / Flash Flood ]]--

--[[ Hurricane ]]--
function HurricaneCond( player, city, unit, plot )
	return city and plot:IsCity() and
	(city:GetNumRealBuilding(GameInfo.Buildings[ "BUILDING_WINDMILL" ].ID ) == 1 or
	city:GetNumRealBuilding(GameInfo.Buildings[ "BUILDING_SOLAR_PLANT" ].ID ) == 1 or
	city:GetNumRealBuilding( GameInfo.Buildings[ "BUILDING_BROADCAST_TOWER" ].ID ) == 1);
end
function HurricaneEffect( player, city, unit, plot )
	city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_WINDMILL" ].ID , -1 );
	city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_BROADCAST_TOWER" ].ID , -1 );
	city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_SOLAR_PLANT" ].ID , -1 );
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_HURRICANE_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "HURRICANE",
	probability	= 0.0012,
	options		= {
		OPTION1 = {	order	= 1, condition	= HurricaneCond, effect	= HurricaneEffect },
		}
};
--[[ / Hurricane ]]--

--[[ Meltdown ]]--
function MeltdownCond( player, city, unit, plot )
	return plot and plot:IsCity() and city:GetNumRealBuilding(GameInfo.Buildings[ "BUILDING_NUCLEAR_PLANT" ].ID ) == 1;
end
function MeltdownEffect( player, city, unit, plot )
	city:SetNumRealBuilding( GameInfo.Buildings[ "BUILDING_NUCLEAR_PLANT" ].ID , -1 );
	plot:NukeExplosion(1); 
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_MELTDOWN_EFFECT", city:GetName() ) );
end
UserEventAdd{
    id			= "MELTDOWN",
	probability	= 0.0001,
	options		= {
		OPTION1 = {	order	= 1, condition	= MeltdownCond, effect	= MeltdownEffect },
		}
};
--[[ / Meltdown ]]--

--[[ Exp ]]--
function ExpCond( player, city, unit, plot )
	return unit and unit:CanAcquirePromotionAny();
end
function ExpEffect( player, city, unit, plot )
	unit:ChangeExperience(15, -1, 0, 0, 0); 
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_EXP_EFFECT", Locale.ConvertTextKey( GameInfo.Units[ unit:GetUnitType() ].Description ) ) );
end
UserEventAdd{
    id			= "EXP",
	probability	= 0.0028,
	options		= {
		OPTION1 = {	order	= 1, condition	= ExpCond, effect	= ExpEffect },
		}
};
--[[ / Exp ]]--

--[[ GoldenAge ]]--
function GoldenAgeCond( player, city, unit, plot )
	return player and not player:isGoldenAge();
end
function GoldenAgeEffect( player, city, unit, plot )
	player:ChangeGoldenAgeTurns( 6 );
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_GOLDENAGE_EFFECT" ) );
end
UserEventAdd{
    id			= "GOLDENAGE",
	probability	= 0.0012,
	options		= {
		OPTION1 = {	order	= 1, condition	= GoldenAgeCond, effect	= GoldenAgeEffect },
		}
};
--[[ / GoldenAge ]]--

--[[ Worker ]]--
function WorkerCond( player, city, unit, plot )
	local nera = player:GetCurrentEra(); 
	return plot and not plot:IsCity() and
	(nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID or
	nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID or
	nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID) ;
end
function WorkerEffect( player, city, unit, plot )
	_AddNewUnit( player, "UNIT_WORKER", plot:GetX(), plot:GetY() );
	_UserEventMessage( Locale.ConvertTextKey( "TXT_USER_EVENT_WORKER_EFFECT", Locale.ConvertTextKey( GameInfo.Units[ unit:GetUnitType() ].Description ) ) );
end
UserEventAdd{
    id			= "WORKER",
	probability	= 0.002,
	options		= {
		OPTION1 = {	order	= 1, condition	= WorkerCond, effect	= WorkerEffect },
		}
};
--[[ / Worker ]]--
