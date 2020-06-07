/// @description Insert description here
// Set Up camera
cam = view_camera[0];
screenjuttright = false
screenjuttleft = false
screenjuttup = false
screenjuttdown = false
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
