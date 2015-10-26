-- PersiaUA
-- Author: Jeongseok
-- DateCreated: 5/18/2015 8:17:00 PM
--------------------------------------------------------------
function PersiaGoldenAgeSatrap(player, unitID, iX, iY)
	local pPlayer = Players[player];
	if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_PERSIA"] then
		local Capital = pPlayer:GetCapitalCity();
		local plot = Capital.GetPlot(iX, iY)
		local iUnitID = GameInfoTypes["UNIT_SATRAP"];

		local unit = pPlayer:GetUnitByID(unitID)
		local SatrapPromo = GameInfoTypes["PROMOTION_SATRAP"];

		if pPlayer:IsGoldenAge()and not unit:IsHasPromotion(SatrapPromo) then
			player:InitUnit (iUnitID, plot);
			unit:SetHasPromotion(SatrapPromo, true)
		end
	end
end
Events.ActivePlayerTurnStart.Add(PersiaGoldenAgeSatrap)