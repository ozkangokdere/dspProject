function [outSignal, samplingRate]= bitReduceSoundSignalAndSave(signal, samplingRate, howManyBitsPerSample)
filename = [num2str(howManyBitsPerSample), 'bps_sound.wav'];
audiowrite(filename, signal, samplingRate,  'BitsPerSample', howManyBitsPerSample);
[outSignal, samplingRate] = audioread(filename);
