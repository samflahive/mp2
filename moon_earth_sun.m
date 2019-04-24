function points = moon_earth_sun(N,h)
    points = zeros(18, N);
    sun_mass = 1.98855*10^30;
    sun_pos = [0,0,0];
    sun_vel = [0,0,0];
    
    
    earth_mass = 5.9722*10^24;
    earth_pos = [-8.832936059884059*10^-1,-4.776066326277669*10^-1,2.157848308799398*10^-5];
    earth_vel = [7.900141218391549*10^-3,-1.519149332234128*10^-2,6.580857807286737*10^-7];
    
    moon_mass = 7.342*10^22;
    moon_pos = [-8.855590065082101*10^-1,-4.785257085600821*10^-1,2.358657397358209*10^-4];
    moon_vel = [8.115825362718033*10^-3,-1.577315305394755*10^-2,1.483449680892226*10^-6];
    
    posits = [moon_pos; earth_pos; sun_pos];
    
    init_moon = [moon_pos,moon_vel]';
    init_earth = [earth_pos,earth_vel]';
    init_sun = [sun_pos,sun_vel]';
    points = three_body_problem(moon_mass, earth_mass, sun_mass, init_moon, init_earth, init_sun, N, h);
end