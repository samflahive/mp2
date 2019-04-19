function [acc] = get_accel(mass_A, vec_A, mass_B, vec_B, vec_T)
    G = 6.67384*10^-11*86400*86400/(149597870700^3);
    scalar_A = -G*((vec_A(1)-vec_T(1))^2+(vec_A(2)-vec_T(2))^2)^(-3/2);
    scalar_B = -G*((vec_B(1)-vec_T(1))^2+(vec_B(2)-vec_T(2))^2)^(-3/2);
    
    dir_vec = [vec_A(1)-vec_T(1), vec_B(1)-vec_T(1);vec_A(2)-vec_T(2), vec_B(2)-vec_T(2)];
    
    acc = dir_vec*[scalar_A;scalar_B];
    
end