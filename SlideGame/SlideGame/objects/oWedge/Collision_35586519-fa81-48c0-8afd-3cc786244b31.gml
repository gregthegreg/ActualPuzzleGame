/// @description Insert description here
// You can write your code in this editor
if(direction = 0){
	if(oPlayer.direction = 270){
	with(oPlayer){
		vsp = 0 
		hsp =0
		x = other.x
		y = other.y
		MoveRight()	
	}
	}
	else if(oPlayer.direction = 180){
	with(oPlayer){
		
		vsp = 0 
		hsp =0
		x = other.x
		y = other.y
		MoveUp()	
	}
	}
	
}
else if(direction = 90){
	if(oPlayer.direction = 270){
	with(oPlayer){
		vsp = 0 
		hsp =0
		x = other.x
		y = other.y
		MoveLeft()	
	}
	}
	else if(oPlayer.direction = 0){
	with(oPlayer){
		vsp = 0 
		hsp =0
		x = other.x
		y = other.y
		MoveUp()	
	}
	}
	
}
else if(direction = 180){
	if(oPlayer.direction = 90){
	with(oPlayer){
		vsp = 0 
		hsp =0
		x = other.x
		y = other.y
		MoveLeft()	
	}
	}
	else if(oPlayer.direction = 0){
	with(oPlayer){
		vsp = 0 
		hsp =0
		x = other.x
		y = other.y
		MoveDown()	
	}
	}
	
}
else if(direction = 270){
	if(oPlayer.direction = 90){
	with(oPlayer){
		vsp = 0 
		hsp =0
		x = other.x
		y = other.y
		MoveRight()	
	}
	}
	else if(oPlayer.direction = 180){
	with(oPlayer){
		vsp = 0 
		hsp =0
		x = other.x
		y = other.y
		MoveDown()	
	}
	}

	
}