 //Offsets
sprite_bbox_top = bbox_top - y;
sprite_bbox_bottom = bbox_bottom - y;
sprite_bbox_right = bbox_right - x;
sprite_bbox_left = bbox_left - x;

//Horizontal collisions

/*
//Snap
if place_meeting(x, y, oSolid) { // DON'T USE sign(hsp) since you are checking current possition
    var wall = instance_place(x+sign(hsp),y,oSolid); // same thing you are inside and don't want to check 1px more
    if (hsp > 0) { //right
        x = (wall.bbox_left-1)-sprite_bbox_right;
    } else if (hsp < 0) { // <<------ as it was pointed out need to have else if otherwise hsp=0 is included
        x = (wall.bbox_right+1)-sprite_bbox_left;
    }
	
	
	
}
*/
//Vertical collisions


//Snap
if place_meeting(x, y, oSolid) {
    var wall = instance_place(x, y, oSolid);
    if (vsp > 0) { //down
        y = (wall.bbox_top-1) - sprite_bbox_bottom;
    } else if (vsp < 0) { //up
        y = (wall.bbox_bottom+1) - sprite_bbox_top;
    }
	
	
	vsp = 0;
	state = lock	
	rooted = true
	oGame.canfall = true
	with(oGame)
	{
		chain[0]= -1;
	chain[1] = -1
	chain[2] = -1
	chain[3] = -1
	chain[4] = -1
	chain[5] = -1
	chain[6] = -1	
	chainnumber =1
	}
	if(upmode)
	{ var inst,inst1
			if(upmode)&&(switchdirection)
			{
				
			inst  = instance_create_layer(x,y,"Chain",oBottomCheck);
			top = inst
			inst.user = self;
			inst1  = instance_create_layer(x,y,"Chain",oBottomBack);
			bottom = inst1
			inst1.user = self;
			
			switchdirection = false
		    upmode = false
			}
			else if(upmode)
			{
			
					inst  = instance_create_layer(x,y,"Chain",oTopCheck);
			top = inst
			inst.user = self;
			inst1  = instance_create_layer(x,y,"Chain",oTopBack);
			bottom = inst1
			inst1.user = self;
			
			}
			
	}
	else if(!upmode)
	{
		if(!upmode)&&(switchdirection)
			{
				
				var inst,inst1
			inst  = instance_create_layer(x,y,"Chain",oTopCheck);
			top = inst
			inst.user = self;
			inst1  = instance_create_layer(x,y,"Chain",oTopBack);
			bottom = inst1
			inst1.user = self;
			
			
			switchdirection = false
			upmode = true	
				}
				else if(!upmode)
			{
				
					inst  = instance_create_layer(x,y,"Chain",oBottomCheck);
			top = inst
			inst.user = self;
			inst1  = instance_create_layer(x,y,"Chain",oBottomBack);
			bottom = inst1
			inst1.user = self;
			
			}
	}
	
    
}

