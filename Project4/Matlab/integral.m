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

%%
% N=linspace(0,40,1000);
N=10.5;
conductor_height=1e-3;
a1=conductor_height;
r_outer1=0.1;
% r_inner=r_outer-a;
nu=4*pi*1e-7;
L= N.*N.*r_outer1*nu.*(log(8.*r_outer1./a1)-2)

% figure();
% plot(N,L/1e-6)

%%
L=[];
for r_outer2=0.04:0.005:0.08
% N2=linspace(0,30,1000);
    N2=1;
    conductor_height=1e-3;
    a2=conductor_height.*N2;
%     r_outer2=0.1;
    % r_inner=r_outer-a2;
    nu=4*pi*1e-7;
%     L2= N2.*N2.*r_inner*nu.*(log(8.*r_outer2./a2)-2);
    L2= N2*N2*r_outer*nu.*(log(8.*r_outer2./a2)-2);
    L=[L L2];
end 
r_outer2=0.04:0.005:0.08
plot(r_outer2,L/1e-6);
%% Mutual inductance calculation 
N1=12;
N2=11;
mu=4*pi*1e-7;
r1=0.1;
r2=0.075;
M=0;
d=0.03;


fun = @(theta,phi) (r1*r2*cos(phi-theta))./(sqrt(r1^2+r2^2-2*r1*r2*cos(phi-theta)+d^2));

q=integral2(fun,0,2*pi,0,2*pi);

M=N1*N2*1e-7*q




%%

DeltaX=[0 10 20 30 40 50 60];
M=[16.45 16.31 15.94 15.33 14.563 13.625 12.578];

normalized_delta= DeltaX;
normalized_M= M/M(1);

figure();
subplot(3,1,1)
plot(normalized_delta,normalized_M,'LineWidth',4);
title('Mutual Indtactance Change over Lateral Misalignment');
ylabel(' Indutance(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Position of the Receiver Center (mm)');
grid on;
set(gca,'fontSize',20)

subplot(3,1,2)
plot(normalized_delta,normalized_M,'LineWidth',4);
% title('Output Voltage Change over lateral misalignment');
title({'';'';'Output Voltage Change over Lateral Misalignment'})
ylabel('Voltage(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Position of the Receiver Center (mm)');
grid on;
set(gca,'fontSize',20)


subplot(3,1,3)
plot(normalized_delta,normalized_M.^2,'LineWidth',4);
% title('Output Power Change over lateral misalignment');
title({'';'';'Output Power Change over Lateral Misalignment'})
ylabel('Power(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Position of the Receiver Center (mm)');
set(gca,'fontSize',20)
grid on;
setappdata(gcf, 'SubplotDefaultAxesLocation', [0, 0, 1, 1]);

%%

angular=0:5:30;
M=[16.45 16.51 16.75 17.1 17.6 18.3 19.26];

normalized_delta= angular;
normalized_M= M/M(1);

figure();
subplot(3,1,1)
plot(normalized_delta,normalized_M,'LineWidth',4);
title('Mutual Indtactance Change over Angular Misalignment');
ylabel(' Indutance(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Angle of the Receiver  (Degree)');
grid on;
set(gca,'fontSize',20)

subplot(3,1,2)
plot(normalized_delta,normalized_M,'LineWidth',4);
% title('Output Voltage Change over lateral misalignment');
title({'';'';'Output Voltage Change over Angular Misalignment'})
ylabel('Voltage(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Angle of the Receiver  (Degree)');
grid on;
set(gca,'fontSize',20)


subplot(3,1,3)
plot(normalized_delta,normalized_M.^2,'LineWidth',4);
% title('Output Power Change over lateral misalignment');
title({'';'';'Output Power Change over Angular Misalignment'})
ylabel('Power(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Angle of the Receiver  (Degree)');
grid on;
set(gca,'fontSize',20)
setappdata(gcf, 'SubplotDefaultAxesLocation', [0, 0, 1, 1]);
%%

DeltaX=[0 10 20 30 40 50 60];
M=[16.935 16.793 16.411 15.755 14.563 14.895 13.834];

