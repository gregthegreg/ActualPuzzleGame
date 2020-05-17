var _list = ds_list_create();
var _num = instance_place_list(x, y, oPieceParent, _list, true);
if _num > 0
    {
    for (var i = 0; i < _num; ++i;)
        {
        if(_list[| i].vsp > 0)
		{
			oGame.canfall = false
		};
        }
    }
ds_list_destroy(_list);