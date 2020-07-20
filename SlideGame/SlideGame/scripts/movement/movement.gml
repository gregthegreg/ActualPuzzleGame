

if(moving) {
	clamplist(movel);	
	moveId = CheckMove(moveId);
	
	//get total size of list
	var i = ds_list_size(movel);
	
	//get index of last item in list, else -1
	i = i > 0 ? ds_list_find_value(movel,i-1) : -1;
	var noDups = i > -1 ? ds_list_find_value(movel, i) != moveId : true;
	if(moveId > -1 && noDups) enqueuelist(movel, moveId);	
}

if(Upkey && !moving){
	MoveUp();
}
else if(downkey && !moving){
	MoveDown();
}
else if(Leftkey && !moving){
	MoveLeft();
}
else if(RightKey && !moving){
	MoveRight();
}
