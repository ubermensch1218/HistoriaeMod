-- OnlyOnPlotPromotion
-- Author: Ubermensch
-- DateCreated: 6/1/2015 8:06:36 PM
--------------------------------------------------------------
function OnUnitMove(playerID, unitID)
	local pPlayer = Players[ playerID ]
	local pUnit = Players[ playerID ]:GetUnitByID( unitID );
	local pPlot = pUnit:GetPlot();
	local improvementID = pPlot:GetImprovementType()
	local iPromotionID = GameInfo.UnitPromotions.PROMOTION_WATCH_TOWER.ID

	if pPlayer and pPlayer:IsEverAlive() and improvementID == GameInfoTypes.IMPROVEMENT_WATCH_TOWER then
			if not (pUnit:IsHasPromotion(iPromotionID)) then
			pUnit:SetHasPromotion(iPromotionID, true);
			end
	end
	if pPlayer and pPlayer:IsEverAlive() and improvementID ~= GameInfoTypes.IMPROVEMENT_WATCH_TOWER then
			if (pUnit:IsHasPromotion(iPromotionID)) then
			pUnit:SetHasPromotion(iPromotionID, false);
			end
	else
	end

end
Events.SerialEventUnitMoveToHexes.Add( OnUnitMove );
