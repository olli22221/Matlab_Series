function e2 = quaderror(f,fap)
if ~isvector(f) || ~isvector(fap)
    error("parameter is not a vector")
end
if size(f) ~= size(fap)
    error("vectors have are not having the same dimensions ")
end
sum_e = f-fap;
sum_e = sum_e.^2;
e2 = sum(sum_e);