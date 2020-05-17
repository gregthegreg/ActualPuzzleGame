var _list = ds_list_create();
var _num = instance_place_list(x, y, oPieceGreen, _list, true);
if _num > 0
    {
		checknum = _num;
		for(var i = 0;i <_num;i++)
			{
					checked[i] = _list[| i]
					if (!arrayHas(oGame.chain, checked[i])){
						oGame.chain[oGame.chainnumber] = checked[i];
						oGame.chainnumber++
						
						}
			}
    
    }
	
ds_list_destroy(_list)
if(checknum > 0)
{
for(var i = 0;i < checknum;i++)
			{
				
						with(checked[i])
						{
							if(!tired)
							{
						instance_create_layer(x,y,"Chain",oChaincounterGreen);	
							tired = true;
							}
						}
}
			}
