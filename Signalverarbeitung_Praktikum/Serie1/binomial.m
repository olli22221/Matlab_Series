function y = binomial(n,k)

if nargin ~= 2 
    y=0;
    error("This function needs two parameters")
end
if  ~isreal(n)
    y=0;
    error("n must be a real number")
end
if iscell(k) | k ~= floor(k) 
    y=0;
    error("k must be a real non-negative integers");
end
if isscalar(n) && isscalar(k)
    if k == 0
        y = 1;
   
    else
        fak = fakultaet3(k);
        y = (prod(n:k+1)*(n-k+1))/fak;
    end
    
end




