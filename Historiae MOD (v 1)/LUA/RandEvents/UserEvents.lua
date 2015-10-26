-- UserEvents
-- Author: veyDer
--------------------------------------------------------------

include( "UserEventsUtils" );

UserEventsTable		= {};
UserEventsLogTable	= {};
UserEventsSchedule	= {};


function UserEventsHandler()
	-- events scheduled for a given turn
	local schedule		= UserEventsSchedule[ Game.GetGameTurn() ] or {};
	local is_scheduled	= false;
	if #schedule > 0 then
		-- deal with scheduled events
		is_scheduled = UserEventsHandlerProcess( schedule, true );
	end
	
	if not is_scheduled then
		-- randomize the order of the events
		local event_table	= {};
		for _i, event in pairs( UserEventsTable ) do
			table.insert( event_table, event );
		end
		_Shuffle( event_table );
		UserEventsHandlerProcess( event_table, false );
	end
end
function UserEventsHandlerProcess( event_table, scheduled )
	local func_ret	= false;
	local playerID	= Game.GetActivePlayer(); -- TODO: handle AI players, using flavor option value to determine the preferred choice
	local pPlayer	= Players[ playerID ];

	-- cycle through events
	for event_i, event in pairs( event_table ) do
		-- perform the condition check, only if the event would occur
		local rand_res = math.random( 10000 ) / ( 10000 );
		if scheduled or rand_res < event.probability then
			local is_valid_event	= false;
			local valid_elems		= {};

			for option_i, option in pairs( event.options ) do
				local is_valid_option	= true;
				if type( option.condition ) == "function" then
					is_valid_option	= false;
					-- check the cities and surrounding plots
					for city in pPlayer:Cities() do
						local cityID	= city:GetID();

						for i = 0, city:GetNumCityPlots() - 1, 1 do
							local plot	= city:GetCityIndexPlot( i );
							if plot ~= nil and plot:GetOwner() == playerID then
								local params	= { playerID, cityID, nil, { x = plot:GetX(), y = plot:GetY() } };
								local cond_res	= option.condition( pPlayer, city, nil, plot );
								if cond_res then
									is_valid_option	= true;
									table.insert( valid_elems, params );
								end
							end
						end -- for i
					end -- for city

					-- check the units
					for unit in pPlayer:Units() do
						local unitID	= unit:GetID();
						local unit_plot	= unit:GetPlot();
						local unit_params	= { playerID, nil, unitID, { x = unit_plot:GetX(), y = unit_plot:GetY() } };
						local cond_res	= option.condition( pPlayer, nil, unit, unit_plot );
						if cond_res then
							is_valid_option	= true;
							table.insert( valid_elems, unit_params );
						end
					end -- for unit
				end -- if type ( option.condition ) == "function"

				UserEventsTable[ event.id ].options[ option_i ].is_valid	= is_valid_option;
				if is_valid_option then
					is_valid_event = true;
				end
			end -- for option_i, option
			
			if is_valid_event then
				_Shuffle( valid_elems );
				UserEventsTable[ event.id ]._elem = valid_elems[ 1 ];
				UserEventLog( event.id, playerID );
				LuaEvents.UserEventsPopupBuild( event );
				func_ret = true;
				if not scheduled then
					break;
				end
			end
		end -- if scheduled or rand_res < event.probability
	end -- for event_i, event
	return func_ret;
end
Events.ActivePlayerTurnStart.Add(UserEventsHandler);


function UserEventAdd( event_data )
	-- data manipulation / sanitizing goes here

	-- add the event to the events table
	UserEventsTable[ event_data.id ]	= event_data;
end

function UserEventAddSchedule( event_id, game_turn )
	local turn_schedule = UserEventsSchedule[ game_turn ] or {};
	for _, event in pairs( UserEventsTable ) do
		if event.id == event_id then
			table.insert( turn_schedule, event );
			break;
		end
	end
	UserEventsSchedule[ game_turn ] = turn_schedule;

end

function UserEventHasAppeared( event_id )
	for log_event_id, _ in pairs( UserEventsLogTable ) do
		if log_event_id == event_id then
			return true;
		end
	end
	return false;
end

function UserEventLastAppeared( event_id, player_id )
	local event_log	= UserEventsLogTable[ event_id ];
	if event_log == nil or not #event_log.history then
		return 0;
	end

	event_log	= event_log.history;

	local game_turn	= -1;
	for _, log_entry in pairs( event_log ) do
		if log_entry.player == player_id and log_entry.turn > game_turn then
			game_turn	= log_entry.turn;
		end
	end
	if game_turn == -1 then
		return nil;
	end
	return game_turn;
end

function UserEventLog( event_id, player_id )
	local log_entry	= UserEventsLogTable[ event_id ] or {};

	local game_turn		= Game.GetGameTurn();
	log_entry.last_on	= game_turn;
	local event_history	= log_entry.history or {};
	table.insert( event_history, { player	= player_id, turn	= game_turn } );
	log_entry.history	= event_history;

	UserEventsLogTable[ event_id ] = log_entry;
end

function UserEventNumAppeared( event_id )
	local event_log = UserEventsLogTable[ event_id ];
	if event_log == nil then
		return 0;
	end
	return #event_log.history;
end

function UserEventNumAppearedForPlayer( event_id, player_id )
	local event_log	= UserEventsLogTable[ event_id ];
	if event_log == nil or not #event_log.history then
		return 0;
	end

	event_log	= event_log.history;

	local cnt	= 0;
	for _, log_entry in pairs( event_log ) do
		if log_entry.player == player_id then
			cnt	= cnt + 1;
		end
	end
	return cnt;
end

