
print("--- LumberMill Timber ---");
include( "SaveUtils" ); MY_MOD_NAME = "Lumbermill";

--remote installation registry. Every time after modifying, make sure to call updateSaveData()
local aLumbermill = {};
local mapMaxX, mapMaxY = Map.GetGridSize();



function onImprovementCreated(iHexX, iHexY)
	local pPlot = Map.GetPlot(ToGridFromHex(iHexX, iHexY));
	if (pPlot~= nil) then
		local improvementType = pPlot:GetImprovementType();
		if(improvementType == GameInfoTypes.IMPROVEMENT_LUMBERMILL) then
	
			local plotID = pPlot:GetX() + pPlot:GetY() * mapMaxX;
			
			--local playerTeamID = Game.GetActiveTeam();
			local playerID = pPlot:GetOwner();		
			
			local isPillaged = pPlot:IsImprovementPillaged();		
			
			if(isPillaged) then
				if( aLumbermill[plotID]~=nil and aLumbermill[plotID].PlayerID ) then
					--need to take back timber resource
					DisconnectTimber( plotID, playerID );
				end
				print("LumberMill Pillaged at plot ID:", plotID);
			else
				--we don't want to overwrite data if registered mine already exists on site
				if(aLumbermill[plotID]==nil) then
					print("LumberMill Built or Repaired", plotID);
					ConnectTimber( plotID, playerID );
				end
			end
		end
	end
end
Events.SerialEventImprovementCreated.Add(onImprovementCreated)


function onImprovementDestroyed(iHexX, iHexY)
	local plotX, plotY = ToGridFromHex(iHexX, iHexY);
	local plotID = plotX + plotY * mapMaxX;
	
	if(aLumbermill[plotID]) then
		--local improvementType = pPlot:GetImprovementType();
		--if(improvementType == GameInfoTypes.IMPROVEMENT_LUMBERMILL) then

		-- there used to be lumbermill here - remove it
		print("onImprovementDestroyed: LumberMillDestroyed");
		DisconnectTimber( plotID, aLumbermill[plotID].PlayerID );
		end
	
end
Events.SerialEventImprovementDestroyed.Add(onImprovementDestroyed)


function onPlotOwnershipChange(iHexX, iHexY)
	local plotX, plotY = ToGridFromHex(iHexX, iHexY);
	local plotID = plotX + plotY * mapMaxX;	
	
	if(aLumbermill[plotID]) then
		print("onPlotOwnershipChange: LumberMill Ownership hac changed");
		DisconnectTimber( plotID, aLumbermill[plotID].PlayerID );
		local pPlot = Map.GetPlot(ToGridFromHex(iHexX, iHexY));
		if(pPlot) then
			local newOwner = pPlot:GetOwner();
			ConnectTimber( plotID, newOwner );
		else
			print("ERROR in LumberMillControl: Map.GetPlot returned nil");
		end
	end
	
end
Events.SerialEventHexCultureChanged.Add(onPlotOwnershipChange)

--Events.SerialEventCityCaptured.Add(CityCultureOnCapture)


function ConnectTimber( plotID, playerID )
	
	local pPlayer = Players[playerID];
	local iResourceID = GameInfoTypes.RESOURCE_TIMBER;
	local iResourceNum = 4;

	if(pPlayer) then
		pPlayer:ChangeNumResourceTotal(iResourceID, iResourceNum);
	end

	--register/update mine status
	aLumbermill[plotID] = {};
	aLumbermill[plotID].PlayerID = playerID;
	updateSaveData(plotID);
	
	print("Connected resource ", iResourceID, " for player ", playerID, "amount:", iResourceNum);
end


function DisconnectTimber( plotID, playerID )

	local pPlayer = Players[playerID];
	local iResourceID = GameInfoTypes.RESOURCE_TIMBER;
	local iResourceNum = 4;

	if(pPlayer) then
		pPlayer:ChangeNumResourceTotal(iResourceID, -iResourceNum);
	end
	
	--update lumbermill status
	--aLumbermill[plotID].PlayerID = false;
	aLumbermill[plotID] = nil;
	updateSaveData(plotID);
	
	print("Disconnected resource ", iResourceID, " for player ", playerID, "amount:", iResourceNum);
end


function updateSaveData(plotID)
	local pPlayer = Players[Game.GetActivePlayer()];
	save( pPlayer, plotID, aLumbermill[plotID] );
end


function loadSaveData()
	local pPlayer = Players[Game.GetActivePlayer()];
	local wholeTable = load( pPlayer );
	for plotID, v in pairs(wholeTable) do
		print("plotID:",plotID);
		for ii,kk in pairs(v) do
			print(ii,kk);
		end
		
		aLumbermill[plotID] = v;
		
	end
end
loadSaveData();	--call on startup
print("--- LumberMill Timber Success---");