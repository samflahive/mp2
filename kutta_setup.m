function first_few = kutta_setup(vec, h)
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
    
    moon_mass = 7.342*10^22;
    earth_mass = 5.9722*10^24;
    sun_mass = 1.98855*10^30;
    
    first_few = zeros(12,4);
    index = 1;
    first_few(:,index) = vec;
    while index < 4
        
        k1 = h*three_body_time_der(vec);
        k2 = h*three_body_time_der(vec+k1/2);
        k3 = h*three_body_time_der(vec+k2/2);
        k4 = h*three_body_time_der(vec+k3);
        
        [k1(7),k2(7),k3(7),k4(7)];
        vec = vec + (k1+2*k2+2*k3+k4)/6;
        index = index+1;
        first_few(:,index) = vec;
    end
    vec(7);
end