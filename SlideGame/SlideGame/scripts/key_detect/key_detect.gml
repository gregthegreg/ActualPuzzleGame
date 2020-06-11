if(os_type = os_windows)
{
	misckey_released = keyboard_check_released(vk_space);
	misckey  = keyboard_check_pressed(vk_space);	
	Upkey	 = keyboard_check_pressed(vk_up);
	downkey  = keyboard_check_pressed(vk_down);
	Leftkey  = keyboard_check_pressed(vk_left);
	RightKey = keyboard_check_pressed(vk_right);
}
if(os_type = os_android)
{
	misckey_released = mouse_check_button_released(mb_left);
	misckey  = mouse_check_button_pressed(mb_right);	
	Upkey    = oGUI.swipeup;
	downkey  = oGUI.swipedown;
	Leftkey  = oGUI.swipeleft;
	RightKey = oGUI.swiperight;
}