%  
%  Function to display a curve obtained using de Casteljau subdivision
%  depth of recursion n
%  Maximum depth of recursion M
%  show_decas_subdiv2 returns the coordinates of the points on each
%  intermediate polyline; the intermediate polyline is plotted
%  if parameter flag = 1 is passed
%  bx and by are COLUMN vectors of x and y coordinates of control points
%  cpoly is a 2 x (m+1) matrix whose first row consists of x-coordinates
%  and second row of y-coordinates of m + 1 control points


function [x, y] = run_decas_subdiv_g1(cpoly,M,flag)
bx = cpoly(1,:)';
by = cpoly(2,:)';
m = size(cpoly,2)-1;
fprintf('m (degree of curve) = %d \n', m)
cla
hold on
%  plots control polygon in green
plot(cpoly(1,:),cpoly(2,:),'-g')
for n = 1:M
 [x, y] = show_decas_subdiv2(bx,by,n);  
 % x
 % y
 if n < M 
     %  plot intermediate polyline if flag = 1 is passed as a parameter
     if flag == 1
        plot(x,y)
     end
 else
     % final polyline is red
     plot(x,y,'r-')
 end
end
hold off
end