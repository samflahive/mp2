function points = two_body_problem(mass_A, mass_B, init_A, init_B, N, h)
    kutta_steps = 4;
    vec = [init_A(1:3);init_B(1:3);init_A(4:6);init_B(4:6)];
    four = kutta_4th_order_two_body(mass_A, mass_B, vec, kutta_steps, h);
    points = two_body_ab(mass_A, mass_B, four, N, h);
end