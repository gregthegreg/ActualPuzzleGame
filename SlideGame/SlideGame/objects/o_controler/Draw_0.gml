var alp = draw_get_alpha();
var col = draw_get_color();

draw_set_color(c_white);
draw_set_alpha(0.5);

count = 0;

for(j=0; j<nodesy; j++)
{
  for(i=0; i<nodesx; i++)  
  {  
    px = nodes[count, 3];
    py = nodes[count, 4];   
      
    //drawing horizontal lines
    if(i<nodesx-1) 
    {
      var countp = count+1;   
      dst = point_distance(px, py, nodes[countp, 3], nodes[countp, 4]);
      draw_set_alpha(0.3 + 0.7 * abs(1-dst/size));
      draw_line(px, py, nodes[countp, 3], nodes[countp, 4]);
      
      if(j<nodesy-1)
      {    
        countm = count+nodesx; 
        countpm = countp+nodesx; 
               
        pmx = 0.5*(px + nodes[countm, 3]);
        pmy = 0.5*(py + nodes[countm, 4]);
        pmx2 = 0.5*(nodes[countp, 3] + nodes[countpm, 3]);
        pmy2 = 0.5*(nodes[countp, 4] + nodes[countpm, 4]);
        
        draw_line(pmx, pmy, pmx2, pmy2);         
      }
    }   
    
    //drawing vertical lines
    if(j<nodesy-1) 
    {
      var countp = count+nodesx;    
      dst = point_distance(px, py, nodes[countp, 3], nodes[countp, 4]);
      draw_set_alpha(0.3 + 0.7 * abs(1-dst/size));
      draw_line(px, py, nodes[countp, 3], nodes[countp, 4]);
      
      if(i<nodesx-1)
      {    
        countm = count+1; 
        countpm = countp+1; 

        pmx = 0.5*(px + nodes[countm, 3]);
        pmy = 0.5*(py + nodes[countm, 4]);
        pmx2 = 0.5*(nodes[countp, 3] + nodes[countpm, 3]);
        pmy2 = 0.5*(nodes[countp, 4] + nodes[countpm, 4]);
              
        draw_line(pmx, pmy, pmx2, pmy2);          
      }
    }   
    count++;        
  }
} 

draw_set_alpha(alp);
draw_set_color(col);

