
if(misckey)
{
	if(!charged)
	{
	charged = true
	jumps = 1
	}
}

if(jumps = 0)&&(!moving){
	charged = false
	supercharged = false
}

if(charged){
	sprite_index = spriteRedPieceCharge	
}
 
else if(!charged){
	sprite_index = spriteRedPiece	
}
else if(supercharged){
	sprite_index = spriteRedPieceSuperCharged
}
else if(!supercharged)&&(!charged){
	sprite_index = spriteRedPiece
}