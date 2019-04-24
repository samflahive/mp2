function first_few = kutta_4th_order_two_body(mass_a, mass_B, vec, N, h)    
    first_few = zeros(12,4);
    index = 1;
    first_few(:,index) = vec;
    while index < 4
        k1 = h*two_body_time_der(mass_a, mass_B, vec);
        k2 = h*two_body_time_der(mass_a, mass_B, vec+k1/2);
        k3 = h*two_body_time_der(mass_a, mass_B, vec+k2/2);
        k4 = h*two_body_time_der(mass_a, mass_B, vec+k3);
        
        
        vec = vec + (k1+2*k2+2*k3+k4)/6;
        index = index+1;
        first_few(:,index) = vec;
    end

end