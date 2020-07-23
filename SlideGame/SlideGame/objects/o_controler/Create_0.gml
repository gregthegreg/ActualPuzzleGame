/**********************************************************
CREDITS
This project is based on the xna tutorial from the website:
http://gamedevelopment.tutsplus.com/tutorials/make-a-neon-vector-shooter-for-ios-the-warping-grid--gamedev-14637
***********************************************************/

//THIS IS MAIN CONTROLER OBJECT FOR THE GRID IT HANDLES GRID PHYSICS AND GRID DRAWING
//IT SHOULD BE PRESENT IN THE ROOM

zoom = 1;
view_pos_x = 0;
view_pos_y = 0;
size = sz;              //grid cell size

nodesx = floor(room_width / size);     //how many nodes horizontally
nodesy = floor(room_height / size);    //how many nodes vertically

grid_xoff = (room_width - (nodesx-1) * size)/2;          //offset position of the grid in the screen
grid_yoff = (room_height - (nodesy-1) * size)/2;

count = 0;
for(j=0; j<nodesy; j++)
  for(i=0; i<nodesx; i++)  
  {
    nodes[count, 0] = i*size + grid_xoff; //origin pos never used could be used to stabilize grid for certain effects
    nodes[count, 1] = j*size + grid_yoff;
    nodes[count, 2] = 0;
    
    nodes[count, 3] = i*size + grid_xoff; //current pos
    nodes[count, 4] = j*size + grid_yoff;
    nodes[count, 5] = 0;
    
    nodes[count, 6] = 0; //velocity
    nodes[count, 7] = 0;
    nodes[count, 8] = 0;
    
    nodes[count, 9] = 0; //acceleration
    nodes[count, 10] = 0;
    nodes[count, 11] = 0;
    
    nodes[count, 12] = 0.98; //damping
    nodes[count, 13] = 1; //inverse mas smaller value means node is havier. Can be used to create certain areas of the grid easier/harder to move
    if(i==0 || i==nodesx-1 || j==0 || j==nodesy-1) nodes[count, 13] = 0; //inverse mas for border points they can't be moved
    
    count++; 
  }
  


