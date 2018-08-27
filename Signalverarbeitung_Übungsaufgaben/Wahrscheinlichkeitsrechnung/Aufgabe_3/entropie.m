function [e] = entropie(rel_h)
result = 0;
for n = 1:length(rel_h)
    result = result + rel_h(n)*log2(1/rel_h(n));
end
e = result;
