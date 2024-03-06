% Example from https://www.comsol.com/blogs/general-introduction-chemical-kinetics-arrhenius-law/
% 
% Chemicals: A, B, C
% Reactions:
% B <- 2A with k1 = 0.001 : Second order (2 chemicals -> 1 chemical)
% C <- B  with k2 = 0.0015 : First order (1 chemical  -> 1 chemical)
%

% Copyright 2024 Dohyun Kim / CC BY-NC

% Contact: dohyun_kim@brown.edu
% Developed using MATLAB 2023b on Darwin 23.3.0 Darwin Kernel Version 23.3.0: Wed Dec 20 21:30:44 PST 2023; root:xnu-10002.81.5~7/RELEASE_ARM64_T6000 arm64

%% Define Reaction
chemicals = {'A', 'B', 'C'};
reaction = Reaction(chemicals);
reaction.AddReaction(2, { ... second order
    'B', 'A', 'A',    0.001; ... B <- 2A = A + A
    });
reaction.AddReaction(1, { ... first order
    'C', 'B',  0.0015; ... C <- B
    });
% show reactions
reaction.show();
disp(' ');
reaction.show_ode()

%% Solve ODE
odefun = @(t,y) reaction.apply(y);
odeopt = odeset('NonNegative', 1, 'Refine', 1);
y0 = reaction.setInitialCondition({ ...
    'A', 1; ...
    'B', 0; ...
    'C', 0});
[t, y] = ode45(odefun, [0, 60*60], y0, odeopt);

%% Plot solution
figure;
hold on;
for i = 1 : length(chemicals)
    plot(t/60, y(:,i), '--s', 'DisplayName', chemicals{i});
end
legend location ne
xlabel('time (min)')
set(gca,'FontSize', 21);