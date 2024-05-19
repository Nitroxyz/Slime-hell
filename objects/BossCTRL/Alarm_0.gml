/// @description Major timer

major_segment = -1;
//show_debug_message("alarm starting!")

//I need to pause simuls for a single frame while starting the major
//pausing simuls is necessary because a simul and major for the same segment being called on the same frame causes the is_major/is_simul variables to desync.
//I guess I'll line everything up with another timeline

timeline_index = major_start_tl
timeline_running = true;
timeline_speed = 1;
timeline_position = 0;
timeline_loop = false;