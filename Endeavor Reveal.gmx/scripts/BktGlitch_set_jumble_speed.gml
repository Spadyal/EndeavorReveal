/// BktGlitch_set_jumble_speed(jumble speed)
/*
    Sets speed of jumble variation.
    Range based around 0-1, no upper limit.
    Higher = faster block variation
    0 = no change over time
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "jumbleSpeed"), abs(argument0));
