function  plotSignalnSpectrogram(signal, spectrogram, fs, duration, windowLength, shiftLength)

signalLength = length(signal);
timeVector = (0:duration*fs) / fs;
[ax1Len , ax2Len] = size(spectrogram);
timeVector2 = 0:shiftLength/fs:(signalLength-windowLength-1)/fs;
ax1 = repmat(timeVector2, ax1Len, 1);
ax2 = repmat(((0:ax1Len-1)/ax1Len*fs)', 1, ax2Len);
figure,
subplot(2,1,1)
plot(timeVector, signal); xlabel('Time [seconds]'), ylabel('Magnitude [Volts]')
subplot(2,1,2)
surf(ax1, ax2/1e3, spectrogram, 'EdgeColor', 'none'), colormap parula; view(0, 90);
xlabel('Time [seconds]'), ylabel('Frequency [kHz]')
