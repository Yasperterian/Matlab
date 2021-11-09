clc;
clear;

%% Par�metros
t=0: 0.001: 6;%tiempo
fc=50;%frecuencia de se�al portadora
fm=5;%frecuencia de se�al mensajera
a=10;%amplitud de se�al portadora
b=6;%amplitud de se�al mensajera
phi=0;%fase de se�al mensajera
c=2;%amplitud de se�al exponencial
%% Se�ales
vc=a.*sawtooth(2*pi*fc*t);%se�al portadora(diente de sierra)
vm=b.*sin(2*pi*fm*t+phi).*exp(-c*t);%se�al mensajera(sinusoidal con amortiguaci�n exponencial)
n=length(vc);
for i=1:n
if(vm(i)>=vc(i))
        pwm(i)=1;
else
        pwm(i)=0;
end
end
subplot(3,1,1);
plot(t,vm);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;
 
subplot(3,1,2);
plot(t,vc);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
grid on;
 
subplot(3,1,3);
plot(t,pwm);
xlabel('Time');
ylabel('Amplitude');
title('PWM Signal');
axis([0 1 0 2]);
grid on;