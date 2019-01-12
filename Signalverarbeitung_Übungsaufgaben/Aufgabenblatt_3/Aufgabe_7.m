x = 0:1/1000:1;
y = -1:1/1000:-1/1000000;

dichte_fkt = (@(x) 1/2*exp(-1/2.*x));
dichte_fkt_l =(@(y) 0);

dichte_fkt_int = (@(x) -1*exp(-1/2.*x));

subplot(2,1,1)
hold on

fplot(dichte_fkt,[0,15])
fplot(dichte_fkt_l,[-10 1/1000000])
hold off

subplot(2, 1, 2)
hold on

fplot(dichte_fkt_int,[0,15])
fplot(dichte_fkt_l,[-10 1/1000000])

hold off

