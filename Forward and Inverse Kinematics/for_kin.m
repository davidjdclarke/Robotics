function p = for_kin(q)
    q1 = q(1); q2 = q(2); q3 = q(3);
    d = 0.168; l = 0.13335;
    
    x = sqrt((2 * l^2) - (2 * l^2) * cos(pi - q3));
    a1 = pi * acosd(var1 / (2 * l * sqrt(var1))) / 180;
    phi = q2 - a1;
    h = x * sin(phi);
    pz = d + h;
    s = x * cos(phi);
    
    px = s * cos(q1);
    py = s * sin(q1);
end
