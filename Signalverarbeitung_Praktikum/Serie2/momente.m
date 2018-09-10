function[m1,m2,z2,z3,z4] = momente(daten)

if ~isreal(daten)
    error('Es dürfen keine komplexen Zahlen enthalten sein');
end
if isstring(daten)
    error('Es dürfen keine Strings enthalten sein')
end
daten =reshape(daten,1,numel(daten));
daten_quad = power(daten,2);
m1 = 1/numel(daten)*sum(daten);
m2 = 1/numel(daten)*sum(daten_quad);

z2 = var(daten);
z3 = mean(power(daten-mean(daten),3));
z4 = mean(power(daten-mean(daten),4));
end

