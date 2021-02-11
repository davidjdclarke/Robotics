function G = grav(q)

	q2 = q(2); q3 = q(3);

	% Compute G1, G2, G3:
	g = 9.81;
    
    	m2 = 0.035; m3 = 0.1;
    	l2 = 0.13335; l3 = 0.13335;
    	lc2 = 0.5*l2; lc3 = 0.9*l3;

	G1 = 0;
    	G2 = m2*g*lc2*cos(q2) + m3*g*l2*cos(q2) + m3*g*lc3*cos(q2 + q3);
    	G3 = m3*g*lc3*cos(q2 + q3);

	G = [G1; G2; G3];
end
