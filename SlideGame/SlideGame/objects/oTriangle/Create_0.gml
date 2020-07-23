/// @description Insert description here
// You can write your code in this editor
flash  =0;
delay = 120
hp = 1
if(instance_exists(oPlayer))
{
direction = point_direction(x,y,oPlayer.x,oPlayer.y)
}
view_num = -1;	
ring_width = 64;		
ring_max = 256;			
ring_speed = 5;			
ring_segments = 12;		
ring_colour = c_white;	
ring_update = true;		
ring_push = 25;
ring_blend = true;	