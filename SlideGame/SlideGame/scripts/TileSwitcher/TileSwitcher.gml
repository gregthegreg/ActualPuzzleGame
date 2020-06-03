/*if(image_index = 1){	
if(place_meeting(bbox_right+1,y,oPlayer.bbox_left -1)&& oPlayer.direction = 0){
	instance_change(oTileon,1)
}
 if(place_meeting(bbox_left-1,y,oPlayer.bbox_right+1)&& oPlayer.direction = 180){
	instance_change(oTileon,1)
}
 if(place_meeting(x,bbox_top+1,oPlayer.bbox_bottom - 1)&& oPlayer.direction = 90){
	instance_change(oTileon,1)
}
if(place_meeting(x,bbox_bottom-1,oPlayer.bbox_top+1)&& oPlayer.direction = 270){
	instance_change(oTileon,1)
}
}*/
if(flipped)&&(!place_meeting(x,y,oPlayer)){
		instance_change(oTileon,1)
}