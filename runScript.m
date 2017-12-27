fs = 48e3;          % Sampling frequency [Hz]
duration = 0.5;     % Signal length in [seconds]
frequency = 1e3;   % Signal frequency [Hz]
phase = pi/6;       % Signal phase at t = 0 [radian]
amplitude = 0.5;    %  Signal amplitude [V]

signal = generateSinusoidalSignal(frequency, phase, amplitude, fs, duration);

windowName = 'hamming';
windowLength = 256;
shiftLength = 16;
spectrogram = getSpectrogram(signal, windowName, windowLength, shiftLength);

plotSignalnSpectrogram(signal, spectrogram, fs, duration, windowLength, shiftLength);

