%This code is intended to find the roots of the functions x to cos(x) and
%tan(x) by comparing two consecutive values and checking whether their sign
%changes
x = -2*pi:0.01:2*pi;
y1 = x - cos(x);
y2 = x - tan(x);
disp('The roots of y = x - cos(x) are')
for R = 1:length(x)
    if R == length(x)
        continue
    end
    if y1(R)*y1(R+1) < 0
        disp((x(R)+x(R+1))/2)
    end
end
disp('The roots of y = x - tan(x) are')
for R = 1:length(x)
    if R == length(x)
        continue
    end
    if abs(y2(R)) < 0.5 && abs(y2(R+1)) < 0.5
        if y2(R)*y2(R+1) < 0
        disp((x(R)+x(R+1))/2)
        end
    end
end

figure(1)
plot(x, y1)
xlabel('x')
ylabel('y')
title('Graph of y = x - cos(x)')
figure(2)
plot(x, y2)
xlabel('x')
ylabel('y')
title('Graph of y = x - tan(x)')