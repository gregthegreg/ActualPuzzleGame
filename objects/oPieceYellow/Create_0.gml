/// @description Insert description here
// You can write your code in this editor
enum PieceStateYellow {
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
fall = PieceStateYellow.falling
state = PieceStateYellow.carried;
carried = PieceStateYellow.carried;
lock = PieceStateYellow.lock
collapse = PieceStateYellow.movedown
hsp = 0;
vsp = 0;
color = spriteRedPiece//,spriteBluePiece,spriteGreenPiece)
piecenumber = 0;
ID = piecenumber
kill = false;
spent = false;
checked = false;
tired = false;
color = 3
top = -1;
falling = false;
second = false;
locked = false
switchdirection = false;