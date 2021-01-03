/// BktGlitch_set_channel_dispersion(dispersion)
/*
    Sets level of horizontal noisy RGB channel dispersion.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "dispersion"), abs(argument0));
