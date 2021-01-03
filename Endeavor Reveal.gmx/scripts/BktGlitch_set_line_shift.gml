/// BktGlitch_set_line_shift(offset)
/*
    Sets base horizontal line offset.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "lineShift"), abs(argument0));
