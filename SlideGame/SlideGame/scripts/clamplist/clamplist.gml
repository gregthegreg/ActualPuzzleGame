
//@params listId
var size = ds_list_size(argument0);
if (size > 3){
	for(var i = 0; i < size - 3; i++){
		ds_list_delete(argument0, 0);
	}
}