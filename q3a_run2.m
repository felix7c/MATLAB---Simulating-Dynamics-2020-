% This file uses ode45 to simulate the Welsh population dynamics between
% the years 1991 and 2320, based on parameters from the Welsh study and
% similar random ICs.
clear all
run q1_params.m %sets global parameters from Welsh study

for i = 1:10 %10 iterations of ode45, each with slightly different random ICs
x0(1) = 0.80 + 0.02*rand(1); %initial B = 0.81 +- 0.1
x0(2) = 0.06 + 0.02*rand(1); %initial I = 0.07 +- 0.1
x0(3) = 1 - x0(1) - x0(2); % initial P = 1-B-I (approx. 0.12)

[t,x]=ode45(@q3_dynamics,1991:1:2320,x0); %run through ode45 between 1991 and 2320
xlim([1991 2320])
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
