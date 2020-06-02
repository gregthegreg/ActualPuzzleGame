/// @description Insert description here
// You can write your code in this editor
if(direction = 0){
	if(oPlayer.direction = 270){
	with(oPlayer){
		MoveRight()	
	}
	}
	if(oPlayer.direction = 180){
	with(oPlayer){
		MoveUp()	
	}
	}
}
else if(direction = 90){
	if(oPlayer.direction = 270){
	with(oPlayer){
		MoveLeft()	
	}
	}
	if(oPlayer.direction = 0){
	with(oPlayer){
		MoveUp()	
	}
	}
}
else if(direction = 180){
	if(oPlayer.direction = 90){
	with(oPlayer){
		MoveLeft()	
	}
	}
	if(oPlayer.direction = 0){
	with(oPlayer){
		MoveDown()	
	}
	}
}
else if(direction = 270){
	if(oPlayer.direction = 90){
	with(oPlayer){
		MoveRight()	
	}
	}
	if(oPlayer.direction = 180){
	with(oPlayer){
		MoveDown()	
	}
	}
}