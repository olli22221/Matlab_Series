[gdur_wav, Fs] =  audioread('gdur.wav');

fft_gdur_wav = fft(gdur_wav);

len = length(fft_gdur_wav) /2;
fq = 0:len-1;
fq = fq * Fs / length(fft_gdur_wav);

hz_start = find(99.9000 < fq & fq < 100.0001);
hz_end = find(999.9999 < fq &  fq < 1000.1000 );

hz_axis = fq(hz_start:hz_end);



plot(hz_axis,abs(fft_gdur_wav(hz_start:hz_end)));

xlabel('Frequenz in Hz')
ylabel('Betragsspektrum')
xlim([100 1000])

pause(5)


t_num = (0:length(gdur_wav)-1) / Fs;

plot(t_num, gdur_wav)

[pks, loc] = findpeaks(gdur_wav, 'MinPeakHeight', 0.21, 'MinPeakDistance', 8192); 
hold on
plot(loc/Fs,0,'r*')

pause(5)


