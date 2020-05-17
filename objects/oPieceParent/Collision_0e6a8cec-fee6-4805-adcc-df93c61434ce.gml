/// @description Insert description here
// You can write your code in this editor
if(rooted)
{
	with(other)
	{
		user.rooted = true	
	}
	
}
else if (!rooted)
{
		with(other)
	{
		user.rooted = false	
		user.switchdirection = true
		user.spent = false
	}
}