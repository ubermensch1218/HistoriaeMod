-- USPopup
-- Author: Jeongseok
-- DateCreated: 5/5/2015 4:37:37 PM
--------------------------------------------------------------

--INC UI ADDIN
function US_IsCivilisationActive(civilisationID)
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
--------------------------------------------------------------------------------------------------------------------------
-- US_GetRandom
--------------------------------------------------------------------------------------------------------------------------
function US_GetRandom(lower, upper)
    return Game.Rand((upper + 1) - lower, "") + lower
end
--==========================================================================================================================
-- CORE FUNCTIONS
--==========================================================================================================================
--Globals
----------------------------------------------------------------------------------------------------------------------------
local civilisationID = GameInfoTypes["CIVILIZATION_AMERICA"]
local isAmericaCivActive = US_IsCivilisationActive(civilisationID)
-- Policy Add
local policyAmerica1ID = GameInfoTypes["POLICY_US_SPEECH_1"]
local policyAmerica2ID = GameInfoTypes["POLICY_US_SPEECH_2"]
local policyAmerica3ID = GameInfoTypes["POLICY_US_SPEECH_3"]
local policyAmerica4ID = GameInfoTypes["POLICY_US_SPEECH_4"]
local policyAmerica5ID = GameInfoTypes["POLICY_US_SPEECH_5"]

--Promotion Add
local unitPromotionSpeech1ID = GameInfoTypes["PROMOTION_US_SPEECH_1"]

--Building Add


local warringPlayer = nil
----------------------------------------------------------------------------------------------------------------------------
--US_OnWarAmericaBonus
----------------------------------------------------------------------------------------------------------------------------
function US_OnWarAmericaBonus(teamID, otherTeamID)
	local player = Players[Teams[teamID]:GetLeaderID()]
	local otherPlayer = Players[Teams[otherTeamID]:GetLeaderID()]
	if (otherPlayer:GetCivilizationType() == civilisationID and Teams[otherPlayer:GetTeam()]:GetAtWarCount(true) == 1) then
		if otherPlayer:IsHuman() then
			US_ShowChooseWarTimeBonusPopup(player)
			warringPlayer = player
		else
			-- number from GetRandom
			local policyToGiveID = "POLICY_US_SPEECH_" .. US_GetRandom(1,6)
			player:SetNumFreePolicies(1)
			player:SetNumFreePolicies(0)
			player:SetHasPolicy(policyToGiveID, true)
		end
	end
end

if isAmericaCivActive then
	GameEvents.DeclareWar.Add(US_OnWarAmericaBonus)
end
----------------------------------------------------------------------------------------------------------------------------
--US_OnLastPeaceRemoveEffects
----------------------------------------------------------------------------------------------------------------------------
function US_OnLastPeaceRemoveEffects(teamID, otherTeamID)
	local player = Players[Teams[teamID]:GetLeaderID()]
	local otherPlayer = Players[Teams[otherTeamID]:GetLeaderID()]
	print("made peace", otherPlayer:GetCivilizationType(), Teams[otherPlayer:GetTeam()]:GetAtWarCount(true) == 0)
	if ((otherPlayer:GetCivilizationType() == civilisationID and Teams[otherPlayer:GetTeam()]:GetAtWarCount(true) == 0) or (player:GetCivilizationType() == civilisationID and Teams[player:GetTeam()]:GetAtWarCount(true) == 0)) then
		print("asde")
		--if added Policy, add in here
		local policiesToRemove = {policyAmerica1ID, policyAmerica2ID, policyAmerica3ID, policyAmerica4ID, policyAmerica5ID}
		
		for _, policyID in pairs(policiesToRemove) do
			if player:HasPolicy(policyID) then
				player:SetHasPolicy(policyID, false)
			end

			if otherPlayer:HasPolicy(policyID) then
				otherPlayer:SetHasPolicy(policyID, false)
			end

			--for unit
			for unit in player:Units() do
				if unit:IsHasPromotion(unitPromotionSpeech1ID) then
					unit:SetHasPromotion(unitPromotionSpeech1ID, false)
				end
			end

			for unit in otherPlayer:Units() do
				if unit:IsHasPromotion(unitPromotionSpeech1ID) then
					unit:SetHasPromotion(unitPromotionSpeech1ID, false)
				end
			end
			-- for building


		end
	end
