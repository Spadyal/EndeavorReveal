/// BktGlitch_set_line_resolution(resolution)
/*
    Sets resolution of horizontal lines.
    Range based around 0-1, no upper limit.
    Less = more blocky
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "lineResolution"), abs(argument0));