normalized_delta= DeltaX;
normalized_M= M/M(1);

figure();
subplot(3,1,1)
plot(normalized_delta,normalized_M,'LineWidth',4);
title('Mutual Indtactance Change over Lateral Misalignment');
grid on;
ylabel(' Indutance(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Position of the Receiver Center (mm)');
set(gca,'fontSize',20)

subplot(3,1,2)
plot(normalized_delta,normalized_M,'LineWidth',4);
% title('Output Voltage Change over lateral misalignment');
title({'';'';'Output Voltage Change over Lateral Misalignment'})
ylabel('Voltage(p.u)');
grid on;
% xlabel('Normalized position (p.u)');
xlabel('Position of the Receiver Center (mm)');
set(gca,'fontSize',20)


subplot(3,1,3)
plot(normalized_delta,normalized_M.^2,'LineWidth',4);
% title('Output Power Change over lateral misalignment');
title({'';'';'Output Power Change over Lateral Misalignment'})
ylabel('Power(p.u)');
grid on;
% xlabel('Normalized position (p.u)');
xlabel('Position of the Receiver Center (mm)');
set(gca,'fontSize',20)
setappdata(gcf, 'SubplotDefaultAxesLocation', [0, 0, 1, 1]);

%%

angular=0:5:30;
M=[16.935 16.944 16.984 17.043 17.074 17.02 16.792];

normalized_delta= angular;
normalized_M= M/M(1);

figure();
subplot(3,1,1)
plot(normalized_delta,normalized_M,'LineWidth',4);
title('Mutual Indtactance Change over Angular Misalignment');
grid on;
ylabel(' Indutance(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Angle of the Receiver  (Degree)');
set(gca,'fontSize',20)

subplot(3,1,2)
plot(normalized_delta,normalized_M,'LineWidth',4);
% title('Output Voltage Change over lateral misalignment');
title({'';'';'Output Voltage Change over Angular Misalignment'})
grid on;
ylabel('Voltage(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Angle of the Receiver  (Degree)');
set(gca,'fontSize',20)


subplot(3,1,3)
plot(normalized_delta,normalized_M.^2,'LineWidth',4);
% title('Output Power Change over lateral misalignment');
title({'';'';'Output Power Change over Angular Misalignment'})
ylabel('Power(p.u)');
grid on;
% xlabel('Normalized position (p.u)');
xlabel('Angle of the Receiver  (Degree)');
set(gca,'fontSize',20)
setappdata(gcf, 'SubplotDefaultAxesLocation', [0, 0, 1, 1]);

%%  Lateral Changes 
angular=0:5:30;
M1=[16.935 16.944 16.984 17.043 17.074 17.02 16.792];
normalized_M1= M1/M(1);

M=[16.45 16.51 16.75 17.1 17.6 18.3 19.26];
normalized_M= M/M(1);

figure();
plot(angular,normalized_M,'LineWidth',4);
hold on;
plot(angular,normalized_M1,'LineWidth',4);
title('Mutual Indtactance Change over Angular Misalignment');
grid on;
ylabel(' Indutance(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Angle of the Receiver  (Degree)');
legend('Smaller Receiver','Same Size Receiver');
set(gca,'fontSize',20)
%%


DeltaX=[0 10 20 30 40 50 60];
M1=[16.935 16.793 16.411 15.755 14.563 14.895 13.834];

normalized_delta= DeltaX;
normalized_M1= M1/M1(1);

M=[16.45 16.31 15.94 15.33 14.563 13.625 12.578];
normalized_M= M/M(1);

figure();
plot(normalized_delta,normalized_M1,'LineWidth',4);
hold on;
plot(normalized_delta,normalized_M,'LineWidth',4);
title('Mutual Indtactance Change over Lateral Misalignment');
grid on;
ylabel(' Indutance(p.u)');
% xlabel('Normalized position (p.u)');
xlabel('Position of the Receiver Center (mm)');
legend('Smaller Receiver','Same Size Receiver');
set(gca,'fontSize',20);