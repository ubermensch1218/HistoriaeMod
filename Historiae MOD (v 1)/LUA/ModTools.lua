-- ModTools
-- Author: Ubermensch
-- DateCreated: 5/25/2015 11:11:25 AM
--------------------------------------------------------------
-- ModTools
--------------------------------------------------------------
function IsValidPlayer(player)
	return player ~= nil and player:IsEverAlive() and not player:IsBarbarian();
end

function GetGameTurn()
	local gameTurn = Game.GetGameTurn();
	return gameTurn
end

function IsMajorCiv(player)
	return IsValidPlayer(player) and player:GetID() <= GameDefines.MAX_MAJOR_CIVS-1;
end

function GetPlayerName(player)	-- get player's name for notification
	if player:IsMinorCiv() then
		local minorCivType = player:GetMinorCivType();
		local minorCivInfo = GameInfo.MinorCivilizations[minorCivType];
		return Locale.ConvertTextKey(minorCivInfo.Description);
	end
	local iCivType = player:GetCivilizationType();
	local civInfo = GameInfo.Civilizations[iCivType];			
	return Locale.ConvertTextKey(civInfo.Description);	
end

function HasMet(iPlayer,ePlayer)
if iPlayer == ePlayer then
		return false;
end
local iTeam = Teams[iPlayer:GetTeam()];
local eTeamIndex = ePlayer:GetTeam();
return iTeam:IsHasMet(eTeamIndex); 
end

function GetEraByType(EraType)
 print("Era = "..EraType);
 local Era = 7;
 if  EraType == "ERA_ANCIENT" then
	     Era = 0;
   	   elseif EraType == "ERA_CLASSICAL" then
	     Era = 1;
       elseif EraType == "ERA_MEDIEVAL" then
	     Era = 2;
	   elseif EraType == "ERA_RENAISSANCE" then
	     Era = 3;
	   elseif EraType == "ERA_INDUSTRIAL" then
	     Era = 4;
	   elseif EraType == "ERA_MODERN" then
	     Era = 5;
	   elseif EraType == "ERA_ATOMIC" then
	     Era = 6;
	   elseif EraType == "ERA_INFORMATION" then
	     Era = 7;
	 end
	 return Era;
end

function GetClosestPlayerCity(iPlayer,pPlot)
local iX = pPlot:GetX();
local iY = pPlot:GetY();
local pCity;
local Distance = -1;
local tempDistance;
for city in iPlayer:Cities() do
    tempDistance = Map.PlotDistance(iX,iY,city:GetX(),city:GetY());
    if Distance == -1 or tempDistance < Distance then
	   Distance = tempDistance;
	   pCity = city;
	end
end
if not pCity then
print("Warning:No ClosestCity!")
return;
end
print("ClosestCity:"..pCity:GetName())
return pCity;

end

function PlayersAtWar(iPlayer,ePlayer)

local iTeam = Teams[iPlayer:GetTeam()];
local eTeamIndex = ePlayer:GetTeam();
if iTeam:IsAtWar(eTeamIndex) then
   return true;
else
   return false;
end

end

function IsCivilisationActive(civilisationID)
	for iSlot = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
		local slotStatus = PreGame.GetSlotStatus(iSlot)
		if (slotStatus == SlotStatus["SS_TAKEN"] or slotStatus == SlotStatus["SS_COMPUTER"]) then
			if PreGame.GetCivilization(iSlot) == civilisationID then
				return true
			end
		end
	end

	return false
end

-- IS IDEOLOGY DIFF
Ideaologies = { GameInfoTypes["POLICY_BRANCH_AUTOCRACY"], GameInfoTypes["POLICY_BRANCH_FREEDOM"], GameInfoTypes["POLICY_BRANCH_ORDER"]}
function IsIdeologyDiff(iPlayer,iEnemyPlayer)
	local pPlayer = Players[iPlayer]
	local pEnemyPlayer = Players[iEnemyPlayer]
	if pPlayer:IsEverAlive() and not pPlayer:IsMinorCiv() and iPlayer ~= 63 then
		local PlayerCiv =  pPlayer:GetCivilizationType()
		if (pPlayer:GetCivilizationType() == PlayerCiv) and (pEnemyPlayer:GetCivilizationType() ~= PlayerCiv) then
			for i = 1,3 do
				if pPlayer:IsPolicyBranchUnlocked(Ideaologies[i]) ~= pEnemyPlayer:IsPolicyBranchUnlocked(Ideaologies[i]) then
						return true
				end
			end
		end
	end
end
--[[
function GetPlayerTrait(player)
    if not IsMajorCiv(player) then
	    return nil;
	end  
    local leader = GameInfo.Leaders[player:GetLeaderType()];
    local leaderTrait = GameInfo.Leader_Traits("LeaderType ='" .. leader.Type .. "'")();
    local Trait = GameInfo.Traits[leaderTrait.TraitType];
	return Trait;
end
]]--