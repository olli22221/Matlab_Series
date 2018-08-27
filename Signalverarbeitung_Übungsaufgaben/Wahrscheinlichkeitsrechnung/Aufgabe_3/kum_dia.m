path('C:\Users\olli\Documents\MATLAB\Signalverarbeitung_Praktikum\Serie1',path); 
messwerte = [4 5 6 3 3 6 8];
[wert,anzahl] = haufigkeit(messwerte);
anzahl = anzahl/numel(messwerte);
anzahl = cumsum(anzahl);
bar(wert,anzahl);


        