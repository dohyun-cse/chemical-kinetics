% Example from https://www.sciencedirect.com/science/article/pii/S1018363912000268?ref=pdf_download&fr=RR-2&rr=860465ad7e7e4ce7
% 
% Chemicals: u, v, w
% Reactions:
% v <- u
% u + (w) <- v + (w) (w: catalyst)
% w + (v) <- v + (v) (one of v is catalyst)

% Copyright 2024 Dohyun Kim / CC BY-NC

% Contact: dohyun_kim@brown.edu
% Developed using MATLAB 2023b on Darwin 23.3.0 Darwin Kernel Version 23.3.0: Wed Dec 20 21:30:44 PST 2023; root:xnu-10002.81.5~7/RELEASE_ARM64_T6000 arm64

%% Define Reaction
chemicals = {'u', 'v', 'w'};
reaction = Reaction(chemicals);
alpha = 0.04;
beta = 0.003;
gamma = 0.05;

reaction.AddReactionWithCatalyst(1, 2, { ... second order
    'u', '<-', 'v', 'w', beta, false, true; ... u <- v + (w)
    'w', '<-', 'v', 'v', gamma, false, true; ... w <- v + (v)
    });
reaction.AddReaction(1, 1, { ... first order
    'v', '<-', 'u',  alpha; ... C <- B
    });
% show reactions
reaction.show();
disp(' ')
reaction.show_ode();

%% Solve ODE
odefun = @(t,y) reaction.apply(y);
% odefun = reaction.simplifiedReaction(); % simplify using symbolic
odeopt = odeset('NonNegative', 1, 'Refine', 1);
y0 = reaction.setInitialCondition({ ...
    'u', 10; ...
    'v', 5; ...
    'w', 20});
[t, y] = ode45(odefun, [0, 5], y0, odeopt);

%% Plot solution
for i = 1 : length(chemicals)
    figure;
    plot(t, y(:,i), '--s', 'DisplayName', chemicals{i});
    ylabel(chemicals{i});
    set(gca,'FontSize', 21);
end