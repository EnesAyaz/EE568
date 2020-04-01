B= Flux*10/(2*pi*0.24)*1000;

figure()
plot(angle,B,'LineWidth',3);
title('Airgap Flux Distribution');
xlabel('Mechanical Angle ( Degree)');
ylabel('Flux distribution(Tesla)');
grid on;
grid minor;

%%
figure();
time=WindingPlot6.Timems;
phase=WindingPlot6.InducedVoltagephaseA;
line=WindingPlot6.InducedVoltagephaseA-WindingPlot6.InducedVoltagephaseB;
figure()
plot(time,phase*1000,time,line*1000,'LineWidth',3);
title('Phase and Line-to-Line Voltage Waveform');
xlabel('Time (ms)');
ylabel('Voltage(V)');
grid on;
grid minor;
legend('Phase Voltage', 'Line-to-line Voltage')
ylim([-500, 500])
