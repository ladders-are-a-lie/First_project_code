clc
clear
close all

% A driver program to run equation1Velocity.m

% Initialize vars
% All values in SI units

V0 = 0;
Cd =  1; % Given in problem statement
d = 0.0254; % 1 inch diameter
rho_f = 1000;
rho_s = 7800;

%t=60;

% Initialize arrays
% V = zeros(t);

% Populate array using equation1Velocity
for n = 1:60
    t(n) = n;
    [V(n), A(n), B(n), alpha(n), gamma(n), e_alph(n)] = equation1Velocity(V0, Cd, d, rho_f, rho_s, n);
end

t=linspace(0,60,60);
plot(t,V);
