function [output] = getSpectrogram(signal, windowName, windowLength, shiftLength)

switch windowName
    case 'hamming'
        window = hamming(windowLength);
    case 'blackman'
        window = blackman(windowLength);
    case 'hanning'
        window = hanning(windowLength);
    case 'tukey'
        window = tukeywin(windowLength);
    case 'triangular'
        window = triang(windowLength);
    case 'gaussian'
        window = gausswin(windowLength);
    case 'square'
    otherwise
        window = ones(windowLength, 1);
end

output = stft(signal, window, shiftLength);