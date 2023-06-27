function [beamWidth, FWHM, params] = findBeamWidth(intensity, startingPoint)
%findBeamWidth Fits a gaussian to a 1d intensity map and finds the 1/e^2
%value
%   Detailed explanation goes here
%https://www.mathworks.com/matlabcentral/answers/499451-gaussian-fit-to-xy-data-and-extracting-fwhm
if nargin > 1
    fit = fitGaussian(intensity, startingPoint);
else
    fit = fitGaussian(intensity);
end
params = coeffvalues(fit);

% Extract the standard deviation (sigma) from the parameter values
sigma = params(3)/sqrt(2);

% Calculate the 1/e^2 width
FWHM = 2 * sqrt(2 * log(2)) * sigma;

beamWidth = sqrt(2)/sqrt(log(2)) * FWHM;
end