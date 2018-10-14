
K = 250;
M = 20;
N = 4000;

for n=1:10
    
    r_imp = rechteckimpuls(K,M,N);
    
    if n <= 5
        M = M+50;
    
    else
        K = K+250;
    end
    
    r_fft = fft(r_imp);
    bin_vals = [0:length(r_imp)-1];
    
    
    subplot(2,2,1)
    plot(bin_vals,r_imp)
    title('Ausgangssignal');
    xlabel('Zeit')
    ylabel('Impulshöhe')
    
    subplot(2,2,2)
    plot(bin_vals,abs(r_fft))
    title('Spektrum des Signals in Betragsdarstellung');
    xlabel('Frequenz(in bins)')
    ylabel('Betrag')
    
    subplot(2,2,[3 4])
    plot(bin_vals,angle(r_fft))
    title('Spektrum des Signals in Winkeldarstellung');
    xlabel('Frequenz')
    ylabel('Winkelgröße')
    
    pause(5)
    if n == 5
        M = 250;
    end
end


