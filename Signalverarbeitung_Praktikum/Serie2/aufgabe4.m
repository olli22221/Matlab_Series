path('C:\Users\olli\Documents\MATLAB\Signalverarbeitung_Praktikum\Serie1',path); 
[y1,y1_anz] = haufigkeit(wuerfelbecher(5, 666, 7));
[y2,y2_anz] = haufigkeit(wuerfelbecher(5, 66666, 7));
[y3,y3_anz] = haufigkeit(wuerfelbecher(5, 6666666, 7));


subplot(1,3,1)
bar(y1,y1_anz)
ylabel('Anzahl');
xlabel('Augensumme');

subplot(1,3,2)
bar(y2,y2_anz)
ylabel('Anzahl');
xlabel('Augensumme');

subplot(1,3,3)
bar(y3,y3_anz)
ylabel('Anzahl');
xlabel('Augensumme');
