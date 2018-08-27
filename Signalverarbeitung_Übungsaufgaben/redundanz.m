function[red] = redundanz(rel_h)
h = entropie(rel_h);
h_max = max_entropie(rel_h);
r = h_max - h;
if r >0
    red = true;
else
    red = false;
end