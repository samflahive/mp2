function F = three_body_time_der(mass_A, mass_B, mass_C, vec)
    
    acc_A=get_accel(mass_B, vec(4:6),  vec(1:3))+get_accel(mass_C, vec(7:9), vec(1:3));
    acc_B=get_accel(mass_A, vec(1:3), vec(4:6))+get_accel(mass_C, vec(7:9), vec(4:6));
    acc_C=get_accel(mass_A, vec(1:3), vec(7:9))+get_accel(mass_B, vec(4:6), vec(7:9));
    
    F = [vec(10:18);acc_A;acc_B;acc_C];
end