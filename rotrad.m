%% Rotation Matrix in 3D (radians)
% Chandler Lagarde
% 10/22/2015

% Can only be used for radians. For degrees, change cos to cosd and sin to
% sind. 
% Creates a cell array for a rotation matrix with given sets of theta
% values (txrad,tyrad,tzrad)(check Aortic_Rotation_Translation.m for more
% clarification). 
function [rot] = rotrad(txrad,tyrad,tzrad)

% Defines the amount of thetas in txrad (should be the same as tyrad &
% tzrad).
p = size(txrad(:,1));

% Preallocates the cell array called rotation
rot = cell(1,10);

% For loop stating that from 1 to p, create a cell array for each value of
% the rotation matrix, with given theta values. 
for i = 1:p
    rot{1,i} = [cos(tyrad(i))*cos(tzrad(i))      cos(txrad(i))*sin(tzrad(i))+sin(txrad(i))*sin(tyrad(i))*cos(tzrad(i))       sin(txrad(i))*sin(tzrad(i))-cos(txrad(i))*sin(tyrad(i))*cos(tzrad(i));...
                -cos(tyrad(i))*sin(tzrad(i))     cos(txrad(i))*cos(tzrad(i))-sin(txrad(i))*sin(tyrad(i))*sin(tzrad(i))       sin(txrad(i))*cos(tzrad(i))+cos(txrad(i))*sin(tyrad(i))*sin(tzrad(i));...
                sin(tyrad(i))                    -sin(txrad(i))*cos(tyrad(i))                                                cos(txrad(i))*cos(tyrad(i)) ];
end

end
