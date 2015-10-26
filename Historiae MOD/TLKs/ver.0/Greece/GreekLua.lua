-- SetInitialSocialPolicies
-- Author: JS
-- DateCreated: 12/12/2014 3:00:45 PM
--------------------------------------------------------------
GameEvents.PlayerDoTurn.Add(function(player)
	local pPlayer = Players[player]
	if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_GREECE"] then
		
		if not pPlayer:HasPolicy(GameInfoTypes["POLICY_ALEXANDER"]) then
				pPlayer:SetNumFreePolicies(1)
				print("POLICY_ALEXANDER@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
				pPlayer:SetNumFreePolicies(0)
				pPlayer:SetHasPolicy(GameInfoTypes["POLICY_ALEXANDER"], true)
		end
	end
end);
--[[
function Olympia()
	local iActivePlayer = Game.GetActivePlayer();

	local pPlayer = Players[iActivePlayer];
	if pPlayer:IsMinorCiv() then
		local pMinor = Players[iActivePlayer];
	end
	if pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_GREECE"] then	
		local iLastTurnNumMinorsMet = pPlayer:GetNumMinorCivsMet();

		local NumMinorCivAllies = 0;

		for pCity in pPlayer:Cities() do
		local CityCulture = pCity:GetJONSCulturePerTurn();


			if pCity:GetNumRealBuilding("BUILDING_OLYMPIA") == 1 then
				local bAllies = pMinor:IsAllies(pPlayer);
				for i = 1, iLastTurnNumMinorsMet, 1 do
					if bAllies then
						NumMinorCivAllies = NumMinorCivAllies +1;
					end
				end 

				pCity:ChangeJONSCulturePerTurnFromBuildings(CityCulture * 0.02 * NumMinorCivAllies);

			end
		end
	end
end
]]--