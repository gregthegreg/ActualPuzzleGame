

if(moving) {
	clamplist(movel);	
	moveId = CheckMove(moveId);
	if(moveId > -1) enqueuelist(movel, moveId);
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
