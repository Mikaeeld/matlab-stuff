function rytov = getRytovVariance(Cn2, wavelength, linkLength)
%GETRYTOVVARIANCE Summary of this function goes here
%   Detailed explanation goes here
rytov = 1.23*Cn2*(2*pi/wavelength)^(7/6)*linkLength^(11/6);
end

