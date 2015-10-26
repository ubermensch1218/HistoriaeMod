-- CeltUA
-- Author: Ubermensch
-- DateCreated: 6/22/2015 9:02:50 AM
--------------------------------------------------------------
 for pUnit in pPlayer:Units() do
local iHP = pUnit:GetCurrHitPoints()
local bSet = false
if pUnit:GetBaseCombatStrength() > 0 then
local iWerebeastHP = pUnit:GetCurrHitPoints()
if iWerebeastHP <= 50 then
bSet = true
end
pUnit:SetHasPromotion(iWerebeastPromotion, bSet)
unit:GetDamage();