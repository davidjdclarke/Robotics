function q = inv_kin(p)
    px = p(1); py = p(2); pz = p(3);
    l = 0.13335; d = 0.168;
    
    q1 = atan(py / px);
    
    var1 = px^2 + py^2 + (pz - d)^2;
    q3 = -pi * (180 - acosd(((2 * l^2) - var1) / (2 * l^2))) / 180;
    
    a1 = pi * acosd(var1 / (2 * l * sqrt(var1))) / 180;
    a2 = atan((pz - d) / sqrt(px^ 2 + py^2));
    
    q2 = a1 + a2;
    
    q = [q1 q2 q3];
end
