-- UnHapPerPop
-- Author: Jeongseok
-- DateCreated: 5/10/2015 10:38:29 PM
--------------------------------------------------------------

--[[���� �α� 15 < 25 - ���� ��ü�� �ù� ���� 5% �߰�

���� �α� 25 �̻� - ���� ��ü�� �ù� ���� 5% -> 15%

���� �α� 35 �̻� - ���� ��ü�� �ù� ���� 15% -> 30%

30% �� �ִ� (�÷��� ���)]]--

function UnhappinessPerCapPop(playerID)
	local player = Players[playerID]
	if (player:GetCivilizationType() == civilisationID and player:IsEverAlive()) then
		local Capital = player:GetCapitalCity();
		local avgPop = player:GetAveragePopulation();
		
		local FirstPopB = GameInfoTypes["BUILDING_1525PopB"];
		local SecPopB = GameInfoTypes["BUILDING_2535PopB"];
		local ThrPopB = GameInfoTypes["BUILDING_35PopB"];

		local FirID = GameInfo.Buildings.BUILDING_1525PopB.ID
		local SecID = GameInfo.Buildings.BUILDING_2535PopB.ID
		local ThrID = GameInfo.Buildings.BUILDING_35PopB.ID

		if  (15 <= avgPop < 25)== true then
			if Capital:IsHasBuilding(FirID) == false then
				Capital:SetNumRealBuilding(FirstPopB, 1);
			end
		elseif (25 <= avgPop  < 35)== true then
			if Capital:IsHasBuilding(FirID) == true and Capital:IsHasBuilding(SecID) == false then
				Capital:SetNumRealBuilding(FirstPopB, 0);
				Capital:SetNumRealBuilding(SecPopB, 1);
			end
		elseif (35 <= avgPop) == true then
			if Capital:IsHasBuilding(SecID) == true and Capital:IsHasBuilding(ThrID) == false then
				Capital:SetNumRealBuilding(SecPopB, 0);
				Capital:SetNumRealBuilding(ThrPopB, 1);
			end
		end

		if player:IsHuman() then
			local alertmessage = Locale.ConvertTextKey("TXT_KEY_UNHAPPINESSPERCAPPOP")
			Events.GameplayAlertMessage(alertmessage)
		end		
	end
end

GameEvents.PlayerDoTurn.Add(UnhappinessPerCapPop)