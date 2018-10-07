function [a,b] = fourieranalyse(fn,K)

if length(fn) < 2*K+1
    
    error('W�hlen Sie bitte ein kleineres K')
    
end


a_k = reshape(linspace(0,K,K+1),length(linspace(0,K,K+1)),1);
b_k = reshape(linspace(0,K,K+1),length(linspace(0,K,K+1)),1);
n = linspace(0,length(fn)-1,length(fn));

for i=1:length(a_k)
    
    a_k(i) = (2/length(fn))*dot(fn,reshape(cos((i-1)*2*pi*n/length(fn)),length(n),1));
   
    
end

b_k(1)=0;

for j = 2:length(b_k)
    
    b_k(j) = (2/length(fn))*dot(fn,reshape(sin((j-1)*2*pi*n/length(fn)),length(n),1));
    
end


a=a_k;
b=b_k;


end

