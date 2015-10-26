
----------------------------------------------------------------------------------------------------------------------------
-- Rome
----------------------------------------------------------------------------------------------------------------------------

function RomanRoads (control)

	for iPlayerLoop = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	    local pPlayer = Players[iPlayerLoop];
		if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_ROME"] then
			for pCity in pPlayer:Cities() do
				local i;
				for i = 0, pCity:GetNumCityPlots() - 1, 1 do
					local pPlot = pCity:GetCityIndexPlot( i );
					if (pPlot ~= nil) then
						if (pPlot:GetOwner() == pCity:GetOwner()) then
							if pPlot:GetRouteType() == GameInfoTypes.ROUTE_ROAD then
								pPlot:SetRouteType(GameInfoTypes.ROUTE_ROMAN_ROAD);
							end
						end	
					end		
				end	
			end	
		end			
	end
end	

Events.SerialEventGameDataDirty.Add(RomanRoads);
Events.SerialEventTurnTimerDirty.Add(RomanRoads);
Events.SerialEventCityInfoDirty.Add(RomanRoads);


function BacktoRoads (control)

	for iPlayerLoop = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	    local pPlayer = Players[iPlayerLoop];
		if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() ~= GameInfoTypes["CIVILIZATION_ROME"] then
			for pCity in pPlayer:Cities() do
				local i;
				for i = 0, pCity:GetNumCityPlots() - 1, 1 do
					local pPlot = pCity:GetCityIndexPlot( i );
					if (pPlot ~= nil) then
						if (pPlot:GetOwner() == pCity:GetOwner()) then
							if pPlot:GetRouteType() == GameInfoTypes.ROUTE_ROMAN_ROAD then
								pPlot:SetRouteType(GameInfoTypes.ROUTE_ROAD);
							end
						end	
					end		
				end	
			end	
		elseif pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() ~= GameInfoTypes["CIVILIZATION_PERSIA"] then
			for pCity in pPlayer:Cities() do
				local i;
				for i = 0, pCity:GetNumCityPlots() - 1, 1 do
					local pPlot = pCity:GetCityIndexPlot( i );
					if (pPlot ~= nil) then
						if (pPlot:GetOwner() == pCity:GetOwner()) then
							if pPlot:GetRouteType() == GameInfoTypes.ROUTE_KING_ROAD then
								pPlot:SetRouteType(GameInfoTypes.ROUTE_ROAD);
							end
						end	
					end		
				end	
			end	
		end		
	end
end	

Events.SerialEventGameDataDirty.Add(BacktoRoads);
Events.SerialEventTurnTimerDirty.Add(BacktoRoads);
Events.SerialEventCityInfoDirty.Add(BacktoRoads);


-- PERSIA KING_ROAD

function KingsRoads (control)

	for iPlayerLoop = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	    local pPlayer = Players[iPlayerLoop];
		if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_PERSIA"] then
			for pCity in pPlayer:Cities() do
				local i;
				for i = 0, pCity:GetNumCityPlots() - 1, 1 do
					local pPlot = pCity:GetCityIndexPlot( i );
					if (pPlot ~= nil) then
						if (pPlot:GetOwner() == pCity:GetOwner()) then
							if pPlot:GetRouteType() == GameInfoTypes.ROUTE_ROAD then
								pPlot:SetRouteType(GameInfoTypes.ROUTE_KING_ROAD);
							end
						end	
					end		
				end	
			end	
		end			
	end
end	

Events.SerialEventGameDataDirty.Add(KingsRoads);
Events.SerialEventTurnTimerDirty.Add(KingsRoads);
Events.SerialEventCityInfoDirty.Add(KingsRoads);

