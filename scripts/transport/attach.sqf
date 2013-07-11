private ["_player", "_target", "_vehicle", "_offset"];

_vehicle = _this select 0;
_player = driver _vehicle;

_target = _player getVariable "CurrentTarget";
_offset = _vehicle getVariable "AttachOffset";

if (isNull_target) exitWith {};

_target engineOn false;
_target attachTo [_vehicle, _offset];

_player setVariable ["CurrentTarget", objNull];
_vehicle setVariable ["AttachedVehicle", _target];

 _vehicle vehicleChat format ["%1 is attached", typeof _target]; 
 