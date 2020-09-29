function [x, y] = makelist(lpoly, n, num)
    x = lpoly(1, :, 1);
    y = lpoly(2, :, 1);

    for i = 2:num
        x = [x, lpoly(1, 2:n, i)];
        y = [y, lpoly(2, 2:n, i)];
    end

end