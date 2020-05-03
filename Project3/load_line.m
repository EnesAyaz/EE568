figure();
mu_0=4*pi*1e-7;
mu_r= mu_0*16;
B_r= 0.4; % tesle
x=[-B_r/mu_r 0 ];
y=[0 B_r];

plot(x,y,'b','LineWidth',3)
hold on;
plot([0 0], [0,2],'k','LineWidth',3)
hold on; 
plot([-12e+05 0], [0,0],'k','LineWidth',3)
xlabel('Magnetic Field Strenght(A/m)');
ylabel('Magnetic FLux Density(Tesla)');
% 
plot([0,-B_r/mu_r+1.0138/mu_r], [0 , 1.0138],'m','LineWidth',3)

%%
B=Q1v2.B_normal;
l=length(B);
theta= linspace(0,360,l);
figure();
plot(theta,B,'LineWidth',3)
xlim([0 360])
max(B)
ylabel('Flux Density (Tesla)');
xlabel('Electical Angle(Degree)');
set(gca,'FontSize',20)
%%

% plot(T.time,T.T2)
time=T.time(40:96);
Torque=T.T2(40:96);
plot(time,Torque)

%%

plot(Volt)
hold on; 
plot(1000*Volt.*Cur)


