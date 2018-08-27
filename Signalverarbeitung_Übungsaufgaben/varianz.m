function[var] = varianz(rel_h,werte)
m = mittelwert(rel_h,werte);
for n =1:length(werte)
    werte(n) = (werte(n)-m)^2;
end
var = mittelwert(rel_h,werte);