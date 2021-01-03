/// BktGlitch_set_time(time)
/*
    Passes time variable to the shader, neeeds to change for animation.
    Designed for a variable that increases by one every frame at 60 FPS.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(shader_get_uniform(shdBktGlitch, "time"), abs(argument0));
