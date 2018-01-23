function [output] = stft(signal, window, windowShiftLength)

signalLength = size(signal);
if(length(signalLength) ~= 2 || min(signalLength) ~=1)
    error('Input signal must be a vector.');
end
signalLength = max(signalLength);

windowLength = size(window);
if(length(windowLength) ~= 2 || min(windowLength) ~=1)
    error('Window must be a vector.');
end
windowLength = max(windowLength);

if(windowLength >= signalLength)
   error('Signal length must be much larger than window length.') 
end

if(~isscalar(windowShiftLength) || floor(windowShiftLength) ~= windowShiftLength || windowShiftLength <= 0)
    error('Shift value between consecutive windows should be a positive scalar integer.')
end

if(windowShiftLength > windowLength)
    error('Shift between consecutive windows should at most be equal to window length.');
end

signal = reshape(signal, 1, signalLength);
window = reshape(window, 1, windowLength);

output = zeros(ceil(windowLength/2), ceil((signalLength-windowLength)/windowShiftLength));
for n = 1:windowShiftLength:signalLength-windowLength
    windowedSignal = signal(n:n+windowLength-1) .* window;
    fftWindowed = 10*log10(abs(fft(windowedSignal, windowLength)));
    idx = ceil(n/windowShiftLength);
    output(:,idx) = transpose(fftWindowed(1:ceil(windowLength/2)));
end
