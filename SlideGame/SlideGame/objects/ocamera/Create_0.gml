/// @description Insert description here
// Set Up camera
cam = view_camera[0];

if(room_width > 1200)||(room_height> 2000)
{
follow = oPlayer;
}
else follow = -1


view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shake_length = 60;
shake_magnitude = 6;
shake_remain = 6;
buff = 32;
