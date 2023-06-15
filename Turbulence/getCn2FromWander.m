function cn2 = getCn2FromWander(shortTerm, longTerm, linkLength, txRadius)
%GETCN@FROMWANDER Get the CN2 value
%   All inputs in meters
rc = sqrt(longTerm^2-shortTerm^2);
cn2 = (rc^2/(2.42*linkLength^3*(1/nthroot(txRadius, 3))));
end