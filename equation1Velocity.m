function [V, A, B, alpha, gamma, e_alph] = equation1Velocity(V0, Cd, d, rho_f, rho_s, t)

g=9.81; % Acceleration of gravity

A = (3/4)*(Cd/d)*(rho_f/rho_s); %(3*Cd*rho_f)/(4*d*rho_s);
B = (1-(rho_f/rho_s))*g;

gamma = sqrt(B/A);
alpha = 2*gamma*A;

e_alph = exp(-alpha*t);

num = (V0+gamma+((V0-gamma)*exp(-alpha*t)));
denom = (V0+gamma-((V0-gamma)*exp(-alpha*t)));

% V = gamma*((V0+gamma+((V0-gamma)*exp(-alpha*t)))/(V0+gamma-((V0-gamma)*exp(-alpha*t))));

V = gamma*(num/denom);

%% Code is incomplete, e_alph is too small