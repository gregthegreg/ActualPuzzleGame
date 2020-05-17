/// @description Insert description here
// You can write your code in this editor
if(os_android)
{
	if(upmode)
	{
	shoot = swipeup
	}
	else if (!upmode)
	{
		shoot = swipedown	
	}
	twistbutton = mouse_check_button_pressed(mb_right)
}
else
{
shoot = mouse_check_button_released(mb_left)
twistbutton = mouse_check_button_pressed(mb_right)
}
if(twistbutton)
{
	if(upmode)
	{
		upmode = false	
	}
	else upmode = true
	
}

if(shoot)
{
		
	holding = false
}
//x = mouse_x;
tilecollision()

if !place_snapped(128, 128)
      {
      move_snap(128, 128);
      }
	 if(!instance_exists(oGame))
	 {
		instance_create_layer(oGameLocation.x,oGameLocation.y,"Piece",oGame)	 
	 }
	 
px = x
py = y


//Horizontal Collision
if(place_meeting(x+hspeed,y,oWall))
{
	

}