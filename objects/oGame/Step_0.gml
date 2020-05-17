 /// @description Insert description here
// You can write your code in this editor
delay --

if(!instance_exists(oChainParent))
{
	if(instance_exists(oPieceParent))
	{
	oPieceParent.tired = false
	}
	if(chain[3]!=-1)
	{
		
		for(var i=0;i<7;i++)
		{
			instance_destroy(chain[i])
				
		}
	}
/*chain[0]= -1;
chain[1] = -1
chain[2] = -1
chain[3] = -1
chain[4] = -1
chain[5] = -1
chain[6] = -1
chainnumber =1
*/
}
