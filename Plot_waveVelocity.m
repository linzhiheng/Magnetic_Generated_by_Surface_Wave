% Plot wave velocity
function Plot_waveVelocity(Vx,Vz,D)
z = 1:D;
subplot(121),plot(abs(Vx(z)),z);
set(gca,'YDir','reverse');
title('Vx');
subplot(122),plot(abs(Vz(z)),z);
set(gca,'YDir','reverse');
title('Vz');