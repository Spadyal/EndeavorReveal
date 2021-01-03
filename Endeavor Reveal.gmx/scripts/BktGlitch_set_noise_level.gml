/// BktGlitch_set_noise_level(noise level)
/*
    Sets level of noise.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "noiseLevel"), abs(argument0));
