function[modalwert] = modal(rel_h, werte)
[max_value,index] = max(rel_h(:));
modalwert = werte(index);
