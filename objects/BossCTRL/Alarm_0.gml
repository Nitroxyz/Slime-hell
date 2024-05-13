/// @description Major timer

//major_segment = 3;

//unimplemented for now
/*
if (head_segment.state == -1) 
{
major_segment = irandom_range(1, head_segment.remaining_segments);

}
else {
major_segment = irandom_range(0, head_segment.remaining_segments);	
}
*/

//calls the segment that was selected
switch (major_segment) 
{
	case 0:
		head_segment.callmajor();
		break;
	case 1:
		missile_left.callmajor();
		break;
	case 2:
		hand_left.callmajor();
		break;
	case 3:
		spawner_left.callmajor();
		//hands move out of the way for the drone pattern.
		hand_right.moveup();
		hand_left.moveup();
		break;
	case 4:
		missile_right.callmajor();
		break;
	case 5:
		hand_right.callmajor();
		break;
	case 6:
		spawner_right.callmajor();
		//hands move out of the way for the drone pattern.
		hand_right.moveup();
		hand_left.moveup();
		break;
	default:
}
alarm_set(0,-1);