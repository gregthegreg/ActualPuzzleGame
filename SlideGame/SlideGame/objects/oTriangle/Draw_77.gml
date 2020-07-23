/// @description Insert description here
// You can write your code in this editor


speed = 10;
//Horizontal bounce
if(place_meeting(x + hspeed, y,  oSolid))
    {
		direction = -direction + 180;
			bounces --;
	}
//Vertical bounce
if(place_meeting(x, y + vspeed, oSolid))
    {direction = -direction;
		bounces --;
	;	
}
