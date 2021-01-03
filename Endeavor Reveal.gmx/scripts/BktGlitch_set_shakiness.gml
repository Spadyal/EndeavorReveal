/// BktGlitch_set_shakiness(shakiness)
/*
    Sets "shakiness" of horizontal lines.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "shakiness"), abs(argument0));
