function [acc] = get_accel(mass, vec_source, vec_target)
    % gravitational constant with scaling for AU and days units
    G = 6.67384*10^-11*86400*86400/(149597870700^3);
    dir_vec = vec_source-vec_target;
    scalar = G*mass/(norm(dir_vec)^3);
    
    %{
    earth_x = (vec_A(1)-vec_T(1))*scalar_A
    earth_y = (vec_A(2)-vec_T(2))*scalar_A
    sun_x = (vec_B(1)-vec_T(1))*scalar_B
    sun_y = (vec_B(2)-vec_T(2))*scalar_B
    %}
    
    
    
    acc = dir_vec*scalar;
    
end