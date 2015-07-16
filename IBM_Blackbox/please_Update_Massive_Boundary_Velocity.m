function mVelocity_h = please_Update_Massive_Boundary_Velocity(dt_step,mass_info,mVelocity,F_Mass_Bnd)

% dt_step: desired time-step for this position
% mass_info: col 1: lag index for mass pt
%            col 2: massive x-Lag Value
%            col 3: massive y-Lag Value
%            col 4: 'mass-spring' stiffness parameter
%            col 5: MASS parameter value
% mVelocity  col 1: x-directed Lagrangian velocity
%            col 2: y-directed Lagrangian velocity
% F_Mass_Bnd col 1: x-directed Lagrangian force
%            col 2: y-directed Lagrangian force


ids = mass_info(:,1);


% update x-Velocity
mVelocity_h(:,1) = mVelocity(:,1) - dt_step*F_Mass_Bnd(ids,1)./mass_info(:,5);

% update y-Velocity
mVelocity_h(:,2) = mVelocity(:,2) - dt_step*F_Mass_Bnd(ids,2)./mass_info(:,5);

