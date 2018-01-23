function [outputSignal, outputSamplingFreq] = decimateSignal(inputSignal, samplingFreq, decimationFactor)
len = length(inputSignal);
indiceVector = 1:len;
if(floor(decimationFactor) ~= decimationFactor)
    error('Decimation Faction ')
end
mapper = mod(indiceVector, decimationFactor);
mapperLogic = mapper > 0;
inputSignal(mapperLogic, :) = [];
outputSignal = inputSignal;
outputSamplingFreq = samplingFreq / decimationFactor;