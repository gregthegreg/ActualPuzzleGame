

if(moving) {
	moveId = CheckMove(moveId);
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
