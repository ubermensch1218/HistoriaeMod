-- BuffaloSpawn
-- Author: Jeongseok
-- DateCreated: 7/2/2015 9:24:44 AM
--------------------------------------------------------------


-- Lua Credit to Sioux MOD
-- 평원주변도시 -> 버팔로 소환

local rBuffalo = GameInfoTypes.RESOURCE_BISON;
local tPlains = GameInfoTypes.TERRAIN_PLAINS;

directions = {DirectionTypes.DIRECTION_NORTHEAST, DirectionTypes.DIRECTION_EAST, DirectionTypes.DIRECTION_SOUTHEAST,
              DirectionTypes.DIRECTION_SOUTHWEST, DirectionTypes.DIRECTION_WEST, DirectionTypes.DIRECTION_NORTHWEST}


function sDecompilePlotID(sKey)
    iBreak = string.find(sKey, "Y")
    iX = tonumber(string.sub(sKey, 1, iBreak - 1))
    iY = tonumber(string.sub(sKey, iBreak + 1))
    pPlot = Map.GetPlot(iX, iY)
    return pPlot
end

function sCompilePlotID(pPlot)
    iX = pPlot:GetX()
    iY = pPlot:GetY()
    return(iX .. "Y" .. iY)
end

local buffaloPlots = {}
local tempPlots = {}


for iPlot = 0, Map.GetNumPlots() - 1, 1 do
    local pPlot = Map.GetPlotByIndex(iPlot)
	if pPlot:GetResourceType() == rBuffalo then
		local sKey = sCompilePlotID(pPlot)
		buffaloPlots[sKey] = -1
    end
end

GameEvents.PlayerDoTurn.Add(
function(iPlayer)
    local pPlayer = Players[iPlayer];
	local pTeam = pPlayer:GetTeam()

    if (pPlayer:IsEverAlive()) then
		if (pPlayer:GetCivilizationType() == GameInfoTypes.CIVILIZATION_SHOSHONE) then

			local gSpeed = Game.GetGameSpeedType();
			local iCurrentTurn = Game.GetGameTurn();
		
			local iRadius = 1;
			local nCheck = 0;
			local nMessage = 0;

			for sKey, tTable in pairs(buffaloPlots) do
				local pPlot = sDecompilePlotID(sKey)

				if (pPlot:GetResourceType() == rBuffalo) then
					if pPlot:GetOwner() ~= -1 then
						if pPlot:GetOwner() == iPlayer then 

							pPlot:SetResourceType(-1)
							pPlot:SetImprovementType(-1)
							pPlot:SetResourceType(rBuffalo, 1)

							local sKey = sCompilePlotID(pPlot)
							
							buffaloPlots[sKey] = -1

						end
					end
				end

			end
		end
	end
end)

GameEvents.PlayerCityFounded.Add(
function(iPlayer, iCityX, iCityY)
	local pPlayer = Players[iPlayer];
	local pPlot = Map.GetPlot(iCityX, iCityY);
	local pCity = pPlot:GetPlotCity();
	local pTeam = pPlayer:GetTeam()

	if (pPlayer:IsEverAlive()) then
		if (pPlayer:GetCivilizationType() == GameInfoTypes.CIVILIZATION_SHOSHONE) then		
			if not pCity:IsCapital() then

				local Plains = 0;
				for loop, direction in ipairs(directions) do
					local tPlot = Map.PlotDirection(pPlot:GetX(), pPlot:GetY(), direction);
					if (tPlot:GetTerrainType() == tPlains) or (pPlot:GetTerrainType() == tPlains) then
						Plains = Plains + 1;
						break
					end
				end

				if Plains >= 1 then

					local iRadius = 2;
					PlaceBuffalo(iRadius, pPlayer, pTeam, pPlot, pCity);

					local bCheck = 0;
					local plotX = pCity:GetX();
					local plotY = pCity:GetY();
					for iDX = -2, 2 do
						for iDY = -2, 2 do
							local pTargetPlot = Map.PlotXYWithRangeCheck(plotX, plotY, iDX, iDY, 2);
							if pTargetPlot then
								if (pTargetPlot:GetResourceType() == rBuffalo) then
									bCheck = 1;
									break		
								end
							end
						end
					end

					if bCheck ~= 1 then
						iRadius = 3;
						PlaceBuffalo(iRadius, pPlayer, pTeam, pPlot, pCity);
					end			

					for iDX = -3, 3 do
						for iDY = -3, 3 do
							local pTargetPlot = Map.PlotXYWithRangeCheck(plotX, plotY, iDX, iDY, 3);
							if pTargetPlot then
								if (pTargetPlot:GetResourceType() == rBuffalo) then
									bCheck = 1;
									break		
								end
							end
						end
					end

					if bCheck <= 0 then
						pCity = pPlayer:GetCapitalCity();
						pPlot = pCity:Plot();
						iRadius = 3;
						PlaceBuffalo(iRadius, pPlayer, pTeam, pPlot, pCity);
					end

				end
			end
			
			
			for loop, direction in ipairs(directions) do
				local bPlot = Map.PlotDirection(pPlot:GetX(), pPlot:GetY(), direction);

				if (bPlot:GetResourceType() == rBuffalo) then
					if bPlot:GetOwner() ~= -1 then
						if bPlot:GetOwner() == iPlayer then 

							bPlot:SetResourceType(-1)
							bPlot:SetImprovementType(-1)
							bPlot:SetResourceType(rBuffalo, 1)
	
							local sKey = sbCompilePlotID(bPlot)						
							buffaloPlots[sKey] = -1

						end
					end
				end
			end

		end
	end
end)