end

if isAmericaCivActive then
	GameEvents.MakePeace.Add(US_OnLastPeaceRemoveEffects)
end
--==========================================================================================================================
-- UI FUNCTIONS
--==========================================================================================================================
--Globals
----------------------------------------------------------------------------------------------------------------------------
local activePlayer = Players[Game.GetActivePlayer()]
local isPopupOpen = false
----------------------------------------------------------------------------------------------------------------------------
--US_PopulateButtons
----------------------------------------------------------------------------------------------------------------------------
function US_PopulateButtons(speechNumber)
	local policyToGiveID = GameInfoTypes["POLICY_US_SPEECH_" .. speechNumber]
	local descriptionKey = "TXT_KEY_US_SPEECH_NOTIFICATION_" .. speechNumber
	local description = Locale.ConvertTextKey(descriptionKey, warringPlayer:GetCivilizationShortDescription())
	local descriptionShort = Locale.ConvertTextKey("TXT_KEY_US_SPEECH_NOTIFICATION_SHORT")
	activePlayer:SetNumFreePolicies(1)
	activePlayer:SetNumFreePolicies(0)
	activePlayer:SetHasPolicy(policyToGiveID, true)
	activePlayer:AddNotification(NotificationTypes["NOTIFICATION_GENERIC"], description, descriptionShort)
	
	if isPopupOpen then
		US_HideChooseWarTimeBonusPopup()
	end
end
----------------------------------------------------------------------------------------------------------------------------
--US_ShowChooseWarTimeBonusPopup
----------------------------------------------------------------------------------------------------------------------------
function US_ShowChooseWarTimeBonusPopup(attackingPlayer)
	CivIconHookup( Game.GetActivePlayer(), 64, Controls.CivIcon, Controls.CivIconBG, Controls.CivIconShadow, false, true );
	Controls.Summary:LocalizeAndSetText("TXT_KEY_US_SPEECHES_MESSAGE", attackingPlayer:GetCivilizationDescription())
	Controls.ButtonStack:CalculateSize();
	Controls.MainUI:DoAutoSize();
	Controls.MainUIBG:SetHide(false)
	Controls.MainUI:SetHide(false)
	isPopupOpen = true
end
----------------------------------------------------------------------------------------------------------------------------
--US_HideChooseWarTimeBonusPopup
----------------------------------------------------------------------------------------------------------------------------
function US_HideChooseWarTimeBonusPopup()
	Controls.MainUIBG:SetHide(true)
	Controls.MainUI:SetHide(true)
end
----------------------------------------------------------------------------------------------------------------------------
--US_Americas
----------------------------------------------------------------------------------------------------------------------------

function US_America1()
	US_PopulateButtons(1)
end
Controls.Button1:RegisterCallback(Mouse.eLClick, US_America1)

function US_America2()
	US_PopulateButtons(2)
end
Controls.Button2:RegisterCallback(Mouse.eLClick, US_America2)

function US_America3()
	US_PopulateButtons(3)
end
Controls.Button3:RegisterCallback(Mouse.eLClick, US_America3)

function US_America4()
	US_PopulateButtons(4)
end
Controls.Button4:RegisterCallback(Mouse.eLClick, US_America4)

function US_America5()
	US_PopulateButtons(5)
end
Controls.Button5:RegisterCallback(Mouse.eLClick, US_America5)

function US_America6()
	US_PopulateButtons(6)
end
Controls.Button6:RegisterCallback(Mouse.eLClick, US_America6)

-- when Policy Added, please add here.
--==========================================================================================================================
