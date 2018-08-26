function [wert,anzahl] = haufigkeit(daten)

if isscalar(daten)
    value = [daten];
    number = 1;
    [anzahl,wert] = hist(value,number);
else
v = reshape(daten,1,numel(daten));
w = unique(v);
[anzahl,wert] = hist(v,w);
end
    
end

        
    
    

