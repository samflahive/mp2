function F = two_body_time_der(mass_A, mass_B, vec)
    
    acc_A = get_accel(mass_B, vec(4:6), vec(1:3));
    acc_B = get_accel(mass_A, vec(1:3), vec(4:6));
    
    F = [vec(7:12);acc_A;acc_B];

end