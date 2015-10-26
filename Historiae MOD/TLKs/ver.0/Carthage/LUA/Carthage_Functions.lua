-- Carthage_Functions.lua
-- Author: Jeongseok
-- DateCreated: 10/6/2015 12:04:20 AM
--==========================================================================================================================
include("FLuaVector.lua")
include("PlotIterators")
--------------------------------------------------------------

local civilisationID = GameInfoTypes["CIVILIZATION_CARTHAGE"]
local mathFloor = math.floor

function HM_GetCityStartingGold(playerID, city)
	local player = Players[playerID]
	local playerEra = player:GetCurrentEra()
	local numStartingGold = 40
	local gameSpeed = GameInfo.GameSpeeds[Game.GetGameSpeedType()].GoldPercent
	local eraGold = GameInfo.Eras[playerEra].StartingGold
	numStartingGold = numStartingGold + (numStartingGold * gameSpeed / 100) 
	
	if player:GetCapitalCity() then
		local capital = player:GetCapitalCity()
		local plotDistance = Map.PlotDistance(city:GetX(), city:GetY(), capital:GetX(), capital:GetY())
		numStartingGold = numStartingGold + (plotDistance * 10)
	end
	
	if eraGold > 0 then
		numStartingGold = numStartingGold + eraGold
	end
	
	return numStartingGold
end

function HM_CityStartingGold(playerID, iX, iY)
	local player = Players[playerID]
	if (player:GetCivilizationType() == civilisationID and player:IsEverAlive()) then
		local plot = Map.GetPlot(iX, iY)
		local city = plot:GetPlotCity()
		local startingGold = mathFloor(HM_GetCityStartingGold(playerID, city))
		player:ChangeGold(startingGold)	
		if player:IsHuman() then
			local alertmessage = Locale.ConvertTextKey("TXT_KEY_JFD_VICTORIAN_FUNDS", startingGold, city:GetName())
			Events.GameplayAlertMessage(alertmessage)
		end		
	end 	
end
GameEvents.PlayerCityFounded.Add(HM_CityStartingGold)

local MurexID = GameInfoTypes["RESOURCE_MUREX"];
local CarthageMerchantID = GameInfoTypes["UNIT_TYRIAN_MERCHANT"];
local MurexImprovementID = GameInfoTypes["IMPROVEMENT_MUREX"];
function OnImprovementCreated (HPosX, HPosY, continent,   continent,     playerID)
	local pPlayer = Players[playerID];
	local pPlot = Map.GetPlot(ToGridFromHex(HPosX, HPosY));
	if (pPlot:GetImprovementType() == MurexImprovementID) then
			pPlot:SetNumResource(0);
			if (pPlot:GetNumResource() == 0) then
				pPlot:SetResourceType(MurexID, 1);
			end
	end	
end
Events.SerialEventImprovementCreated.Add( OnImprovementCreated );