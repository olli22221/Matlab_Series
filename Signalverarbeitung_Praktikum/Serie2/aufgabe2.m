[y,Fs] = audioread('gdur.wav');

[m1,m2,z2,z3,z4] = momente(y);
sigma = sqrt(z2);
c = length(y);
x = (0:c);
ymax = max(y);
ymin = min(y);

d = ones(length(x))
plot(y)

hold on
plot(d*ymax)
hold off



