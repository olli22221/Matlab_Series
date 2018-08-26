function[mittel] = mittelwert(rel_h,werte)
result = 0;
for n = 1:length(werte)
    result = result+rel_h(n)*werte(n);
end
mittel = result;
