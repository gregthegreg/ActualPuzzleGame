
if(misckey)
{
	if(!charged)
	{
	charged = true
	jumps = 1
	}
}



if(charged){
	sprite_index = spriteRedPieceCharge	
}
 
else if(!charged){
	sprite_index = spriteRedPiece	
}
if(supercharged){
	sprite_index = spriteRedPieceSuperCharge
}
else if(!supercharged)&&(!charged){
	sprite_index = spriteRedPiece
}