q_in = [-5*pi/18 0 -7*pi/9; 
    -pi/6 pi/9 -13*pi/18;
    -pi/18 2*pi/9 -2*pi/3;
    pi/18 pi/3 -11*pi/18;
    pi/6 4*pi/9 -5*pi/9;
    5*pi/18 5*pi/9 -pi/2];

q_out = [0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0];

for i=1:length(q_in)
    q_out(i, :) = inv_kin(for_kin(q_in(i, :)));
end


