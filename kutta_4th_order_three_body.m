function first_few = kutta_4th_order_three_body(mass_A, mass_B, mass_C, vec, N, h)   
    first_few = zeros(18,N);
    index = 1;
    first_few(:,index) = vec;
    while index < N
        k1 = h*three_body_time_der(mass_A, mass_B, mass_C, vec);
        k2 = h*three_body_time_der(mass_A, mass_B, mass_C, vec+k1/2);
        k3 = h*three_body_time_der(mass_A, mass_B, mass_C, vec+k2/2);
        k4 = h*three_body_time_der(mass_A, mass_B, mass_C, vec+k3);
        
        
        vec = vec + (k1+2*k2+2*k3+k4)/6;
        index = index+1;
        first_few(:,index) = vec;
    end

end