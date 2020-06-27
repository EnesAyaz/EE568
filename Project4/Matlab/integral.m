syms r1;
syms r2;
syms alpha;
syms theta;
syms phi;
syms delta_y;
syms d;


num= r1*r2*(sin(theta)*sin(phi)+cos(alpha)*cos(theta)*cos(phi));
pretty(num)
denum= sqrt((r1*cos(theta)-r2*cos(phi))^2+(r1*sin(theta)-r2*sin(phi)*cos(alpha)-delta_y)^2+(r2*sin(phi)*sin(alpha)-d)^2);
pretty(denum)

M= num/denum;
pretty(M)

F = int(M,theta,[0 2*pi]);