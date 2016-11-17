/*
   call as [] call blck_fnc_cleanEmptyGroups;
   Deletes any empty groups and thereby prevents errors resulting from createGroup returning nullGroup.
   By Ghostrider-DbD-
   11/16/16
*/
if (blck_debugON) then
{
	diag_log format ["_fnc_cleanEmptyGroups:: -- >> group count = %1 ",(count allGroups)];
};

{
	//diag_log format["_fnc_cleanEmptyGroups:: - >> type of object _x = %1",typeName _x];
	if ((count units _x) isEqualTo 0) then {deleteGroup _x};
}forEach allGroups;

