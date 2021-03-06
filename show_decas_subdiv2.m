% To display a curve obtained using de Casteljau subdivision
% Used by run_decas-subdiv2
% returns the x and y coordinates of the sequence of points
% as row vectors
% The polyline is not plotted by this function
% n = level of recursion
% 
%  cpoly is a 2 x (m+1) matrix whose first row consists of x-coordinates
%  and second row of y-coordinates of m + 1 control points

function [x, y] = show_decas_subdiv2(bx,by,n)
    lpoly = [bx.'; by.'];
    
    for i = 0:n
       lpoly = subdivstep(lpoly);
    end
    
    [~, n, num] = size(lpoly);

    [x, y] = makelist(lpoly, n, num);
end