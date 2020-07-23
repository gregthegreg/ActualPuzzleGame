
uniform sampler2D tex_back;
uniform vec2 one_div_screen_res;
uniform vec2 screen_pos;
uniform float blackhole_scale;

varying vec2 v_vTexcoord;
varying vec4 v_pos;

void main()
{
    vec2 balanced = v_vTexcoord.xy - 0.5;
    float d = length(balanced);
    
    
    //float scaled = d * 8.0;
    //vec3 surfaceNormal = normalize( vec3(balanced, scaled * scaled));
    
    //alternative to above 2 lines
    vec2 normalized = normalize(balanced);
    float scaled = d * 20.0;
    vec3 surfaceNormal = normalize( vec3(normalized, scaled * scaled));
        
    vec3 newBeam = refract(vec3(0.0,0.0,1.0), surfaceNormal, - 0.5);
    vec2 new_tex_coord = (v_pos.xy - screen_pos + newBeam.xy * blackhole_scale * max(0.5-d,0.0)) * one_div_screen_res;

    gl_FragColor = vec4(texture2D(tex_back,new_tex_coord).xyz,1.0);
}


