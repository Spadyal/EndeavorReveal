/// Shader created by LibRetro

attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;
#define target_gamma 2.2
#define darken_screen 1.0
#define contrast 1.0
#define red 0.82
#define rg 0.125
#define rb 0.195
#define gr 0.24
#define green 0.665
#define gb 0.075
#define br -0.06
#define bg 0.21
#define blue 0.73
#define blr 0.0
#define blg 0.0
#define blb 0.0
#define sat 1.0
#define lum 0.94
#define display_gamma 2.2

void main()
{
    vec4 screen = pow(abs(texture2D( gm_BaseTexture, v_vTexcoord)), vec4(target_gamma + darken_screen)).rgba;
    vec4 avglum = vec4(0.5);
    screen = mix(screen, avglum, (1.0 - contrast));
    
    //r   g    b   black
    mat4 vcolor = mat4(red,  rg,  rb, 0.0,  //red channel
                      gr,  green,   gb, 0.0,  //green channel
                      br,  bg,  blue,  0.0,  //blue channel
                      blr, blg, blb,    0.0); //alpha channel; these numbers do nothing for our purposes.
    
    mat4 adjust = mat4((1.0 - sat) * 0.3086 + sat, (1.0 - sat) * 0.3086, (1.0 - sat) * 0.3086, 1.0,
                       (1.0 - sat) * 0.6094, (1.0 - sat) * 0.6094 + sat, (1.0 - sat) * 0.6094, 1.0,
                       (1.0 - sat) * 0.0820, (1.0 - sat) * 0.0820, (1.0 - sat) * 0.0820 + sat, 1.0,
                       0.0, 0.0, 0.0, 1.0);
    vcolor *= adjust;
    screen = clamp(screen * lum, 0.0, 1.0);
    screen = vcolor * screen;
    gl_FragColor = pow(abs(screen), vec4(1.0 / display_gamma));
}
