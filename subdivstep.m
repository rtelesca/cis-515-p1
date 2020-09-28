function [lpoly2] = subdivstep(lpoly)
    [~, ~, l] = size(lpoly);
    
    lpoly2 = zeros(2, 4, 2*l);
    
    for i = 1:l
        [ld, ud] = subdecas(lpoly(:, :, i));
        lpoly2(:, :, 2*i - 1) = ld;
        lpoly2(:, :, 2*i) = ud;
    end

end