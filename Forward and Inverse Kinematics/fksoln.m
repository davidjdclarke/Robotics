function p = for_kin(q)      
    d = 0.168;
    l = 0.13335;
    H_01 = dh_to_homo([0 pi/2 d q(1)]);
    H_12 = dh_to_homo([l 0 0 q(2)]);
    H_23 = dh_to_homo([l 0 0 q(3)]);
    H_03 = H_01 * H_12 * H_23;

    p = [H_03(1, 4) H_03(2, 4) H_03(3, 4)];
end

function trans = dh_to_homo(dh)
    % dh = [a alpha d theta]
    trans = [[cos(dh(4)) -1*sin(dh(4))*cos(dh(2)) sin(dh(4))*sin(dh(2)) dh(1)*cos(dh(4))];
            [sin(dh(4)) cos(dh(4))*cos(dh(2)) -1*cos(dh(4))*sin(dh(2)) dh(1)*sin(dh(4))];
            [0 sin(dh(2)) cos(dh(2)) dh(3)];
            [0 0 0 1]];
end
