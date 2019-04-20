function baried = barycenter_adjust(points, masses)

    total_mass = sum(masses);
    barycenter = (masses*points/total_mass);
    
    baried = points-barycenter;
end