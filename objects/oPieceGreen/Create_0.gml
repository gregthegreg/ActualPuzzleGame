/// @description Insert description here
// You can write your code in this editor
enum PieceStateGreen {
	carried,
	shot, 
	midairlock,
	lock,
	falling,
	movedown
	
	
}
fast = false
bottom = -1
touchid = -1
rooted = false
tilemap = layer_tilemap_get_id("Collision");
upmode = true
shot = false
fall = PieceStateGreen.falling
state = PieceStateGreen.carried
carried = PieceStateGreen.carried
lock = PieceStateGreen.lock
collapse = PieceStateGreen.movedown
hsp = 0;
vsp = 0;
piecenumber = 0;
ID = piecenumber
kill = false;
spent = false;
checked = false;
tired = false;
color = 1
top = -1;
falling = false;
second = false;
locked = false
switchdirection = false;