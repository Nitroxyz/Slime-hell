///@desc decides the segment to do the major and then sets its is_major to true

//it feels very silly to use a timeline for this, but unless there is a function for waiting a set amount of steps this seems like the best way.

	//temporary
	if(random(1) == 1) 
	{
	major_segment = 3;
	}
	else {
	major_segment = 6;	
	}

//unimplemented for now
/*
if (head_segment.state == 3) 
{
major_segment = irandom_range(1, BossCTRL.remaining_segments);

}
else {
major_segment = irandom_range(0, BossCTRL.remaining_segments);	
}
*/
	//using buildarray to make an array of every segment that is available to major
	//determines which major the number is assigned too
	switch (major_segment) 
	{
		case 0:
			major_segment_name = head_segment;
			head_segment.is_major = true;
			
			break;
		case 1:
			major_segment_name = missile_left;
			missile_left.is_major = true;
			break;
		case 2:
			major_segment_name = hand_left ;
			hand_left.is_major = true;
			break;
		case 3:
			major_segment_name = spawner_left;
			spawner_left.is_major = true;
			//hands move out of the way for the drone pattern.
			hand_right.moveup();
			hand_left.moveup();
			break;
		case 4:
			missile_right.is_major = true;
			major_segment_name = missile_right;
			
			break;
		case 5:
			hand_right.is_major = true;
			major_segment_name = hand_right;
			
			break;
		case 6:
			spawner_right.is_major = true;
			major_segment_name = spawner_right;
			
			//hands move out of the way for the drone pattern.
			hand_right.moveup();
			hand_left.moveup();
			break;
		default:
	}