function PlaceBuffalo (iRadius, pPlayer, pTeam, pPlot, pCity)

	local CityID = pCity:GetID();
    local rPlots = {}
    local iNumtoPlace = 1

    for pLoopPlot in PlotAreaSweepIterator(pPlot, iRadius, SECTOR_NORTH, DIRECTION_CLOCKWISE, DIRECTION_OUTWARDS, CENTRE_EXCLUDE) do
        table.insert(rPlots, pLoopPlot)
    end

    for iVal = 1, iNumtoPlace do
        local bPlaced = false

        while (not(bPlaced)) and rPlots[1] do -- while true and rPlots[1] do 

            local iRandom = bGetRandom(1, #rPlots)
            local pPlot = rPlots[iRandom]

			if (Players[pPlot:GetOwner()] == pPlayer) or (pPlot:GetOwner() == -1) then
				if (pPlot:GetResourceType() == -1) and not pPlot:IsCity() and not pPlot:IsWater() and not pPlot:IsMountain() and not pPlot:IsImpassable() and pPlot:HasYield() and not pPlot:IsHills() and (pPlot:GetFeatureType() ~= fForest) and (pPlot:GetFeatureType() ~= fJungle) and (pPlot:GetFeatureType() ~= fOasis) then
											
					pPlot:SetResourceType(rBuffalo, 1)
					local sKey = sCompilePlotID(pPlot)
					buffaloPlots[sKey] = -1

					bPlaced = true

					if pPlot:GetOwner() == -1 then
						local pID = pPlayer:GetID()
						pPlot:SetOwner(pID, CityID, true, true)
						pPlot:SetRevealed(pTeam, true)
					end
				end
            end

			table.remove(rPlots, iRandom)

        end
    end
end

function bGetRandom(lower, upper)
    return (Game.Rand((upper + 1) - lower, "")) + lower
end

local uPathfinder = GameInfoTypes.UNIT_SHOSHONE_PATHFINDER;

GameEvents.PlayerDoTurn.Add(
function(iPlayer)
    local pPlayer = Players[iPlayer];
    if (pPlayer:IsEverAlive()) then
		if bandCheck <= 0 then
			local bandAward = 1;
			for pUnit in pPlayer:Units() do
				if pUnit:GetUnitType() == uPathfinder then
					if bandAward >= 1 then

						local bRandom = bGetRandom(1, 12)
						if bRandom == 1 then
							pUnit:SetName("Rain in the Face");
						elseif bRandom == 2 then
							pUnit:SetName("Gall");
						elseif bRandom == 3 then
							pUnit:SetName("Two Bears");
						elseif bRandom == 4 then
							pUnit:SetName("Thunderhawk");
						elseif bRandom == 5 then
							pUnit:SetName("Running Antelope");
						elseif bRandom == 6 then
							pUnit:SetName("Crazy Horse");
						elseif bRandom == 7 then
							pUnit:SetName("Red Cloud");
						elseif bRandom == 8 then
							pUnit:SetName("Struck by the Ree");
						elseif bRandom == 9 then
							pUnit:SetName("Big Head");
						elseif bRandom == 10 then
							pUnit:SetName("Big Eagle");
						elseif bRandom == 11 then
							pUnit:SetName("Moccasin Top");
						elseif bRandom == 12 then
							pUnit:SetName("Good Weasel");
						end

						bandAward = bandAward - 1;
						break
					end
				end
			end
		end
	end
end)