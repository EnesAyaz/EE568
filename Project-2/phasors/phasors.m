
figure();

plot([0,1],[0,0],'g','LineWidth',5);
hold on;
plot([1,1+cosd(330)],[0,sind(330)],'b','LineWidth',5);
hold on;
plot([1+cosd(330),1+cosd(330)+1],[sind(330),sind(330)],'--g','LineWidth',5)
hold on;
plot([1+cosd(330)+1,1+cosd(330)+1+cosd(330)],[sind(330),sind(330)+sind(330)],'--b','LineWidth',5)
grid on;
plot([0,1+cosd(330)+1+cosd(330)],[0,sind(330)+sind(330)],'m','LineWidth',5)
hold on; 
plot([0 0 0 0 0 0 0],[-3 -2 -1 0 1 2 3 ],'k','LineWidth',3)
plot([-2 -1 0 1 2 3 4] ,[0 0 0 0 0 0 0],'--k','LineWidth',3)
xlabel('Real Axis')
ylabel('Imaginary Axis')
