-- USerEvents popup
-- Author: veyDer InGAMEUI
--------------------------------------------------------------

include("InstanceManager");
include("IconSupport");
include("FLuaVector");
include("GameplayUtilities");

function BuildUserEventPopup( event )
	local playerID, cityID, unitID, plot_coords	= unpack( event._elem );

	if playerID == nil or plot_coords == nil then
		return;
	end

	local pPlayer	= Players[ playerID ];	
	local pCity		= pPlayer:GetCityByID( cityID );
	local pUnit		= pPlayer:GetUnitByID( unitID );
	local pPlot		= Map.GetPlot( plot_coords.x, plot_coords.y );
	local hex		= ToHexFromGrid( Vector2( plot_coords.x, plot_coords.y ) );
	local i18n_data	= { pPlayer:GetName(), ( pCity and pCity:GetName() ) or "", ( pUnit and Locale.ConvertTextKey( GameInfo.Units[ pUnit:GetUnitType() ].Description ) ) or "" };

	Events.GameplayFX( hex.x, hex.y, -1 );
	Events.SerialEventHexHighlight( hex, false, Vector4( 0.0, 1.0, 0.0, 1 ) );
	UI.LookAt( pPlot, 0 );

	local controlTable	= {};
	
	local event_title_i18n	= "TXT_KEY_USER_EVENT_" .. event.id;
	local event_desc_i18n	= "TXT_KEY_USER_EVENT_" .. event.id .. "_DESC";

	Controls.EventTitle:SetText( Locale.ConvertTextKey( event_title_i18n, unpack( i18n_data ) ) );
	Controls.EventDescription:SetText( Locale.ConvertTextKey(event_desc_i18n, unpack( i18n_data ) ) );
	CivIconHookup( playerID, 64, Controls.CivIcon, Controls.CivIconBG, Controls.CivIconShadow, false, true );

	Controls.EventInfoStack:CalculateSize();
	Controls.EventInfoStack:ReprocessAnchoring();
	Controls.EventOptionStack:DestroyAllChildren();
	
	local event_options	= {};
	
	local ParamWrapper = function( callback )
		callback( pPlayer, pCity, pUnit, pPlot );
	end

	local offs_y	= 0;
	local options	= {};

	for optID, option in pairs( event.options ) do
		option.__id	= optID;
		table.insert( options, option );
	end
	table.sort( options, function( a, b ) return a.order < b.order; end );

	for o_i, option in pairs( options ) do
		local optID	= option.__id;
		local opt	= {};

		local option_i18n		= event_title_i18n .."_" .. optID;
		local option_desc_i18n	= option.description or option_i18n .. "_DESC";
		local option_tip_i18n	= option.tooltip or option_i18n .. "_TIP";

		ContextPtr:BuildInstanceForControl( "EventOptionInstance", opt, Controls.EventOptionStack );
		opt.EventOptionDescription:SetOffsetVal( 35, offs_y );
		opt.EventOptionDescription:SetText( Locale.ConvertTextKey( option_desc_i18n, unpack( i18n_data ) ) );
		
		if not option.is_valid then
			opt.EventOptionDescription:SetColor( Vector4( 0.3, 0.3, 0.3, 1 ), 0 );
			opt.EventOptionButton:SetHide( true );
		else
			local but_txt;
			if #options	== 1 then
				but_txt	= "TXT_KEY_USER_EVENT_OPTION_OK";
			else
				but_txt	= "TXT_KEY_USER_EVENT_OPTION_SELECT";
			end
			opt.EventOptionButton:SetText( Locale.ConvertTextKey( but_txt ) );
			opt.EventOptionButton:RegisterCallback( Mouse.eLClick, function() option.effect( pPlayer, pCity, pUnit, pPlot ); Controls.FullScreenOverlay:SetHide( true ); end )
		end

		local tool_tip = Locale.ConvertTextKey( option_tip_i18n, unpack( i18n_data ) );
		opt.EventOptionDescription:SetToolTipString( tool_tip );
		opt.EventOptionButton:SetToolTipString( tool_tip );
		opt.EventOptionButton:SetOffsetVal( 0, offs_y );
		offs_y = offs_y + opt.EventOptionDescription:GetSizeY() + 50;
	end
	Controls.EventOptionStack:CalculateSize();
	Controls.EventOptionStack:SetSizeY( offs_y );
	Controls.EventOptionStack:SetOffsetVal( 0, Controls.EventInfoStack:GetSizeY() + 50 );
	Controls.EventOptionStack:ReprocessAnchoring();
	Controls.MainGrid:SetSizeY( Controls.EventInfoStack:GetSizeY() + offs_y + 20 );
	Controls.BlackGridFrame:SetSizeY( Controls.MainGrid:GetSizeY() );
	Controls.FullScreenOverlay:SetHide( false );
end
LuaEvents.UserEventsPopupBuild.Add(BuildUserEventPopup);