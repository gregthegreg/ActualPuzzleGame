/// @description Insert description here
// Set Up camera
cam = view_camera[0];
zoomin = -1
moved = false
if(room_width > 1200)||(room_height> 2000)
{
follow = oPlayer;
}
else follow = -1


view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;
zoom_inertia = 0.5; //0 = no inertia, 1 = no movement
zoom_speed = 0.5;   //higher = faster
zoom_rate = 0;      //Initialize zoom velocity
zoom = 1;           //Initialize zoom scale
