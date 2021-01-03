/// BktGlitch_set_jumble_resolution(resolution)
/*
    Sets resolution of glitch blocks. 
    Range based around 0-1, no upper limit.
    Higher = smaller blocks
    0 = entire texture is a single block
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "jumbleResolution"), abs(argument0));
