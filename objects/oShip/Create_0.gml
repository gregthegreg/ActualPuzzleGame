/// @description Insert description here
// You can write your code in this editor
hsp = 0; 
vsp = 0;
global.tilemap = layer_tilemap_get_id("Collision");
px = x
py = y
p1x = px+32
p1y= py+32
charge = 0;
charged = false;
twist = 0
upmode = true
falling = -1
piecestate = PieceState.falling
	lockstate  = PieceState.lock
	locked = false
	holding = false
	//Swipe margin sets how accurate a swipe must be to be detected
global.swipe_margin=45;
swipebuffermax = 5
swipebuffer = 5
swipeup =0
swipedown =0