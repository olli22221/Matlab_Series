
t = [0:1/1000:1-1/1000];

sin_sig = sin(2*pi*10*t);

x_corr_sig = xcorr(sin_sig);

t_corr = [-1+1/1000:1/1000:1-1/1000];
plot(t_corr, x_corr_sig)