//update all springs between nodes
count = 0;
tsize = size * 0.95;
for(j=0; j<nodesy; j++)
{
  for(i=0; i<nodesx; i++)  
  {    
    if(i<nodesx-1) 
    {
      var countp = count+1; 
            
      vx = nodes[count, 3] - nodes[countp, 3];
      vy = nodes[count, 4] - nodes[countp, 4];
      vz = nodes[count, 5] - nodes[countp, 5];
      len = point_distance_3d(0, 0, 0, vx, vy, vz);
            
      if(len>tsize)
      {
        vx = (vx / len) * (len - tsize);
        vy = (vy / len) * (len - tsize);
        vz = (vz / len) * (len - tsize);
        
        dvx = nodes[countp, 6] - nodes[count, 6];
        dvy = nodes[countp, 7] - nodes[count, 7];
        dvz = nodes[countp, 8] - nodes[count, 8];
        
        forcex = springs_stiffnes * vx - dvx * springs_damping;
        forcey = springs_stiffnes * vy - dvy * springs_damping;
        forcez = springs_stiffnes * vz - dvz * springs_damping;                
        
        nodes[count, 9] += nodes[count, 13] * -forcex; 
        nodes[count, 10] += nodes[count, 13] * -forcey;
        nodes[count, 11] += nodes[count, 13] * -forcez;
        
        nodes[countp, 9] += nodes[countp, 13] * forcex; 
        nodes[countp, 10] += nodes[countp, 13] * forcey;
        nodes[countp, 11] += nodes[countp, 13] * forcez;
      }
    }   
    
    if(j<nodesy-1) 
    {
      var countp = count+nodesx; 
      
      vx = nodes[count, 3] - nodes[countp, 3];
      vy = nodes[count, 4] - nodes[countp, 4];
      vz = nodes[count, 5] - nodes[countp, 5];
      len = point_distance_3d(0, 0, 0, vx, vy, vz);
      
      if(len>tsize)
      {
        vx = (vx / len) * (len - tsize);
        vy = (vy / len) * (len - tsize);
        vz = (vz / len) * (len - tsize);
        
        dvx = nodes[countp, 6] - nodes[count, 6];
        dvy = nodes[countp, 7] - nodes[count, 7];
        dvz = nodes[countp, 8] - nodes[count, 8];
        
        forcex = springs_stiffnes * vx - dvx * springs_damping;
        forcey = springs_stiffnes * vy - dvy * springs_damping;
        forcez = springs_stiffnes * vz - dvz * springs_damping;                
        
        nodes[count, 9] += nodes[count, 13] * -forcex; 
        nodes[count, 10] += nodes[count, 13] * -forcey;
        nodes[count, 11] += nodes[count, 13] * -forcez;
        
        nodes[countp, 9] += nodes[countp, 13] * forcex; 
        nodes[countp, 10] += nodes[countp, 13] * forcey;
        nodes[countp, 11] += nodes[countp, 13] * forcez;
      }
    }   
    count++;
  }
}


//update all nodes
for(i=0; i<array_height_2d(nodes); i++)
{
  nodes[i, 6] += nodes[i, 9];  //velocity + acceleration
  nodes[i, 7] += nodes[i, 10];
  nodes[i, 8] += nodes[i, 11];

  nodes[i, 3] += nodes[i, 6]; //position + velocity
  nodes[i, 4] += nodes[i, 7];
  nodes[i, 5] += nodes[i, 8];

  nodes[i, 9] = 0;  //acceleration
  nodes[i, 10] = 0;
  nodes[i, 11] = 0;

  if(point_distance_3d(0, 0, 0, nodes[i, 6], nodes[i, 7], nodes[i, 8])<0.000001) 
  {
    nodes[i, 6] = 0; //velocity
    nodes[i, 7] = 0;
    nodes[i, 8] = 0;
  }
  
  nodes[i, 6] *= nodes[i, 12]; //velocity * damping
  nodes[i, 7] *= nodes[i, 12];
  nodes[i, 8] *= nodes[i, 12];
  
  nodes[i, 12] = nodes_damping;
}

