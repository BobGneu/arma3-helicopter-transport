private ["_player", "_target", "_vehicle", "_velocity"];

_vehicle = _this select 0;
_player = driver _vehicle;
_target = _vehicle getVariable "AttachedVehicle";
_velocity = velocity _vehicle;

if (isNull(_target)) exitWith { }; 

detach _target;
_target setVelocity _velocity;
_vehicle setVariable ["AttachedVehicle", objNull];
_vehicle vehicleChat format ["%1 is detached.", typeof(_target)]; 
