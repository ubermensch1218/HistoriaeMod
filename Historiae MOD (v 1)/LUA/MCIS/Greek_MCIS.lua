-- Greek_MCIS
-- Author: Jeongseok
-- DateCreated: 10/26/2015 11:48:00 PM
--------------------------------------------------------------
-- Based on Typhlomence's and JFD's code for MCIS

-- ============================================================================
-- Includes
-- ============================================================================
include("IconSupport")

-------------------------------------------------------------------------------------------------------------------------
-- Sukritact's Modular City Info Stack Support
-------------------------------------------------------------------------------------------------------------------------
local activePlayer					= Players[Game.GetActivePlayer()]
local civilisationID				= GameInfoTypes["CIVILIZATION_GREECE"]
local leaderID						= GameInfo.Leaders["LEADER_ALEXANDER"]
local isGreeceActivePlayer		= activePlayer:GetCivilizationType() == civilisationID

function CityInfoStackDataRefresh(tCityInfoAddins, tEventsToHook)
   table.insert(tCityInfoAddins, {["Key"] = "HistoriaeGreekCityInfo", ["SortOrder"] = 3})
end

if isGreeceActivePlayer then
	LuaEvents.CityInfoStackDataRefresh.Add(CityInfoStackDataRefresh)
	LuaEvents.RequestCityInfoStackDataRefresh()
end

function CityInfoStackDirty(key, instance)
	if key ~= "HistoriaeGreekCityInfo" then return end
	ProcessCityScreen(instance)
end

if isGreeceActivePlayer then
	LuaEvents.CityInfoStackDirty.Add(CityInfoStackDirty)
end

if not(OptionsManager.GetSmallUIAssets()) then Controls.IconFrame:SetOffsetX(294) end

-- ============================================================================
-- Globals
-- ============================================================================
local pGreekOlympia = GameInfoTypes["BUILDING_OLYMPIA"];

g_HistoriaeGreekOlympiaTipControls = {}
TTManager:GetTypeControlTable("HistoriaeGreekOlympiaToolTip", g_HistoriaeGreekOlympiaTipControls)
-- ============================================================================
-- ProcessCityScreen
-- ============================================================================
function ProcessCityScreen(instance)
	-- Ensure City Selected
	local pCity = UI.GetHeadSelectedCity()
	if (not pCity) then
		instance.IconFrame:SetHide(true)
		return
	end

	instance.IconFrame:SetToolTipType("HistoriaeGreekOlympiaToolTip")
	IconHookup( 44, 64, "CM_3_ATLAS", instance.IconImage )

	local iOlympia = pCity:GetNumBuilding(GameInfoTypes["BUILDING_GREEK_CULTURE_UNIT_MODIFIER"]);

	if (not pCity:IsHasBuilding(pGreekOlympia)) then
		instance.IconFrame:SetHide(true)
		return
	end

	local sTitle = "[COLOR_POSITIVE_TEXT]" .. string.upper(Locale.ConvertTextKey("TXT_KEY_BUILDING_GREEK_OLYMPIA")) .. "[ENDCOLOR]"
	local sText = Locale.ConvertTextKey("TXT_KEY_HISTORIAE_GREEK_CITY_VIEW_HELP", iOlympia);

	g_HistoriaeGreekOlympiaTipControls.Heading:SetText(sTitle)
	g_HistoriaeGreekOlympiaTipControls.Body:SetText(sText)
	g_HistoriaeGreekOlympiaTipControls.Box:DoAutoSize()
	instance.IconFrame:SetHide(false)
end