
% recorder = audiorecorder(44100,16,2);
% recorder.record
% recorder.stop
% recorder.play
% recordedData =  getaudiodata(recorder);

filename = 'hopi.wav';
decimationFactor = 10;
bitPerSample = 8;

[soundSignal, samplingRate] = audioread(filename);

[decimatedSignal, decimatedSamplingRate] = decimateSignal(soundSignal, samplingRate, decimationFactor);



[downSizedSignal, downSizedSamplingRate] = bitReduceSoundSignalAndSave(decimatedSignal, decimatedSamplingRate, bitPerSample);

sound(soundSignal, samplingRate);
pause(length(soundSignal(:,1))/samplingRate);
sound(decimatedSignal, decimatedSamplingRate);
pause(length(soundSignal(:,1))/samplingRate);
sound(downSizedSignal, downSizedSamplingRate);


