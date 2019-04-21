function F = two_body_time_der(vec)
    earth_mass = 5.9722*10^24;
    iss_mass = 419725;
    
    earth_acc = get_accel(iss_mass, vec(4:6), vec(1:3));
    iss_acc = get_accel(earth_mass, vec(1:3), vec(4:6));
    
    F = [vec(7:12);earth_acc;iss_acc];

end