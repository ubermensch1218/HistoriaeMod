-- SetInitialSocialPolicies
-- Author: JS
-- DateCreated: 12/12/2014 3:00:45 PM
--------------------------------------------------------------
GameEvents.PlayerDoTurn.Add(function(player)
	local iActivePlayer = Game.GetActivePlayer();
	local pPlayer = Players[iActivePlayer];
	if pPlayer:IsMinorCiv() then
		local pMinor = Players[iActivePlayer];
	end
	if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_GREECE"] then
		
		if not pPlayer:HasPolicy(GameInfoTypes["POLICY_ALEXANDER"]) then
				pPlayer:SetNumFreePolicies(1)
				pPlayer:SetNumFreePolicies(0)
				pPlayer:SetHasPolicy(GameInfoTypes["POLICY_ALEXANDER"], true)
		end

		-- Olympia 
		local iLastTurnNumMinorsMet = pPlayer:GetNumMinorCivsMet();

		local NumMinorCivAllies = 0;

		for pCity in pPlayer:Cities() do
		local CityCulture = pCity:GetJONSCulturePerTurn();


			if pCity:GetNumRealBuilding(GameInfoTypes["BUILDING_OLYMPIA"]) == 1 then
				local bAllies = pMinor:IsAllies(pPlayer);
				for i = 1, iLastTurnNumMinorsMet, 1 do
					if bAllies then
						NumMinorCivAllies = NumMinorCivAllies +1;
					end
				end 
				pCity:SetNumRealBuilding(GameInfoTypes["BUILDING_GREEK_CULTURE_UNIT_MODIFIER"], math.floor(CityCulture * 0.02 * NumMinorCivAllies));
			end
		end

	end

end);


