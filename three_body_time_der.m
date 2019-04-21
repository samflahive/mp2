function F = three_body_time_der(vec)
    moon_mass = 7.342*10^22;
    earth_mass = 5.9722*10^24;
    sun_mass = 1.98855*10^30;
    
    moon_acc=get_accel(earth_mass, vec(4:6),  vec(1:3))+get_accel(sun_mass, vec(7:9), vec(1:3));
    earth_acc=get_accel(moon_mass, vec(1:3), vec(4:6))+get_accel(sun_mass, vec(7:9), vec(4:6));
    sun_acc=get_accel(moon_mass, vec(1:3), vec(7:9))+get_accel(earth_mass, vec(4:6), vec(7:9));
    
    F = [vec(10:18);moon_acc;earth_acc;sun_acc];
end