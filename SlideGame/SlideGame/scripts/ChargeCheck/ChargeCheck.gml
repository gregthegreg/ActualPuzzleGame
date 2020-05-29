
if(misckey)
{
	if(!charged)
	{
	charged = true
	jumps = 3
	}
}


if(jumps = 0){
	charged = false
}
if(charged){
	sprite_index = spriteRedPieceCharge	
}
else if(!charged){
	sprite_index = spriteRedPiece	
}