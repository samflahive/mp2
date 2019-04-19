function none = crude_orbit(points)
    % row: 1,2 = moon, 3,4 = earth, 5,6 = sun
    
    moon_x = points(1,:);
    moon_y = points(2,:);
    
    earth_x = points(3,:);
    earth_y = points(4,:);
    
    sun_x = points(5,:);
    sun_y = points(6,:);
    
    plot(moon_x, moon_y);
    
    hold on;
    
    plot(earth_x, earth_y);
    
    plot(sun_x, sun_y);
    legend("moon", "earth", "sun");
end