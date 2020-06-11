

if(moving) {
	clamplist(movel);	
	moveId = CheckMove(moveId);
	var i = ds_list_size(movel);
	i = i > 1 ? ds_list_find_value(movel,i-1) : (i > 0 ? ds_list_find_value(movel,0):-1);
	var noDups = i > -1 ? ds_list_find_value(movel, i) != moveId : true;
	if(moveId > -1 && noDups) enqueuelist(movel, moveId);
	
	//if(moveId > -1) ds_queue_enqueue(moveq, moveId); //else moveId = -1;
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
