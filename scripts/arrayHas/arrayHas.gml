// function arrayHas(array_to_search, value_to_find);
var searchArray = argument[0];
var findValue = argument[1];
var loop = 0;
repeat (array_length_1d(searchArray)) if (searchArray[loop++] == findValue) return true;
return false;