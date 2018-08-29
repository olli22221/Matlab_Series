path('C:\Users\olli\Documents\MATLAB\Signalverarbeitung_Praktikum\Serie1',path); 
f_id = fopen('shake.txt','r');
if f_id == -1
    error('Could not open the file');
end
data = fread(f_id);
fclose(f_id);
data = reshape(data,1,length(data));
[ascii_wert,anz] = haufigkeit(data);
rel_h = anz/length(data);
entropie = 0;

for n = 1:length(rel_h)
    entropie = entropie + 1/256*log2(256);
end

max_entropie = 0;

for n = 1:length(rel_h)
    max_entropie = max_entropie + (1/length(rel_h))*log2(length(rel_h));
end

redundanz = max_entropie - entropie;
%entropie = dec2bin(entropie,64);
%max_entropie =dec2bin(max_entropie,64);
%redundanz = dec2bin(redundanz,64);

%ausgabe1 = ['Entropie beträgt:',entropie];
%ausgabe2 = ['Maximale Entropie beträgt',max_entropie];
%ausgabe3 = ['Redundanz beträgt',redundanz];

disp(entropie)
disp(max_entropie)
disp(redundanz)




