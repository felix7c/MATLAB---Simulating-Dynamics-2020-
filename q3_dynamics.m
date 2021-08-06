function F = q3_dynamics(t,x) % x is a vector containing values of B, I and P

%set B,I,P as correct values from x:
B = x(1); % B represents the proportion of the population categorised as basic speakers (or non-speakers) of the language
I = x(2); % I represents the proportion of the population categorised as independent/intermediate speakers
P = x(3); % P represents the proportion of the population categorised as proficient speakers

global alpha r beta_IP beta_BI %imports global parameters

dB_dt = r*(B + I + (1-alpha)*P) - beta_BI*B*P - r*B; %eqn for change of B with time
dI_dt = beta_BI*B*P - beta_IP*I*P - r*I; %eqn for change of I with time
dP_dt = alpha*r*P +beta_IP*I*P - r*P; %eqn for change of P with time

F = [dB_dt; dI_dt; dP_dt]; %returns time derivatives
end