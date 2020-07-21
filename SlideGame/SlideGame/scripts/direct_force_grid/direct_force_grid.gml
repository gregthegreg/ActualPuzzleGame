/// @description direct_force_grid(x, y, distance, force, direction)
/// @param x
/// @param  y
/// @param  distance
/// @param  force
/// @param  direction
//script applies force in the given coordinates of the screen with the given force strength, effect distance and direction
var i, mx = argument0, my = argument1, pomX, pomY, pomZ, dst, distance = argument2, force = argument3, force_direction = argument4;

for (i = 0; i<array_height_2d(nodes); i++)
{
  pomX = nodes[i, 3];
  pomY = nodes[i, 4];
  pomZ = nodes[i, 5];
        
  dst = point_distance_3d(mx, my, 0, pomX, pomY, pomZ);
  
  if(dst<distance)
  {
    forcex = 10*lengthdir_x(force, force_direction) / (10 + dst);
    forcey = 10*lengthdir_y(force, force_direction) / (10 + dst);
    forcez = 0;
    
    nodes[i, 9] += nodes[i, 13] * forcex; 
    nodes[i, 10] += nodes[i, 13] * forcey;
    nodes[i, 11] += nodes[i, 13] * forcez;
  }
}
