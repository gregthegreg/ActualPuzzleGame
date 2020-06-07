if(moving){
	sprite_index = sprite25
	
}
else{
	
		if(charged){
	sprite_index = spriteRedPieceCharge	
}
 
else if(!charged){
	sprite_index = spriteRedPiece	
}
if(supercharged){
	sprite_index = spriteSuperCharged
}
else if(!supercharged)&&(!charged){
	sprite_index = spriteRedPiece
}
	
}
