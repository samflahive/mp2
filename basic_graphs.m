p=moon_earth_sun(5000,0.25);

figure();
subplot(3,3,1); plot(p(1,:)); title("Moon x coordinate");
subplot(3,3,2); plot(p(2,:)); title("Moon y coordinate");
subplot(3,3,3); plot(p(3,:)); title("Moon z coordinate");
subplot(3,3,4); plot(p(4,:)); title("Earth x coordinate");
subplot(3,3,5); plot(p(5,:)); title("Earth y coordinate");
subplot(3,3,6); plot(p(6,:)); title("Earth z coordinate");
subplot(3,3,7); plot(p(7,:)); title("Sun x coordinate");
subplot(3,3,8); plot(p(8,:)); title("Sun y coordinate");
subplot(3,3,9); plot(p(9,:)); title("Sun z coordinate");

figure();
subplot(3,3,1); plot(p(10,:)); title("Moon x velocity");
subplot(3,3,2); plot(p(11,:)); title("Moon y velocity");
subplot(3,3,3); plot(p(12,:)); title("Moon z velocity");
subplot(3,3,4); plot(p(13,:)); title("Earth x velocity");
subplot(3,3,5); plot(p(14,:)); title("Earth y velocity");
subplot(3,3,6); plot(p(15,:)); title("Earth z velocity");
subplot(3,3,7); plot(p(16,:)); title("Sun x velocity");
subplot(3,3,8); plot(p(17,:)); title("Sun y velocity");
subplot(3,3,9); plot(p(18,:)); title("Sun z velocity");

figure();
plot3(p(1,:),p(2,:),p(3,:)); hold on;
plot3(p(4,:),p(5,:),p(6,:));
stem3(p(7,:),p(8,:),p(9,:));
title("Three Body Motion");
legend("Moon","Earth","Sun");
%axis([-1.2, 2, -1.2, 2, -1.2, 2]);
hold off;
