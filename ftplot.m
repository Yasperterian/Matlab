function ftplot(xa,dt)
%FTPLOT
% ftplot(xa,dt)
%
%	xa: se�al "ANAL�GICA"
%	dt: el per�odo de muestreo para la simulaci�n de xa(t)
L=length(xa);
Nfft=round(2.^ round(log2(5*L)));
Xa=fft(xa,Nfft);
range=0:(Nfft/4);
r=length(range);
ff=range/Nfft/dt;
plot(ff/1000,abs(Xa(1:r)))
title('M�DULO DE LA TRANSFORMADA DE FOURIER DE TIEMPO CONTINUO')
xlabel('FRECUENCIA(kHz)')
grid on
