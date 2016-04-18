%% Mean of Data Sets for each Column
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Chandler P. Lagarde
% 
% Date: 04/18/2016
% 
% Version: 1
%
% Purpose: Take the mean of plotdata.VertexData (data has three rows and
%   50000 something columns) with respect to each column.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ACM] = ArrayColumnMean(X)

[m,n] = size(X);

for i = 1:n
    ACM(1,i) = mean(X(:,i));
end

end