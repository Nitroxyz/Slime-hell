///@desc major ending routine. There is no harm in setting is_major to false slightly early in this case, so this is just as soon as homing stops for the last missile.


	is_major = false;
	BossCTRL.alarm[0] = 300;