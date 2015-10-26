-- CoastalArtillary
-- Author: Ubermensch
-- DateCreated: 6/1/2015 8:09:51 PM
--------------------------------------------------------------
local EraUnits = {
[GameInfoTypes.ERA_RENAISSANCE] = GameInfoTypes.UNIT_COASTAL_CANON,
[GameInfoTypes.ERA_INDUSTRIAL] = GameInfoTypes.UNIT_COASTAL_BATTERY,
[GameInfoTypes.ERA_MODERN] = GameInfoTypes.UNIT_COASTAL_ARTILLERY,
[GameInfoTypes.ERA_POSTMODERN] = GameInfoTypes.UNIT_COASTAL_ARTILLERY,
[GameInfoTypes.ERA_FUTURE] = GameInfoTypes.UNIT_COASTAL_ARTILLERY,
};
GameEvents.BuildFinished.Add( 
function( playerID, x, y, improvementID )
	local player = Players[ playerID ]
	if player and player:IsEverAlive() and improvementID == GameInfoTypes.IMPROVEMENT_COASTAL_FORT then
		local unitTypeID = EraUnits[player:GetCurrentEra()]
		if unitTypeID then
			player:InitUnit( unitTypeID , x, y )
		end
	end
end)
