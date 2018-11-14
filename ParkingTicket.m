t = [ 4.0 1.5 6.0 0.75 12.0 24.0 24.0 24.0 4.0 2.75 ; 24.0 24.0 5.5 1.00 3.00 2.00 1.5 2.5 4.0 1.5 ; 1.0 1.5 5.0 8.0 1.5 2.0 1.5 1.75 12.0 2.0];

costS = zeros(3,10);
costL = zeros(3,10);
minPriceCheck = zeros(3,10);
switchCheck = zeros(3,10);
minWCheck = zeros(3,4);
wLimitCheck = zeros(3,4);
wLimitCheckLT  = zeros(3,10);
minPrice = zeros(3,4);
finalPrice = zeros(1,3);


for i = 1:3
    for j = 1:10
        if t(i,j) == 0
            costS(i,j) = 0;
            costL(i,j) = 0;
        elseif t(i,j) <= 0.5
            costS(i,j) = 2.5;
        elseif t(i,j) > 0.5 && t(i,j) <= 6.125
            costS(i,j) = 4*t(i,j) + 0.5;
        elseif t(i,j) > 6.125 && t(i,j) <= 24
            costS(i,j) = 25;
        end
        if t(i,j) <= 3
            costL(i,j) = 10;
        elseif t(i,j) > 3 && t(i,j) <= 5.67
            costL(i,j) = 10+3*(t(i,j)-3);
        elseif t(i,j) > 5.67 && t(i,j) <= 24
            costL(i,j) = 18;
        end
    end
end

for i = 1:3
    for j = 1:10
        if costL(i,j) < costS(i,j)
            minPriceCheck(i,j) = costL(i,j);
            switchCheck(i,j) = 1;
        elseif costL(i,j) > costS(i,j)
            minPriceCheck(i,j) = costS(i,j);
            switchCheck(i,j) = 0;
        end
    end
end

for i = 1:3
    for j = 1:10
        if switchCheck(i,j) == 1
            wLimitCheckLT(i,j) = costL(i,j);
        end
    end
end

for i = 1:3
    for j = 1:4
        wLimitCheck(i,j) = sum(wLimitCheckLT(j:j+6));
    end
end

disp('The cheapest price for person 1 is ')
disp(sum(minPriceCheck(1,1:10)))

disp('The cheapest price for person 2 is ')
disp(sum(minPriceCheck(2,1:10)))
disp('The cheapest price for person 3 is ')
disp(sum(minPriceCheck(3,1:10)))
