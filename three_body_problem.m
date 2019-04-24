function points = three_body_problem(mass_A, mass_B, mass_C, init_A, init_B, init_C, N, h)

    vec = [init_A(1:3);init_B(1:3);init_C(1:3);init_A(4:6);init_B(4:6);init_C(4:6)];
    kutta_steps = 4;
    four = kutta_4th_order_three_body(mass_A, mass_B, mass_C, vec, kutta_steps, h);
    points = three_body_ab(mass_A, mass_B, mass_C, four,N,h);

end