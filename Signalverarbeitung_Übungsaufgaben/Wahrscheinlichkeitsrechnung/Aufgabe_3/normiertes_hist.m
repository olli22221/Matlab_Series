function [wert,anzahl] = normiertes_hist(daten)

if isscalar(daten)
    value = [daten];
    number = 1;
    [anzahl,wert] = hist(value,number);
else
v = reshape(daten,1,numel(daten));
w = unique(v);
[anzahl,wert] = hist(v,w);
anzahl = anzahl/numel(daten);
end
    
end
