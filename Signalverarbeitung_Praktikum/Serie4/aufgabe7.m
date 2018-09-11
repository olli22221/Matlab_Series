k=[0:15];
m=[0:15];

O_w = zeros(length(k),length(m));

is_orthogonal = true;

for i = 1:length(k)
    for j = 1:length(m)
        
        O_w(i,j) = swal(k(i),length(k))*reshape(swal(m(j),length(m)),length(m),1);
       
        if i ~= j
            
            if abs(O_w(i,j))  > 1e-12
                is_orthogonal = false;
            end
        end
        
    end
end

if is_orthogonal
    
    disp('Die Funktionen sind orthogonal zueinander')
    
else
    
    disp('Die Funktionen sind nicht orthogonal zueinander')
end

disp(O_w)