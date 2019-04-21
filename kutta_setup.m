function first_few = kutta_setup_3b(vec, h)    
    first_few = zeros(18,4);
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