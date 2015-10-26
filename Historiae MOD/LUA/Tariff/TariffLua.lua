-- TariffLua
-- Author: Jeongseok
-- DateCreated: 6/23/2015 4:46:13 PM
--------------------------------------------------------------

-- set the erafee
function EraFeeDefines(player)
	local nera	= player:GetCurrentEra(); 
	local ncounter = 0;
	if nera == GameInfo.Eras[ "ERA_ANCIENT" ].ID then
		ncounter = 0.25;
	elseif nera == GameInfo.Eras[ "ERA_CLASSICAL" ].ID then
		ncounter = 0.5;
	elseif nera == GameInfo.Eras[ "ERA_MEDIEVAL" ].ID then
		ncounter = 2;
	elseif nera == GameInfo.Eras[ "ERA_RENAISSANCE" ].ID then
		ncounter = 8;
	elseif nera == GameInfo.Eras[ "ERA_INDUSTRIAL" ].ID then
		ncounter = 160;
	elseif nera == GameInfo.Eras[ "ERA_MODERN" ].ID then
		ncounter = 320;
	elseif nera == GameInfo.Eras[ "ERA_POSTMODERN" ].ID then
		ncounter = 640;
	elseif nera == GameInfo.Eras[ "ERA_FUTURE" ].ID then
		ncounter = 1280;
	else
		ncounter = 2560;
	end
	return ncounter
end


local g_iUs = -1; --Game.GetActivePlayer();
local g_iThem = -1;
local g_pUs = -1;
local g_pThem = -1;
local g_iUsTeam = -1;
local g_iThemTeam = -1;
local g_pUsTeam = -1;
local g_pThemTeam = -1;

function GetBasicSwitch(iPlayer, iOtherplayer)
	local pPlayer = Players[iPlayer];
	local pTeam = Teams[pPlayer:GetTeam()];
	local bSwitch = false;

	if not pPlayer:GetNumInternationalTradeRoutesAvailable() == 0 then
		g_iUsTeam = g_pUs:GetTeam(); -- team int
		g_pUsTeam = Teams[ g_iUsTeam ]; -- team obj
    
		g_iThem = iOtherplayer; --int
		g_pThem = Players[ g_iThem ]; --obj
		g_iThemTeam = g_pThem:GetTeam(); --team int
		g_pThemTeam = Teams[ g_iThemTeam ]; -- team obj

		if (not g_pUsTeam:IsOpenBordersTradingAllowed() and not g_pThemTeam:IsOpenBordersTradingAllowed()) then 
			bSwitch = true
		end
		return bSwitch
	end
	return bSwitch
end
function TariffInit(player)

	if bSwitch == true then
		local pPlayer = Players[player];
		for pUnit in pPlayer:Units() do
			local Caravan = GameInfoTypes["UNIT_CARAVAN"];
			local CargoShip = GameInfoTypes["UNIT_CARGO_SHIP"];
			--Cargoship
			--Cargoship
			--Cargoship
			--Cargoship
			--Cargoship
			if (pUnit:GetUnitType() == CargoShip)then
				local pCargoShipOwner = Players[pUnit:GetOwner()]; --get caravan's owner
				local pCargoShipPlot = pUnit:GetPlot();  -- get unit's plot

				if (not pCargoShipPlot:IsFriendlyTerritory(pCargoShipOwner)) then -- if Cargoship is in nonFriendly Territory
					local TileOwner = Players[pCargoShipPlot:GetOwner()]; -- get the unit's plot's owner
					local FaceDirection = pUnit:GetFacingDirection();
					local CargoShipTotalCost = 0;
					if pCargoShipPlot:IsCity() then
						CargoShipTotalCost = 26*ncounter
					elseif (not pCargoShipPlot:IsCity()) then
						local SecFaceDirection = pUnit:GetFacingDirection();
						if SecFaceDirection == FaceDirection then
							CargoShipTotalCost = 8*ncounter
						elseif (not SecFaceDirection == FaceDirection) then
							CargoShipTotalCost = 26*ncounter
						end
							
					end
					pCargoShipOwner:ChangeGold(-CargoShipTotalCost)	
					TileOwner:ChangeGold(CargoShipTotalCost)	
					if pCargoShipOwner:IsHuman() then
						local alertmessage = Locale.ConvertTextKey("TXT_KEY_CARGOSHIP_SPEND", CargoShipTotalCost)
						Events.GameplayAlertMessage(alertmessage)
					end		
				end
				--  clear0 = "You have dispersed a villainous " .. camp .. " and recovered {1_NumGold} [ICON_GOLD] Gold from it!";
			--Caravan
			--Caravan
			--Caravan
			--Caravan
			--Caravan
			elseif (pUnit:GetUnitType() ==Caravan) then
				local pCaravanOwner = Players[pUnit:GetOwner()];
				local pCaravanPlot = pUnit:GetPlot();

				if (not pCaravanPlot:IsFriendlyTerritory(pCaravanOwner)) then
					local TileOwner = Players[pCaravanPlot:GetOwner()];
					local FaceDirection = pUnit:GetFacingDirection();
					local CaravanTotalCost = 0;
					if pCaravanPlot:IsCity() then
						CaravanTotalCost = 26*ncounter
					elseif (not pCaravanPlot:IsCity()) then
						local SecFaceDirection = pUnit:GetFacingDirection();
						if SecFaceDirection == FaceDirection then
							CaravanTotalCost = 8*ncounter
						elseif (not SecFaceDirection == FaceDirection) then
							CaravanTotalCost = 26*ncounter
						end
							
					end
					pCaravanOwner:ChangeGold(-CaravanTotalCost)	
					TileOwner:ChangeGold(CaravanTotalCost)	
					if pCargoShipOwner:IsHuman() then
						local alertmessage = Locale.ConvertTextKey("TXT_KEY_CARAVAN_SPEND", CaravanTotalCost)
						Events.GameplayAlertMessage(alertmessage)
					end		
				end
			end
		end
	end
end
GameEvents.PlayerDoTurn.Add(TariffInit)