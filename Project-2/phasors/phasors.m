
figure();
h=3;
subplot(2,1,1)
plot([0,1],[0,0],'g','LineWidth',5);
hold on;
plot([1,1+cosd(h*342)],[0,sind(h*342)],'b','LineWidth',5);
hold on;
plot([1+cosd(h*342),1+cosd(h*342)+cos(h*324)],[sind(h*342),sind(h*342)+sind(h*324)],'--g','LineWidth',5)
hold on;
plot([1+cosd(h*342)+cos(h*324),1+cosd(h*342)+cosd(h*324)+cosd(h*306)],[sind(h*342)+sind(h*324),sind(h*342)+sind(h*324)+sind(h*306) ],'--b','LineWidth',5)
grid on;
plot([0,1+cosd(h*342)+cosd(h*324)+cosd(h*306)],[0,sind(h*342)+sind(h*324)+sind(h*306)],'m','LineWidth',5)
hold on; 
plot([0 0 0 0 0 0 0],[-3 -2 -1 0 1 2 3 ],'k','LineWidth',3)
plot([-2 -1 0 1 2 3 4] ,[0 0 0 0 0 0 0],'--k','LineWidth',3)
xlabel('Real Axis')
ylabel('Imaginary Axis')
title('3rd Harmonic')
legend('A1','A2','A3','A4','Resultant','y-axis','x-axis');

subplot(2,1,2)
h=5;
plot([0,1],[0,0],'g','LineWidth',5);
hold on;
plot([1,1+cosd(h*342)],[0,sind(h*342)],'b','LineWidth',5);
hold on;
plot([1+cosd(h*342),1+cosd(h*342)+cos(h*324)],[sind(h*342),sind(h*342)+sind(h*324)],'--g','LineWidth',5)
hold on;
plot([1+cosd(h*342)+cos(h*324),1+cosd(h*342)+cosd(h*324)+cosd(h*306)],[sind(h*342)+sind(h*324),sind(h*342)+sind(h*324)+sind(h*306) ],'--b','LineWidth',5)
grid on;
scatter([0,1+cosd(h*342)+cosd(h*324)+cosd(h*306)],[0,sind(h*342)+sind(h*324)+sind(h*306)],'m','LineWidth',5)
hold on; 
plot([0 0 0 0 0 0 0],[-3 -2 -1 0 1 2 3 ],'k','LineWidth',3)
plot([-2 -1 0 1 2 3 4] ,[0 0 0 0 0 0 0],'--k','LineWidth',3)
xlabel('Real Axis')
ylabel('Imaginary Axis')
title('5th Harmonic')
legend('A1','A2','A3','A4','Resultant','y-axis','x-axis');