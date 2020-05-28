if(Upkey)&&(vsp = 0)&&(hsp = 0){
	if(charged){
		vsp -= 60	
		jumps --
	}
	else{
	vsp -=50
	}
}
else if(downkey)&&(vsp = 0)&&(hsp = 0){
	if(charged){
		vsp += 60	
		jumps --
	}
	else{
	vsp +=50
	}
}
else if(Leftkey)&&(vsp = 0)&&(hsp = 0){
	if(charged){
		hsp -= 60	
		jumps --
	}
	else{
	hsp -=50
	}
}
else if(RightKey)&&(vsp = 0)&&(hsp = 0){
	
	if(charged){
		hsp += 60	
		jumps --
	}
	else{
	hsp +=50
	}
}