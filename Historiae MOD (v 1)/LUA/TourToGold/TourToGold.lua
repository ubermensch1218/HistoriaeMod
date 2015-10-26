-- TourToGold
-- Author: Ubermensch
-- DateCreated: 5/22/2015 10:12:15 PM
--------------------------------------------------------------
function TourToGold(player)
	local pPlayer = Players[iPlayerID];
	local Tour = pPlayer:GetTourism();
	pPlayer:ChangeGold(Tour);
end
Events.ActivePlayerTurnStart.Add(TourToGold);