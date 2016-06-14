% Plot h
function Plot_h(hz1,hz2,hz3,D,F)
lineType = 'k';
z = -2000:1:0;
plot(abs(hz1(z))/F,z,lineType)
set(gca,'YDir','reverse')
% set(gca,'YScale','log')
hold on
z = 0:1:D;
plot(abs(hz2(z))/F,z,lineType)
hold on
z = D:1:3000;
plot(abs(hz3(z))/F,z,lineType)
grid on
hold on