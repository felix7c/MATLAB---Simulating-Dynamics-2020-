% uses the function language_dynamics to evaluate the dynamics of the
% system and output the values of dB/dt, dI/dt, dP/dt respectively for a
% set of initial conditions.

run q1_params.m %sets global parameters

%set initial values locally for B, I and P, based on Welsh model from study
%(1991 initial data)
x(1) = 0.81; %B initial value
x(2) = 0.07; %I initial value
x(3) = 0.11; %P initial value

language_dynamics(x) %runs function and outputs dB/dt, dI/dt, dP/dt respectively
%based on the x input of initial B,I,P values as defined above 

