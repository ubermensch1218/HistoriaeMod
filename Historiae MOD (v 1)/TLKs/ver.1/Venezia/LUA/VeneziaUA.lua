-- VeneziaUA
-- Author: Ubermensch
-- DateCreated: 6/19/2015 9:41:14 PM
--------------------------------------------------------------
--[[[����ö] [���� 1:45] �����߰����ٰ�
[����ö] [���� 1:45] ����ġ�ƹ�����
[����ö] [���� 1:45] ���ε�
[����ö] [���� 1:45] ��󱹰��� �����ϰų����������Ѹ�
[����ö] [���� 1:45] ������������°Ծƴ϶�
[����ö] [���� 1:45] �����κ���.
[����ö] [���� 1:46] �����غ�
[����ö] [���� 1:46] ��������ü�����ؤ��
���ݴ��ص� �����ϴٵ���
[����ö] [���� 1:46] ����ġ�Ƹ�
30���̾ƴ϶� 10�ϸ���
�����ӹ��Ѵٵ���
[����ö] [���� 1:47] �ƴϸ������ص��Ȳ���ٵ���
[����ö] [���� 1:47] ���￡������Ѻ���ġ�Ƹ�
[����ö] [���� 1:47] �����ҹ�����װͻ�
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
