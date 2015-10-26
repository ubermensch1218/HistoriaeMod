-- VeneziaUA
-- Author: Ubermensch
-- DateCreated: 6/19/2015 9:41:14 PM
--------------------------------------------------------------
--[[[소재철] [오전 1:45] 시저야과제줄게
[소재철] [오전 1:45] 베네치아무역선
[소재철] [오전 1:45] 말인데
[소재철] [오전 1:45] 대상국가가 선포하거나선포당히ㅡ면
[소재철] [오전 1:45] 무역선사라지는게아니라
[소재철] [오전 1:45] 수도로복귀.
[소재철] [오전 1:46] 구현해봐
[소재철] [오전 1:46] 무역선에체력이잊ㅎ어서
공격당해도 멀쩡하다든지
[소재철] [오전 1:46] 베네치아만
30턴이아니라 10턴마다
무역임무한다든지
[소재철] [오전 1:47] 아니면전쟁해도안끊긴다든지
[소재철] [오전 1:47] 전쟁에졸라약한베네치아를
[소재철] [오전 1:47] 상향할방법은그것뿐
]]--
local Caravan = GameInfoTypes["UNIT_CARAVAN"];
local CargoShip = GameInfoTypes["UNIT_CARGO_SHIP"];

function VeneziaUA (player)
	local pPlayer = Players[player]
	if pPlayer:IsEverAlive() and pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_VENICE"] then
		local pCap = pPlayer:GetCapitalCity();
		local CapPlot = pCity:Plot();
		local CityX = CapPlot:GetX();
		local CityY = CapPlot:GetY();


		for pUnit in pPlayer:Units() do
			local VenicePiD = pPlayer:GetID();

			if (pUnit:GetUnitType() == CargoShip)then
				if pUnit:Kill(true, VenicePiD) then
					pPlayer:InitUnit (CargoShip, CityX, CityY);
				end
			elseif (pUnit:GetUnitType() == Caravan) then
				if pUnit:Kill(true, VenicePiD) then
					pPlayer:InitUnit (Caravan, CityX, CityY);
				end
			end
		end
	else
		break
	end
end
Events.SerialEventGameDataDirty.Add(VeneziaUA);
Events.SerialEventTurnTimerDirty.Add(VeneziaUA);
Events.SerialEventCityInfoDirty.Add(VeneziaUA);
