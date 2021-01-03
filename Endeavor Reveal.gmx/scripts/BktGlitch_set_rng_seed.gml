/// BktGlitch_set_rng_seed(seed)
/*
    Changes seed used for random calculations - adds variation to all effects.
    Can be for example used for single "hits". 
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "rngSeed"), abs(argument0));
