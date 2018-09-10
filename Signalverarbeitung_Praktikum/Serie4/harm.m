function y = harm(k,t)
    harm_matrix = zeros(length(k),length(t));
    
    for m = 1:length(k)
        for n = 1:length(t)
            harm_matrix(m,n) = exp(j*k(m)*2*pi*t(n));
        end
    end
    
    y = harm_matrix;
    
end

