//@params listId

var data = ds_list_find_value(argument0, 0);
ds_list_delete(argument0, 0);
return data;