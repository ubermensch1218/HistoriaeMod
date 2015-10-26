-- HunicUA
-- Author: Jeongseok
-- DateCreated: 5/18/2015 10:13:59 PM
--------------------------------------------------------------
include("PlotIterators")
GameEvents.PlayerDoTurn.Add(function (player)
	local pPlayer = Players[player];
	if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_HUNS"] then
		
		if not pPlayer:HasPolicy(GameInfoTypes["POLICY_HUNS"]) then
				pPlayer:SetNumFreePolicies(1);
				pPlayer:SetNumFreePolicies(0);
				pPlayer:SetHasPolicy(GameInfoTypes["POLICY_HUNS"], true);
				print("POLICY_HUN ADOPTED")
		end
	end
end);

function HunLandMoveAdd()
	for iPlayerLoop = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	    local pPlayer = Players[iPlayerLoop];
		if pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_HUNS"] and pPlayer:IsAlive() then
			for pUnit in pPlayer:Units() do
				if (pUnit:GetPlot():GetOwner() == iPlayerLoop) and (not pUnit:IsTrade()) then
						local Moves = pUnit:GetMoves()
						pUnit:SetMoves(Moves+2);
				end
			end
		end      
	end	
end
Events.SerialEventUnitMoveToHexes.Add( HunLandMoveAdd );
Events.SerialEventUnitMove.Add( HunLandMoveAdd );
Events.SerialEventUnitTeleportedToHex.Add( HunLandMoveAdd );


local HunHorseArcherID = GameInfoTypes["UNIT_HUN_HORSE_ARCHER"];
local HunRamID = GameInfoTypes["UNIT_HUN_BATTERING_RAM"];
local HunNLeaderID = GameInfoTypes["UNIT_NOMADS_LEADER"];
local iUnitID = GameInfoTypes["UNIT_HUN_SETTLER"];
GameEvents.PlayerDoTurn.Add(function(player)

		local pPlayer = Players[player];
		if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_HUNS"] then
			local playerStartPlot = pPlayer:GetStartingPlot();
			playerStartPlot:SetImprovementType(GameInfoTypes["IMPROVEMENT_HUN_BARBARIAN_CAMP"]);	

			-- 주둔지
			if playerStartPlot:IsImprovementPillaged() == false then

					local BaseRand = Game.Rand(10,"Hun Horse Archer Percentage") ;					
					local X = playerStartPlot:GetX();
					local Y = playerStartPlot:GetY();

					if BaseRand == 1 then
						pPlayer:InitUnit (HunHorseArcherID, X, Y);
					elseif BaseRand == 2 then
						pPlayer:InitUnit (HunHorseArcherID, X, Y);
					elseif BaseRand == 3 then
						pPlayer:InitUnit (HunRamID, X, Y);
					elseif BaseRand == 4 then
						pPlayer:InitUnit (HunRamID, X, Y);
					elseif BaseRand == 5 then
						pPlayer:InitUnit (iUnitID, X, Y);
					end
				end
			-- 도시
			for pCity in pPlayer:Cities() do
			local CityPlot = pCity:Plot();
				if CityPlot:IsCity() then
				-- 도시임
					local CityX = CityPlot:GetX();
					local CityY = CityPlot:GetY();
					if pPlayer:GetNumCities() > 0 then
						local NumCities = pPlayer:GetNumCities();
						local BaseRand = Game.Rand(5 + NumCities,"Hun Ram Percentage") ;	
						if BaseRand == 1 then
							pPlayer:InitUnit (HunRamID, CityX, CityY);
						elseif BaseRand == 2 then
							pPlayer:InitUnit (HunHorseArcherID, CityX, CityY);
						elseif BaseRand == 3 then
							pPlayer:InitUnit (iUnitID, CityX, CityY);
						end
					end
				end
			end
		end
		if pPlayer:GetNumCities() == 0 then
			if pPlayer:CanCreatePantheon(true) then
				pPlayer:CanCreatePantheon(false);
			end
		elseif pPlayer:GetNumCities() >= 1 then
			if pPlayer:CanCreatePantheon(true) then
				pPlayer:CanCreatePantheon(true);
			end
		end
end);

function HunImprovement(player)
	local pPlayer = Players[player];
	if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_HUNS"] then
		local playerStartPlot = pPlayer:GetStartingPlot();
		playerStartPlot:SetImprovementType(GameInfoTypes["IMPROVEMENT_HUN_BARBARIAN_CAMP"]);	
	end
end

function OnHunicCityCaptured (playerID, bCapital, iX, iY, newPlayerID, bConquest)
    local newPlayer = Players[newPlayerID];
    local oldPlayer = Players[playerID];
	local plot = Map.GetPlot(iX, iY);
    local pCity = plot:GetPlotCity();
	if newPlayer:IsEverAlive() and newPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_HUNS"] then
		
		local iNumSettler = 3;
		for i = 0, iNumSettler - 1, 1 do
			unit = newPlayer:InitUnit(iUnitID, iX, iY);
			unit:JumpToNearestValidPlot();
		end
	end
end
GameEvents.CityCaptureComplete.Add(OnHunicCityCaptured);