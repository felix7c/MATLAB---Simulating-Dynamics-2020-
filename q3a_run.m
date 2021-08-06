% This file uses ode45 to simulate the Welsh population dynamics between
% the years 2000 and 2300, based on parameters from the Welsh study and
% similar random ICs.
clear all
run q1_params.m %sets global parameters from Welsh study

for i = 1:10 %10 iterations of ode45, each with slightly different random ICs
x0(1) = 0.80 + 0.02*rand(1); %initial B = 0.81 +- 0.1
x0(2) = 0.06 + 0.02*rand(1); %initial I = 0.07 +- 0.1
x0(3) = 1 - x0(1) - x0(2); % initial P = 1-B-I (approx. 0.12 +-0.2)

[t,x]=ode45(@q3_dynamics,2000:1:2300,x0); %run through ode45 between 2000 and 2300

plot(t,x(:,1), 'g'); %plot output for B against t in green
plot(t,x(:,2), 'r'); %plot output for I against t in red
plot(t,x(:,3), 'b'); %plot output for P against t in blue

xlabel('Year'); 
ylabel('Fraction of Population');
title('Welsh Speaker Population through time');

hold on
fixed_point = x(end,:) %output fixed point values for B,I,P
end
legend('Proficient','Basic','Intermediate'); %add legend to graph
