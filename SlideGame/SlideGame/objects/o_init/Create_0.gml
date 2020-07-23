//THIS OBJECT SHOULD BE CREATED BEFORE o_controler OBJECT 


globalvar sz, effect, force_direction, nodes_damping, springs_damping, springs_stiffnes, after_damping;

//Try to experiment with this values
//Grid behavior depends on the cell size and these parameters
//Grid can become unstable when they are set improperly

sz =128;         //grid cell size in pixels
//distance = 100;  //how far grid nodes will be affected        (IMPORTANT FOR ALL EFFECTS !!!)
effect = 0;      //what force effect shoud be used 0-2
//force = 20;      //how strong effect will be                  (IMPORTANT FOR ALL EFFECTS !!!)
//force_direction = irandom(360);  //direction of the force in effect 2

nodes_damping = 0.98; //how fast nodes will lose its speed (0-1) (smaller means faster)
springs_damping = 0.06 //how fast springs will lose its contraption force (0-1) (smaller means faster)
springs_stiffnes = 0.18 //stiffnes of the spring (0-1) (larger means that the spring will oscilate faster)
after_damping = 0.6; //damping used after force effects



room_goto_next();


