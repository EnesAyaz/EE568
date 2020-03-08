%% Analytical Solution

%% airgap calculation
alfa=linspace(0,180,180); % degree mechanical
ld=0.5; % mm
lq=2.5; %mm

% Formulation
airgap(1:80)= (ld*(80-alfa(1:80))+lq*alfa(1:80))/80;
airgap(81:100)= lq;
airgap(101:180)= (ld*(alfa(101:180)-100)+lq*(180-alfa(101:180)))/80;

airgap(181:360)=airgap(1:180); % it is symetric so it is enought to know half of the mechanical degree
position= linspace(0,360,360); % full-rotation

figure();
plot(position,airgap,'LineWidth',3);
title('Average airgap of the machine with respect to position of the rotor');
ylabel('Airgap(mm)');
xlabel('Position(Mechanical Degree)');
grid on;
grid minor;

%% reluctance calculation 

R_s = 12.5; % mm % stator space radius
L_a = 20; % mm axial length 

A= (2*pi*R_s*L_a)*80/360; % pole area  mm^2 

mu_0 = 4*pi*1e-7; % H/m
mu_0= mu_0*1e-3 ; % H/mm

R= 2*airgap./(mu_0*A);

figure();
plot(position,R,'LineWidth',3);
title('Reluctance of the machine with respect to position of the rotor');
ylabel('Reluctance(1/H)');
xlabel('Position(Mechanical Degree)');
grid on;
grid minor;

%% Inductance calculation
N=250;

L=(N^2)./R ;

figure();
plot(position,L*1e3,'LineWidth',3);
title('Inductance of the machine with respect to position of the rotor');
ylabel('Inductance(mH)');
xlabel('Position(Mechanical Degree)');
grid on;
grid minor;

%%
current=3;
dL= L(2:end)-L(1:end-1);
dL= [L(1)-L(end), dL];
dL=dL*180/pi;
Ta= (current^2*dL)/2;
figure();
plot(position,Ta,'LineWidth',3);
title('Torque of the machine with respect to position of the rotor');
ylabel('Torque(N.m)');
xlabel('Position(Mechanical Degree)');
grid on;
grid minor;

%% adding the inductance matrices from Q2-linear material for -45 to 45 (0 ,45 , 90)
L_fea=W.Lw(243:397);
time=W.time(243:397);
pos_fea=W.pos(243:397);
pos_fea=pos_fea-45;
pos_fea=mod(pos_fea,360);


figure();
plot(pos_fea,L_fea,'LineWidth',3);
title('Inductance of the machine with respect to position of the rotor');
ylabel('Inductance(mH)');
xlabel('Position(Mechanical Degree)');
grid on;
grid minor;

%%  Comparison of inductance

figure();
plot(pos_fea,L_fea,'LineWidth',3);
hold on;
plot(position,L*1e3,'LineWidth',3);
legend('Finite Element','Analytical Solution')
title('Inductance of the machine with respect to position of the rotor');
ylabel('Inductance(mH)');
xlabel('Position(Mechanical Degree)');
grid on;
grid minor;

%%
energy1=energy(48:77);
p_e=linspace(0,360,30);

figure();
plot(p_e,energy1,'LineWidth',3);
title('Storage Energy of the machine with respect to position of the rotor');
ylabel('Energy(Joule)');
xlabel('Position(Mechanical Degree)');
grid on;
grid minor;
%%
Tb= T(243:397);


figure();

plot(pos_fea,Tb*1e-3,'LineWidth',3);
hold on;
plot(position,Ta,'LineWidth',3);
title('Torque of the machine with respect to position of the rotor');
legend('Finite Element','Analytical Solution')
ylabel('Torque(N.m)');
xlabel('Position(Mechanical Degree)');
grid on;
grid minor;

%%



