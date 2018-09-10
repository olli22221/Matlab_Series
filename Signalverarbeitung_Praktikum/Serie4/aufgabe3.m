k = [0:9];
m = [0:9];

t = [0:1/512:1-1/512];

O_e = zeros(length(k),length(m));

is_orthogonal = true;

for p=1:length(k)
    for q=1:length(m)
        
        O_e(p,q) = exp(j*k(p)*2*pi*t)*reshape(exp(-j*m(q)*2*pi*t),length(t),1);
        if p~=q
            if abs(O_e(p,q)) > 1e-13 
                
                is_orthogonal = false;

            end
        end
        
    end
end

if is_orthogonal == true
    
    disp('Funktionen sind orthogonal')

    else
    
    disp('Funktionen sind nicht orthogonal')
end

disp(O_e)