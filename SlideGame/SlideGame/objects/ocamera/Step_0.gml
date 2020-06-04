/// @description Insert description here
// Update Camera
//Update Destination



if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25


//Keep camera inside room
x = clamp(x, view_w_half + buff, room_width - view_w_half-buff);
y = clamp(y, view_h_half + buff, room_width - view_h_half-buff);


//Update camera veiw
camera_set_view_pos(cam,x - view_w_half,y - view_h_half);

//Screenshake
//x+= random_range(-shake_remain,shake_remain)
//y += random_range(-shake_remain,shake_remain)

shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update Camera View
camera_set_view_pos (cam,x-view_w_half,y-view_h_half);


//Parralax Scrolling
if (layer_exists("Clouds"))
{
	layer_x("Clouds",x/2);
}
if (layer_exists("Clouds1"))
{
	layer_x("Clouds1",x/4);
}
if (layer_exists("Trees"))
{
	layer_x("Trees",x/4);
}
if (layer_exists("Moutains"))
{
	layer_x("Mountains",x/2);
}
if (layer_exists("Rocks_2"))
{
	layer_x("Rocks_2",x/4);
}
if (layer_exists("Rocks_2_1"))
{
	layer_x("Rocks_2_1",x/3);
}