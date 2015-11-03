%% Rotation Matrix in 3D (degrees)
% Chandler Lagarde
% 10/22/2015

% Can only be used for degrees. For radians, change cosd to cos and sind to
% sin. 
% Creates a cell array for a rotation matrix with given sets of theta
% values (txdeg,tydeg,tzdeg)(check Aortic_Rotation_Translation.m for more
% clarification). 
function [rot] = rotdeg(txdeg,tydeg,tzdeg)

% Defines the amount of thetas in txdeg (should be the same as tydeg &
% tzdeg).
p = size(txdeg(:,1));

% Preallocates the cell array called rotation
rot = cell(1,10);

% For loop stating that from 1 to p, create a cell array for each value of
% the rotation matrix, with given theta values. 
for i = 1:p
    rot{1,i} = [cosd(tydeg(i))*cosd(tzdeg(i))      cosd(txdeg(i))*sind(tzdeg(i))+sind(txdeg(i))*sind(tydeg(i))*cosd(tzdeg(i))       sind(txdeg(i))*sind(tzdeg(i))-cosd(txdeg(i))*sind(tydeg(i))*cosd(tzdeg(i));...
                -cosd(tydeg(i))*sind(tzdeg(i))     cosd(txdeg(i))*cosd(tzdeg(i))-sind(txdeg(i))*sind(tydeg(i))*sind(tzdeg(i))       sind(txdeg(i))*cosd(tzdeg(i))+cosd(txdeg(i))*sind(tydeg(i))*sind(tzdeg(i));...
                sind(tydeg(i))                     -sind(txdeg(i))*cosd(tydeg(i))                                                   cosd(txdeg(i))*cosd(tydeg(i)) ];
end

end
