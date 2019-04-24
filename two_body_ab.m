function points = two_body_ab(mass_A, mass_B, first_four, N, h)
    points = zeros(12, N);
    %points(:,1:4) = kutta_setup(h);
    points(:,1:4) = first_four;
    for index = 5:N
        Fn_1 = two_body_time_der(mass_A, mass_B, points(:, index-1));
        Fn_2 = two_body_time_der(mass_A, mass_B, points(:, index-2));
        Fn_3 = two_body_time_der(mass_A, mass_B, points(:, index-3));
        Fn_4 = two_body_time_der(mass_A, mass_B, points(:, index-4));
        prediction = points(:, index-1)+(h/24)*(55*Fn_1-59*Fn_2+37*Fn_3-9*Fn_4);
        Fp = two_body_time_der(mass_A, mass_B, prediction);
        correction = points(:, index-1)+(h/24)*(9*Fp+19*Fn_1-5*Fn_2+Fn_3);
        
        points(:,index) = [correction];
    end   
end