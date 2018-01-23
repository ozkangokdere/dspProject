function [signalLeft, signalRight, samplingFrequency, durationInSeconds] = readAudioSignal(fileName) 

[y, samplingFrequency] = audioread(fileName);
signalLeft = y(:,1);
signalRight = y(:,2);
durationInSeconds = length(signalLeft) / samplingFrequency;