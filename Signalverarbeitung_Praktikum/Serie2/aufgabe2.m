[y,Fs] = audioread('gdur.wav');

[m1,m2,z2,z3,z4] = momente(y);
sigma = sqrt(z2);
s_1 = m1-sigma;
s_2 = m1+sigma;
ymax = max(y);
ymin = min(y);


plot(y)

hold on
mm = plot([1, length(y)], [ymax , ymax],'r');
plot([1, length(y)], [ymin , ymin],'r')
s_abw = plot([1, length(y)], [s_2 , s_2],'g');
plot([1, length(y)], [s_1 , s_1],'g')
m_wert = plot([1, length(y)], [m1 , m1],'c');
legend([mm s_abw m_wert],{'min-max Intervall', 'Standardabweichung','Mittelwert'},'Location','northeast')
hold off



