function [output] = generateSinusoidalSignal(frequency, phase, amplitude, samplingFrequency, duration)

timeVector = (0:duration*samplingFrequency) / samplingFrequency;

output = amplitude*cos(2*pi*frequency*timeVector+phase);