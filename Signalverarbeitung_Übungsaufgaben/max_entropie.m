function[e_max] = max_entropie(rel_h)
result = 0;
for n = 1:length(rel_h)
    result = result + 1/length(rel_h)*log2(length(rel_h));
end
e_max = result;