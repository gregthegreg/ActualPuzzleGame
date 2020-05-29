//@param id

if	   (Upkey) {
	return 0;
}
else if(downkey)  {
	return 1;
}
else if(Leftkey)  {
	return 2;
}
else if(RightKey) {
	return 3;
}
else {
	return argument0;
}