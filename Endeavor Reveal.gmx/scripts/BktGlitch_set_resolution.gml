/// BktGlitch_set_resolution(width, height)
/*
    Passes resolution to the shader.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "resolution"), abs(argument0), abs(argument1));
