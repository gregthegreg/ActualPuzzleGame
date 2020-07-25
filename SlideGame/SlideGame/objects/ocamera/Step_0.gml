/// @description Insert description here
// Update Camera
//Update Destination
zoom_rate = lerp((mouse_wheel_up()-mouse_wheel_down()), zoom_rate, zoom_inertia);
zoom *= 1+zoom_rate*zoom_speed;

if(zoomin){
	view_w_half = approach(view_w_half,360,64)
	view_h_half =  approach(view_h_half,640,64)
}
else{
		view_w_half = approach(view_w_half,540,64)
	view_h_half =  approach(view_h_half,960,64)
}
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update object position
x += (xTo - x) / 7;
y += (yTo - y) / 7


//Keep camera inside room
x = clamp(x, view_w_half + buff, room_width - view_w_half-buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half-buff);


//Update camera veiw
camera_set_view_pos(cam,x - view_w_half,y - view_h_half);
camera_set_view_size(cam,view_w_half*2,view_h_half*2);
//Screenshake
x+= random_range(-shake_remain,shake_remain)
y += random_range(-shake_remain,shake_remain)
/*
if(oPlayer.moving = false)&&(moved = false){
	with(oPlayer){
		if(direction = 0){
			ocamera.screenjuttright = true
		}
		else if(direction = 180){
			ocamera.screenjuttleft = true
		}
		else if(direction = 90){
			ocamera.screenjuttup = true
		}
		else if(direction = 270){
			ocamera.screenjuttdown = true
		}
	}
	moved = true
}
if(oPlayer.moving){
	moved = false	
}
//ScreenJutt
if(screenjuttright){
	x = approach(x,x+64,5)
	screenjuttright = false
}
else if(screenjuttleft){
	x = approach(x,x-64,5)
	screenjuttleft = false
}
else if(screenjuttup){
	y = approach(y,y-32,5)
	screenjuttup = false
}
else if(screenjuttdown){
	y = approach(y,y+32,5)
	screenjuttdown = false
}
*/
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update Camera View
//camera_set_view_pos (cam,x-view_w_half,y-view_h_half);


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