% This file uses ode45 to simulate the Maori-speaking population dynamics of
% the entire New Zealand population between the years 2000 and 2300, based
% on parameters from the Maori study and similar random ICs.

clear all
run q3b_params.m %sets global parameters from overall NZ population for Maori language

for i = 1:10 %10 iterations of ode45, each with slightly different random ICs
x0(1) = 0.962 + 0.002*rand(1); %initial B = 0.963 +-0.001
x0(2) = 0.026 + 0.002*rand(1); %initial I = 0.027 +-0.001
x0(3) = 1 - x0(1) - x0(2); % initial P = 1-B-I (approx. 0.010)

[t,x]=ode45(@q3_dynamics,2000:1:2300,x0); %run through ode45 between 2000 and 2300

plot(t,x(:,1), 'g'); %plot output for B against t in green
plot(t,x(:,2), 'r'); %plot output for I against t in red
plot(t,x(:,3), 'b'); %plot output for P against t in blue

xlabel('Year'); 
ylabel('Fraction of Population');
title('Maori Speaker Population through time (Overall NZ Population)');

hold on
fixed_point = x(end,:) %output fixed point values for B,I,P
end
legend('Proficient','Basic','Intermediate'); %add legend to graph
