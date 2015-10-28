-- SetInitialSocialPolicies
-- Author: JS
-- DateCreated: 12/12/2014 3:00:45 PM
--------------------------------------------------------------
include("ModTools.lua")

GameEvents.PlayerDoTurn.Add(function(player)

	local pPlayer = Players[player];

	if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_GREECE"] then
		
		if not pPlayer:HasPolicy(GameInfoTypes["POLICY_ALEXANDER"]) then
				pPlayer:SetNumFreePolicies(1)
				pPlayer:SetNumFreePolicies(0)
				pPlayer:SetHasPolicy(GameInfoTypes["POLICY_ALEXANDER"], true)
		end
	end
end);

local civilisationID				= GameInfoTypes["CIVILIZATION_GREECE"];

function GreekOlympia(iPlayer)
	local pPlayer = Players[iPlayer]
	if pPlayer:IsAlive() and not pPlayer:IsMinorCiv() and iPlayer ~= 63 then
		if (pPlayer:GetCivilizationType() == civilisationID) then
<<<<<<< HEAD
=======
			if pCity:GetNumRealBuilding(GameInfoTypes["BUILDING_OLYMPIA"]) == 1 then
>>>>>>> origin/master
				local iAlliedCityState = 0;
				for iLoopPlayer, pLoopPlayer in pairs(Players) do
					if pLoopPlayer:IsMinorCiv() then
						if pLoopPlayer:GetMinorCivFriendshipLevelWithMajor(iPlayer) >= 2 then
							iAlliedCityState = iAlliedCityState + 1;
						end
					end
				end
				for pCity in pPlayer:Cities() do
<<<<<<< HEAD
					if pCity:GetNumRealBuilding(GameInfoTypes["BUILDING_OLYMPIA"]) == 1 then
						pCity:SetNumRealBuilding(GameInfoTypes["BUILDING_GREEK_CULTURE_UNIT_MODIFIER"], math.floor(2* iAlliedCityState))
					end
				end
=======
					pCity:SetNumRealBuilding(GameInfoTypes["BUILDING_GREEK_CULTURE_UNIT_MODIFIER"], math.floor(2* iAlliedCityState))
				end
			end
>>>>>>> origin/master
		end
	end
end

if IsCivilisationActive(civilisationID) then
	GameEvents.PlayerDoTurn.Add(GreekOlympia)
end
<<<<<<< HEAD
=======


>>>>>>> origin/master
