function points = earth_iss(N,h)
    
    iss_mass = 419725;
    iss_pos = [-8.848993853067718*10^-1,-4.700471894226270*10^-1,1.212431615009284*10^-5];
    iss_vel = [9.535882942644581*10^-3, -1.157643117544216*10^-2, 1.960866014972524*10^-3];
    
    earth_mass = 5.9722*10^24;
    earth_pos = [-8.849265890815291*10^-1, -4.700210783384209*10^-1, -1.310012645076314*10^-5];
    earth_vel = [7.891809277308216*10^-3, -1.519064676475959*10^-2, 8.744617121775563*10^-7];
    
    init_earth = [earth_pos,earth_vel]';
    init_iss = [iss_pos,iss_vel]';
    points = two_body_problem(earth_mass, iss_mass, init_earth, init_iss ,N,h);

end