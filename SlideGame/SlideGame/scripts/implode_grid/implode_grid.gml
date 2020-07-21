/// @description implode_grid(x, y, distance, force)
/// @param x
/// @param  y
/// @param  distance
/// @param  force
//script creates imploding effect in the given coordinates of the screen with the given force and effect distance
var i, mx = argument0, my = argument1, pomX, pomY, pomZ, dst, distance = argument2, force = argument3;

for (i = 0; i<array_height_2d(nodes); i++)
{
  pomX = nodes[i, 3];
  pomY = nodes[i, 4];
  pomZ = nodes[i, 5];
        
  dst = point_distance_3d(mx, my, 0, pomX, pomY, pomZ);
  
  if(dst<distance)
  {
    //calculating forces acting on a given node in x,y,z directions
    forcex = 10 * force * (mx - pomX) / (1000 + dst);
    forcey = 10 * force * (my - pomY) / (1000 + dst);
    forcez = 10 * force * (0  - pomZ) / (1000 + dst);
    
    //applying forces to the node
    nodes[i, 9] += nodes[i, 13] * forcex; 
    nodes[i, 10] += nodes[i, 13] * forcey;
    nodes[i, 11] += nodes[i, 13] * forcez;
    
    nodes[i, 12] = after_damping;
  }
}
