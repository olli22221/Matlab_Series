function y = fakultaet2(x)
if iscell(x) | x ~= round(x) 
    error("x must be a real non-negative integers");
end
if x == 0
    y = 1;
else
    y =  x*fakultaet2(x-1);
end
