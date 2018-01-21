fs = 48e3;          % Sampling frequency [Hz]
duration = 0.5;     % Signal length in [seconds]
frequency = 10e3;   % Signal frequency [Hz]
phase = 0;       % Signal phase at t = 0 [radian]
amplitude = 0.5;    %  Signal amplitude [V]

singleToneSignal = generateSinusoidalSignal(frequency, phase, amplitude, fs, duration);
linearChirpSignal = generateLinearChirpSignal(frequency, frequency*100, phase, amplitude, fs, duration);

windowName = 'hamming';
windowLength = 256;
shiftLength = 16;
singleToneSpectrogram = getSpectrogram(singleToneSignal, windowName, windowLength, shiftLength);
linearChirpSpectrogram = getSpectrogram(linearChirpSignal, windowName, windowLength, shiftLength);
plotSignalnSpectrogram(singleToneSignal, singleToneSpectrogram, fs, duration, windowLength, shiftLength); title('Single Tone Signal & Spectrogram')
plotSignalnSpectrogram(linearChirpSignal, linearChirpSpectrogram, fs, duration, windowLength, shiftLength); title('Linear Chirp Signal & Spectrogram')
