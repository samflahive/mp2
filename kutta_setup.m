function first_few = kutta_setup(h)
    % vec = 
    % moon_x
    % moon_y
    % earth_x
    % earth_y
    % sun_x
    % sun_y
    % moon_Vx
    % moon_Vy
    % earth_Vx
    % earth_Vy
    % sun_Vx
    % sun_Vy
    
    sun_pos = [9.128170113617075*10^-1,4.157712609063286*10^-1,-2.007699894911463*10^-5];
    sun_vel = [-6.855075683754647*10^-3,1.571561559550966*10^-2,-1.430568235332554*10^-7];
    
    earth_pos = [0,0,0];
    earth_vel = [0,0,0];
    
    moon_pos = [-1.967898777899383*10^-3,1.453399806387145*10^-3,1.135119404698564*10^-4];
    moon_vel = [-3.5306124653965*10^-4, -5.054150806171831*10^-4,4.537274421665038*10^-5];
    
    vec = [moon_pos(1:2)';earth_pos(1:2)';sun_pos(1:2)';moon_vel(1:2)';earth_vel(1:2)';sun_vel(1:2)'];
    length(vec);
    first_few = zeros(12,4);
    index = 1;
    first_few(:,index) = vec;
    while index < 4
        
        k1 = h*three_body_time_der(vec);
        k2 = h*three_body_time_der(vec+k1/2);
        k3 = h*three_body_time_der(vec+k2/2);
        k4 = h*three_body_time_der(vec+k3);
        
        
        vec = vec + (k1+2*k2+2*k3+k4)/6;
        index = index+1;
        first_few(:,index) = vec;
    end
    
end