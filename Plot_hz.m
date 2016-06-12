% Plot h
function Plot_h(hz1,hz2,hz3,D)
z = -5*D:1:0;
plot(abs(hz1(z)),z)
set(gca,'YDir','reverse')
hold on
z = 0:1:D;
plot(abs(hz2(z)),z)
hold on
z = D:1:10*D;
plot(abs(hz3(z)),z)
grid on
hold off