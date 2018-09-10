function y = swal(k,m)

k_bin = dec2bin(k)-'0';

start_e = [1];

for n=1:length(k_bin)
    
    if k_bin(n) == 0
        
        start_new = [start_e fliplr(start_e)];
        start_e = start_new;
        
    end
    
    if k_bin(n) == 1
        
        start_new = [start_e -fliplr(start_e)];
        start_e = start_new;
        
    end
    
end

fill_gaps = m/length(start_e);
swal_arr = [];
for n = 1:length(start_e)
    
    swal_tmp = start_e(n)*ones(1,fill_gaps);
    
    swal_arr = cat(2,swal_arr,swal_tmp);
    
end
y = swal_arr;


end