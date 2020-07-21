/// @description Insert description here
// You can write your code in this editor
key_detect()
objectcollision()
movement()
ChargeCheck()
Animation()
movingwalldirection()
//checkforbreakable()
if(moving)
{
with(o_controler) explode_grid(other.x, other.y, 64, 60);
}