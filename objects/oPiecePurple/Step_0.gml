/// @description Insert description here
// You can write your code in this editor
x += hsp;
y += vsp;

if(state=PieceStatePurple.lock)
{
	locked = true;	
}
else locked = false
if(state=PieceStatePurple.falling)
{
	falling = true;	
}
else falling = false
if(state=PieceStatePurple.shot)
{
	shot = true;	
}
else shot = false
//Collision

#region


//TileCollisionEnemy()




#endregion
if(state == PieceStatePurple.carried)
{	#region
	
	if(oShip.upmode)
	{
	upmode = true	
	}
	else
	upmode = false
	if(upmode = false)
	{
		x = oShip.px ;
	y = oShip.py;
	}
	else
	{
	x = oShip.px ;
	y = oShip.py ;
	}

	
	
	if(oShip.shoot)
	{
	
		
		state = PieceStatePurple.shot;
		
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
		
	}
	
	
	
	
	
	
	#endregion
}
else if(state == PieceStatePurple.shot)
{
	if(upmode)
	{
	//direction = 90;
	vsp =-30;
	}
	else if(!upmode)
	{
		//direction = 270;
	vsp =30;
	}
	objectcollision()
}
else if(state == PieceStatePurple.midairlock)
{
	
	
}
else if(state == PieceStatePurple.lock)
{
	
	if(!spent)
	{
			
		
		var inst
		 inst  = instance_create_layer(x,y,"Chain",oChaincounterPurple);
		inst.tired = true;
		inst.chain[0] = self;
		oGame.chain[0] = self;
		
		if(!oShip.holding)
		{
		inst = instance_create_layer(oShip.px,oShip.py,"Piece",choose(oPiece,oPieceGreen,oPieceBlue,oPiecePurple,oPieceYellow))
		oShip.holding = true
		}
		//inst.state = inst.carried
		oGame.piececounter ++;
	/*var sec = instance_create_layer(oShip.p1x,oShip.p1y,"Piece",choose(oPiece,oPieceGreen,oPieceBlue,oPiecePurple,oPieceYellow))
		sec.second = true;
		oGame.piececounter ++;*/
		spent = true;
		second = false
		
		
	}
	
if(instance_exists(bottom))
	{
	if(!rooted)&&(bottom.touching = false)&&(oGame.canfall)
	{
		state = fall	
	}
	}
	
	
	
}
else if(state == PieceStatePurple.falling)
{
	oGame.canfall = false
	instance_destroy(top)
	instance_destroy(bottom)
		if(upmode)
	{
	//direction = 270;
	vsp = 20;
	
	
	}
	else if (!upmode)
	{
		//direction = 90;
	vsp = -20;
	}
	objectcollision()
}
	
	if(state=PieceStatePurple.lock)
{
	locked = true;

}
else locked = false

if(state=PieceStatePurple.falling)
{
	falling = true;	
}
else falling = false
if(state=PieceStatePurple.shot)
{
	shot = true;	
}
else shot = false