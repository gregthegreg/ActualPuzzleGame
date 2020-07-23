
    if !surface_exists( surf ) { surf = surface_create( surf_w, surf_h ); }
    surface_copy( surf, 0, 0, application_surface );
    shader_set( sh_blackhole );
    shader_set_uniform_f( 
        tex_transform, 
        sprite_width  / (surf_w*zoom), 
        sprite_height / (surf_h*zoom), 
        ( x - sprite_width/2  - __view_get( e__VW.XView, 0 ) ) / __view_get( e__VW.WView, 0 ), 
        ( y - sprite_height/2 - __view_get( e__VW.YView, 0 ) ) / __view_get( e__VW.HView, 0 ) 
    );
    texture_set_stage( sampler, surface_get_texture( surf ) );
    draw_self();
    shader_reset();

