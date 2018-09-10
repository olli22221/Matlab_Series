function y = swalsys(k)

if log2(k) ~= round(log2(k))
    
    error('k is no two potency')
    
end

swal_functions = zeros(k);

for n = 1:k
    
    swal_functions(n,1:k) = swal(n-1,k);
    
end

y = swal_functions;

end