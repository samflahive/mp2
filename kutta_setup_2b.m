function first_few = kutta_setup_2b(vec, h)    
    first_few = zeros(12,4);
    index = 1;
    first_few(:,index) = vec;
    while index < 4
        k1 = h*two_body_time_der(vec);
        k2 = h*two_body_time_der(vec+k1/2);
        k3 = h*two_body_time_der(vec+k2/2);
        k4 = h*two_body_time_der(vec+k3);
        
        
        vec = vec + (k1+2*k2+2*k3+k4)/6;
        index = index+1;
        first_few(:,index) = vec;
    end

end