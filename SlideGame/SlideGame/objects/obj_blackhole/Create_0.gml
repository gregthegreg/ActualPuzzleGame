    
    surf = -1;
    surf_w = surface_get_width(application_surface);
    surf_h = surface_get_height(application_surface);
    tex_transform = shader_get_uniform( sh_blackhole, "tex_transform" );
    sampler = shader_get_sampler_index( sh_blackhole, "tex_back" );
    image_xscale = 2;
    image_yscale = 2;
    
//NOTE:  without texture repeating, when blackhole is near edge of view,
//       you will see streaks near the center
//       where it is trying to read positions outside of the texture edges
//       toggle on or off at your own discretion.
    texture_set_repeat(true);


//just for demo
    view_center_x = 0;
    view_center_y = 0;
    zoom = 1;

