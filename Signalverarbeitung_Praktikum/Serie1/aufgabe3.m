v1 = 20;
v2 = 30;

m = zeros(v1,v2);

for n=1:v1
    for k=1:v2
        m(n,k) = binomial(n-1,k-1);
    end
end
xlabel('n'), ylabel('k'), zlabel('binomial(n,k)')
surf(1:v1,1:v2,m');



