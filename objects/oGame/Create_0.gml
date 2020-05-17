/// @description Insert description here
// You can write your code in this editor
chain[0]= -1;
chain[1] = -1
chain[2] = -1
chain[3] = -1
chain[4] = -1
chain[5] = -1
chain[6] = -1
chainnumber =1
piececounter =0;
delaymax = 600
delay = delaymax;
canfall = true
piececolor = 0
fastpieces = 0
if(!instance_exists(oPieceParent))
	 {
		 var inst = instance_create_layer(oShip.px,oShip.py,"Piece",choose(oPiece,oPieceGreen,oPieceBlue,oPiecePurple,oPieceYellow))
		 
		/* var sec = instance_create_layer(oShip.p1x,oShip.p1y,"Piece",choose(oPiece,oPieceGreen,oPieceBlue,oPiecePurple,oPieceYellow))
		sec.second = true;*/
		 
	 }
	 randomize()
