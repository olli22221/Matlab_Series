r_imp = rechteckimpuls(10,20,4000);

r_dct = dct(r_imp);

r_idct = idct(r_dct);

bin_vals = [0 : length(r_imp)-1];



subplot(2,2,1)
plot(bin_vals,r_imp)
title('Ausgangssignal');
xlabel('Zeit')
ylabel('Impulshöhe')

subplot(2,2,2)
plot(bin_vals,abs(r_dct))
title('Spektrum des Signals in Betragsdarstellung');
xlabel('Frequenz(in bins)')
ylabel('Betrag')

subplot(2,2,3)
plot(bin_vals,angle(r_dct))
title('Spektrum des Signals in Winkeldarstellung');
xlabel('Frequenz')
ylabel('Winkelgröße')

subplot(2,2,4)
plot(bin_vals,r_idct)
title('Zurückgewonnenes Signal');
xlabel('Zeit')
ylabel('Impulshöhe')
