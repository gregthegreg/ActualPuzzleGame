var seconds_since_last_frame = (delta_time / 1000000);     
var distance_to_move_this_frame = (distance_per_second * seconds_since_last_frame);     
//	x += distance_to_move_this_frame;  