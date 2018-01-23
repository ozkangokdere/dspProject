function [myNewSignal, newSamplingRate] = decimateSoundSignalAndSave(signal, samplingRate, decimationFactor, saveFlag)
if nargin < 4
    saveFlag = false;
end

[myNewSignal, newSamplingRate] = decimateSignal(signal, samplingRate, decimationFactor);

if saveFlag
    newFilename = ['decimated_' filename];
    audiowrite(newFilename, myNewSignal, newSamplingRate);
end


