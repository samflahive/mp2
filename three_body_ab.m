function points = three_body_ab(mass_A, mass_B, mass_C, first_four, N, h)
    points = zeros(18, N);
    points(:,1:4) = first_four;
    for index = 5:N
        Fn_1 = three_body_time_der(mass_A, mass_B, mass_C, points(:, index-1));
        Fn_2 = three_body_time_der(mass_A, mass_B, mass_C, points(:, index-2));
        Fn_3 = three_body_time_der(mass_A, mass_B, mass_C, points(:, index-3));
        Fn_4 = three_body_time_der(mass_A, mass_B, mass_C, points(:, index-4));
        prediction = points(:, index-1)+(h/24)*(55*Fn_1-59*Fn_2+37*Fn_3-9*Fn_4);
        Fp = three_body_time_der(mass_A, mass_B, mass_C, prediction);
        correction = points(:, index-1)+(h/24)*(9*Fp+19*Fn_1-5*Fn_2+Fn_3);
        
        points(:,index) = [correction];
    end   
end