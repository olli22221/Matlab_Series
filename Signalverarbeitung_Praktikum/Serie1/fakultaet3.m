function y = fakultaet3(x)
if iscell(x) | x ~= round(x) 
    error("x must be a real non-negative integers");
end


v = 1 : x;
y = prod(v);

