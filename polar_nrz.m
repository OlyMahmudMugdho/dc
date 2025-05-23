clc;
clear all;
close all;

N = 10;
n = randi([0,1], 1,N);

for m = 1:N
    if n(m) == 1
        nn(m) = 1;
    else
        nn(m) = -1;
    end
end

i = 1;
t = 0:0.01:length(n);

for j = 1:length(t)
    if t(j) <= i
        y(j) = nn(i);
    else
        y(j) = nn(i);
        i = i + 1;
    end
end

plot(t,y,'lineWidth', 2);
axis([0,N,-1.5,-1.5])
grid on;
