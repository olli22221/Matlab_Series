function y = fakultaet1(x)
if iscell(x) | x ~= round(x) | ~isscalar(x)
    error("x must be a real non-negative integers");
end
value = 1;
for n = 1:x
    value = value*n;
end
y = value;