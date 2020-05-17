/// @description Insert description here
// You can write your code in this editor

	x = user.x
	y = user.y
	
	
if(user.color = 0)
{
	piecestate = PieceState.falling
	lockstate  = PieceState.lock
	
}
else if(user.color = 1)
{
	piecestate = PieceStateGreen.falling
	lockstate  = PieceStateGreen.lock
}
else if(user.color = 2)
{
	piecestate = PieceStateBlue.falling
	lockstate  = PieceStateBlue.lock
}
else if(user.color =3)
{
	piecestate = PieceStateYellow.falling
	lockstate  = PieceStateYellow.lock
}
else if(user.color = 4)
{
	piecestate = PieceStatePurple.falling
	lockstate  = PieceStatePurple.lock
}

/*if(!tilemeeting(x,y,tilemap)&&(user.locked))
{
	user.state = user.fall	
	
}
*/
//user.state = piecestate


if(place_meeting(x,y,oPieceParent))
{
	if(other != -1)
	{
	hit = other
		hitexisted = true
		hitrooted = other.rooted
		
	}
		
}

else if (place_meeting(x,y,oWall))
{
		user.rooted = true
		
}


else if(!place_meeting(x,y,oSolid)){
		//user.state = piecestate
		
		user.spent = false
		user.switchdirection = true
		user.rooted = false
		
		
		
		//instance_destroy(user.top)
}

/*
if(hit != -1)
{
 if(hit.state = hit.fall)
{
	user.state = user.fall	
	
}

if(hit.state = hit.lock)
{
	user.state = user.lock	
}}

*/

