/// @description Insert description here
// You can write your code in this editor
drag_end_x = event_data[?"posX"];
drag_end_y = event_data[?"posY"];
if(drag_start_x != -1&&drag_start_y != -1)
{
	//Set min swipe length to avoid accidental swipes
	if point_distance(drag_start_x,drag_start_y,drag_end_x,drag_end_y)>room_width/10
	{
		var pd=point_direction(drag_start_x,drag_start_y,drag_end_x,drag_end_y);
		
		if pd>359-global.swipe_margin && pd<360 || pd<0+global.swipe_margin
		{
			//Right swipe
			swiperight = 1
		}
		
		if pd>180-global.swipe_margin && pd<180+global.swipe_margin
		{
			//Left swipe
			swipeleft = 1
		}
		
		if pd>90-global.swipe_margin && pd<90+global.swipe_margin
		{
			//Up swipe
			swipeup = 1
		}
		
		if pd>270-global.swipe_margin && pd<270+global.swipe_margin
		{
			//Down swipe
			swipedown = 1
		}
	}
}