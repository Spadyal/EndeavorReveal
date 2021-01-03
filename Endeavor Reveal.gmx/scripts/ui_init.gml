enum prop {
    lineSpeed,
    lineShift,
    lineResolution,
    lineVertShift,
    lineDrift,
    jumbleSpeed,
    jumbleShift,
    jumbleResolution,
    jumbleness,
    dispersion,
    channelShift,
    noiseLevel, 
    shakiness,
    rngSeed,
    intensity
};
setup_property(prop.intensity, 1, "intensity", 0, 5);
setup_property(prop.lineShift, 0.004, "lineShift", 0, .05);
setup_property(prop.lineResolution, 1,  "lineResolution", 0, 3);
setup_property(prop.lineVertShift, 0, "lineVertShift", 0, 1);
setup_property(prop.lineSpeed, 0.01, "lineSpeed", 0, .5);
setup_property(prop.jumbleness, 0.2, "jumbleness", 0, 1);
setup_property(prop.jumbleResolution, .2, "jumbleResolution", 0, 1);
setup_property(prop.jumbleShift, 0.15, "jumbleShift", 0, 1);
setup_property(prop.jumbleSpeed, 1.0, "jumbleSpeed", 0, 25);
setup_property(prop.channelShift, 0.004, "channelShift", 0, .05);
setup_property(prop.dispersion, 0.0025, "dispersion", 0, .5);
setup_property(prop.noiseLevel,  0.5, "noiseLevel", 0, 1);
setup_property(prop.lineDrift, 0.1,  "lineDrift", 0, 1);
setup_property(prop.shakiness, 0.5,  "shakiness", 0, 10);
setup_property(prop.rngSeed, 0,  "rngSeed", 0, 100);

logoSeed = random(1);
headerIntensity = 0;
alarm[0] = random_range(10, 30);
surGlitch = -1;
global.holdingSlider = -1;
