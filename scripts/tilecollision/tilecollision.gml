//Horizontal Collision
if(tilemeeting(x+hsp,y,global.tilemap))
{
	while(!tilemeeting(x+sign(hsp),y,global.tilemap))
	{
		x = x + sign(hsp);
	}
hsp = 0;
}
x += hsp;



//Vertical Collision
if(tilemeeting(x,y+vsp,global.tilemap))
{
	while(!tilemeeting(x,y+vsp,global.tilemap))
	{
		y = y + sign(vsp);
	}
vsp = 0;
}


y += vsp;