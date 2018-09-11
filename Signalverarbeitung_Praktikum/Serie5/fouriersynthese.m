function y = fouriersynthese(N,ak,bk)

if length(ak)~=length(bk) && 2*(length(ak)-1)+1 > N
    
    error('Vectoren haben zu groﬂe Dimension ')
    
end

a_k = ak(2:length(ak));
b_k = bk(2:length(bk));

k = reshape(linspace(1,length(ak)-1,length(ak)-1),length(linspace(1,length(ak)-1,length(ak)-1)),1);

f_ap = zeros(N,1);

for j = 1:length(f_ap)
    
    f_ap(j) = ak(1)/2+sum(a_k.*cos(k*2*pi*j/N)+b_k.*sin(k*2*pi*j/N));
    
end

y = f_ap;


end