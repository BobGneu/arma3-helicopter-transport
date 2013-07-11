{
	if (_x isKindOf "Air") then 
	{ 
		switch (typeof(_x)) do
		{
			case "B_Heli_Light_01_F":
			{
				[_x, 1, [0,1,0]] execVM "scripts\transport\fn_SetupTransport.sqf";			
			};
			case "I_Heli_Transport_02_F":
			{
				[_x, 3, [0.5,2,-4]] execVM "scripts\transport\fn_SetupTransport.sqf";			
			};
			default
			{
				diag_log typeof(_x);
				[_x, 2, g_transport_ka_60_offset] execVM "scripts\transport\fn_SetupTransport.sqf";
			};
		};
	}
	else 
	{
		if (_x isKindOf "LandVehicle" || _x isKindOf "Ship") then 
		{ 
			switch (typeof(_x)) do
			{
				case "B_Quadbike_01_F":
				{
					_x setVariable ["Classification", 1];
				};
				case "C_Quadbike_01_F":
				{
					_x setVariable ["Classification", 1];
				};
				case "I_Quadbike_01_F":
				{
					_x setVariable ["Classification", 1];
				};
				case "O_Quadbike_01_F":
				{
					_x setVariable ["Classification", 1];
				};
				default
				{
					diag_log typeof(_x);
					_x setVariable ["Classification", 2];
				};
			};
		};
	};

} foreach _this;

/*
	"B_Heli_Light_01_armed_F"
	"B_Heli_Attack_01_F"
	"I_Heli_Transport_02_F"
	"B_Heli_Light_01_F"
	"O_Heli_Attack_02_F"
	"O_Heli_Attack_02_black_F"
	"O_Heli_Light_02_F"
	"O_Heli_Light_02_unarmed_F"
	"B_Heli_Transport_01_F"
	"B_APC_Wheeled_01_cannon_F"
	"B_APC_Wheeled_01_cannon_F"
	"O_APC_Wheeled_02_rcws_F"
	"O_APC_Wheeled_02_rcws_F"
	"B_Truck_01_transport_F"
	"B_Truck_01_covered_F"
	"B_MRAP_01_F"
	"B_MRAP_01_gmg_F"
	"B_MRAP_01_hmg_F"
	"O_MRAP_02_F"
	"O_MRAP_02_gmg_F"
	"O_MRAP_02_hmg_F"
	"C_Offroad_01_F"
	"B_Quadbike_01_F"
	"C_Quadbike_01_F"
	"I_Quadbike_01_F"
	"O_Quadbike_01_F"
	"I_MRAP_03_F"
	"I_MRAP_03_gmg_F"
	"I_MRAP_03_hmg_F"
	"I_Truck_02_covered_F"
	"O_Truck_02_covered_F"
	"I_Truck_02_transport_F"
	"O_Truck_02_transport_F"
	"B_Boat_Transport_01_F"
	"I_Boat_Transport_01_F"
	"O_Boat_Transport_01_F"
	"B_Lifeboat"
	"C_Rubberboat"
	"O_Lifeboat"
	"O_Boat_Armed_01_hmg_F"
	"B_Boat_Armed_01_minigun_F"
	"I_Boat_Armed_01_minigun_F"
	"B_SDV_01_F"
	"O_SDV_01_F"
*/
