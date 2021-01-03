/// BktGlitch_set_channel_shift(shift)
/*
    Sets level of horizontal RGB channel shift.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "channelShift"), abs(argument0));
