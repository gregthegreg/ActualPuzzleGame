/// @description push_down_grid(x, y, distance, force)
/// @param x
/// @param  y
/// @param  distance
/// @param  force
//script creates pushing effect in the given coordinates of the screen with the given force and effect distance

var i, mx = argument0, my = argument1, pomX, pomY, pomZ, dst, distance = argument2, force = argument3;


for (i = 0; i<array_height_2d(nodes); i++)
{
  pomX = nodes[i, 3];
  pomY = nodes[i, 4];
        
  dst = point_distance(mx, my, pomX, pomY);
     
  if(abs(mx-pomX)<distance*0.8 && abs(my-pomY)<distance*0.8)     
    if(nodes[i, 13]==1)
    {
      nodes[i, 3] += (mx-nodes[i, 3]) * (1-dst/distance)*(force/90);
      nodes[i, 4] += (my-nodes[i, 4]) * (1-dst/distance)*(force/90);  
    }  
}
