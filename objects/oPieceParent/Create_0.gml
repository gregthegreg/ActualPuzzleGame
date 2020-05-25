 /// @description Insert description here
// You can write your code in this editor
enum PieceState {
	carried,
	shot, 
	midairlock,
	lock,
	falling,
	movedown
	
	
}
touchid = -1
rooted = false
tilemap = layer_tilemap_get_id("Collision");
upmode = true
state = PieceState.carried
shot = false
fall = PieceState.falling
carried = PieceState.carried
lock = PieceState.lock
collapse = PieceState.movedown
falling = false;
hsp = 0;
vsp = 0;
color = spriteRedPiece//,spriteBluePiece,spriteGreenPiece)
piecenumber = 0;
ID = piecenumber
kill = false;
spent = false;
checked = false;
tired = false;
color = 0
top = -1;
bottom = -1
second = false;
locked = false
switchdirection = false;
fast = false