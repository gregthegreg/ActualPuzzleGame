/// @description Insert description here
// You can write your code in this editor
key_detect()
objectcollision()
if(Upkey)&&(vsp = 0)&&(hsp = 0){
	vsp -=20
}
else if(downkey)&&(vsp = 0)&&(hsp = 0){
	vsp+= 20
}
else if(Leftkey)&&(vsp = 0)&&(hsp = 0){
	hsp -= 20
}
else if(RightKey)&&(vsp = 0)&&(hsp = 0){
	
	hsp += 20
}