var list = argument0;

ds_list_sort(list, true);

var prev = undefined;
var result = ds_list_create();
var duped = false;

for(var i = 0; i < ds_list_size(list); i++) {
    var value = list[| i];
    if (value == prev && !duped) {
        ds_list_add(result, value);
        duped = true;
    } else {
        duped = false;
        prev = value;
   }
}

return result;
