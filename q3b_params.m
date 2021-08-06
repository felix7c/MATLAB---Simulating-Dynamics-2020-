%This file contains globalised parameters for use in q3b, based on the
%parameter values used for the Maori model from the Barrett-Walker et al.
%2020 research paper

global alpha r beta_IP beta_BI %sets parameters as global so can be used elsewhere

%these parameter values are from the Welsh model in the research paper:
alpha = 0.436; %intergenerational transmission rate from paper
r = 0.0142857; %birth/death rate for fixed population, based on average life expectancy of 70yrs from paper - same as Welsh as r was described as not language-related
beta_IP = 0.0016; %learning rate parameter representing rate of transition from I to P  from paper
beta_BI = 0.0138; %learning rate parameter representing rate of transition from B to I from paper