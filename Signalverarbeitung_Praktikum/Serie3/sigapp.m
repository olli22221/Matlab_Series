function c = sigapp(x,y,f)
if nargin - 2 < 0
    error('This function needs a minimum of one approximation function as parameter')
    
end

sig_matrix = zeros(length(f));

for i = 1:length(sig_matrix)
    for j = 1:length(sig_matrix)
        sig_matrix(i,j) = sig_matrix(i,j) + sum((f{i}(x).*f{j}(x)));
    end
end

sig_vector = zeros(length(f),1);
for n = 1:length(f)
    sig_vector(n) = sum(y.*f{n}(x));
end

c = sig_matrix \ sig_vector;
end



        
         