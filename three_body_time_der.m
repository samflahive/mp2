function F = three_body_time_der(vec)
    moon_mass = 7.342*10^22;
    earth_mass = 5.9722*10^24;
    sun_mass = 1.98855*10^30;
    
    moon_acc=get_accel(earth_mass, vec(3:4), sun_mass, vec(5:6), vec(1:2));
    earth_acc=get_accel(moon_mass, vec(1:2), sun_mass, vec(5:6), vec(3:4));
    sun_acc=get_accel(moon_mass, vec(1:2), earth_mass, vec(3:4), vec(5:6));
    
    F = [vec(7:12);moon_acc;earth_acc;sun_acc];
end