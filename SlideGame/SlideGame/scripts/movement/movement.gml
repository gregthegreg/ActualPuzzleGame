if(Upkey)&&(vsp = 0)&&(hsp = 0){
	if(charged){
		vsp -= 60	
		jumps --
	}
	else{
	vsp -=20
	}
}
<<<<<<< HEAD

if(Upkey && !moving){
	MoveUp();
=======
else if(downkey)&&(vsp = 0)&&(hsp = 0){
	if(charged){
		vsp += 60	
		jumps --
	}
	else{
	vsp +=20
	}
>>>>>>> parent of 86e668e... Move buffering complete
}
else if(Leftkey)&&(vsp = 0)&&(hsp = 0){
	if(charged){
		hsp -= 60	
		jumps --
	}
	else{
	hsp -=20
	}
}
<<<<<<< HEAD
else if(Leftkey && !moving){
	MoveLeft();
}
else if(RightKey && !moving){
	MoveRight();
}
=======
else if(RightKey)&&(vsp = 0)&&(hsp = 0){
	
	if(charged){
		hsp += 60	
		jumps --
	}
	else{
	hsp +=20
	}
}
>>>>>>> parent of 86e668e... Move buffering complete
