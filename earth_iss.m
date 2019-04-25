function points = earth_iss(N,h)
    
    iss_mass = 419725;
    iss_pos = [2.720377475731905*10^-5,-2.611108420608355*10^-5,2.522444260083528*10^-5];
    iss_vel = [1.644073665336366*10^-3, 3.614215589317436*10^-3, 1.959991553260346*10^-3];
    
    earth_mass = 5.9722*10^24;
    earth_pos = [0,0,0];
    earth_vel = [0,0,0];
    
    init_earth = [earth_pos,earth_vel]';
    init_iss = [iss_pos,iss_vel]';
    points = two_body_problem(earth_mass, iss_mass, init_earth, init_iss ,N,h);

end