//Horizontal collisions
y += vsp;

//Snap
if place_meeting(x,y+sign(vsp),oWall) {
    var wall = instance_place(x,y+sign(vsp),oWall);
    if vsp > 0 { //right
        y = (wall.bbox_top-1)-bbox_bottom;
    } else if vsp < 0 { //left
        y = (wall.bbox_bottom+1)-bbox_top;
    }
    vsp = 0;
}