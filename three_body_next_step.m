function points = three_body_next_step(N,h)
    points = zeros(12, N);
    points(:,1:4) = kutta_setup(h);

    for index = 5:N
        Fn_1 = three_body_time_der(points(:, index-1));
        Fn_2 = three_body_time_der(points(:, index-2));
        Fn_3 = three_body_time_der(points(:, index-3));
        Fn_4 = three_body_time_der(points(:, index-4));
        prediction = points(:, index-1)+h*((55/24)*Fn_1-(59/24)*Fn_2+(37/24)*Fn_3-(9/24)*Fn_4);
        Fp = three_body_time_der(prediction);
        correction = points(:, index-1)+h*((9/24)*Fp+(19/24)*Fn_1-(5/24)*Fn_2+Fn_3/24);
        
        points(:,index) = [correction];
    end   
end