if(collision_circle(x,y,35,oMovingWall,1,1)){
	if(other.direction = 90){
			oPlayer.vsp = other.vsp
			oPlayer.direction = 90
			oPlayer.canMove = true
			moving = true
	}
	else if(other.direction = 0){
		oPlayer.hsp = other.hsp
		oPlayer.direction = 0
		oPlayer.canMove = true
		moving = true
	}
	
	else if(other.direction = 270){
		oPlayer.vsp = other.vsp
		oPlayer.direction = 270
		oPlayer.canMove = true
		moving = true
	}
	else if(other.direction = 180){
		oPlayer.hsp = other.hsp
		oPlayer.direction = 180
		oPlayer.canMove = true
		moving = true
	}
	
	
}