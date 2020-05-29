 //Offsets
sprite_bbox_top = bbox_top - y;
sprite_bbox_bottom = bbox_bottom - y;
sprite_bbox_right = bbox_right - x;
sprite_bbox_left = bbox_left - x;

//Horizontal collisions
x += hsp;

//Snap
if place_meeting(x, y, oSolid) { // DON'T USE sign(hsp) since you are checking current possition
    var wall = instance_place(x+sign(hsp),y,oSolid); // same thing you are inside and don't want to check 1px more
    if (hsp > 0) { //right
        x = (wall.bbox_left-1)-sprite_bbox_right;
    } else if (hsp < 0) { // <<------ as it was pointed out need to have else if otherwise hsp=0 is included
        x = (wall.bbox_right+1)-sprite_bbox_left;
    }
    hsp = 0;
	moving = false;
	supercharged = false
	if(moveId > -1 and !moving){
		BufferedMove(moveId);
	}

}

//Vertical collisions
y += vsp;

//Snap
if place_meeting(x, y, oSolid) {
    var wall = instance_place(x, y, oSolid);
    if (vsp > 0) { //down
        y = (wall.bbox_top-1) - sprite_bbox_bottom;
    } else if (vsp < 0) { //up
        y = (wall.bbox_bottom+1) - sprite_bbox_top;
    }
    vsp = 0;
	moving = false;
	supercharged = false
	if(moveId > -1 and !moving){
		BufferedMove(moveId);
	}

}
