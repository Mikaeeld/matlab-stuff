function [widths] = findBeamWidths(frames)
%FINDBEAMWIDTHS Finds the widths of the given frames when sliced at their
%centroids
%   Detailed explanation goes here
centroids = findCentroid(frames);
widths = zeros(size(frames,3), 1);
%rowCoeffs = [1949946 330 113.032707628494];
%colCoeffs = [1949946 330 113.032707628494];
for x= 1:size(frames,3)
    row = frames(centroids(1,1,x),:,x);
    col = frames(:,centroids(1,2,x),x);
    [rowWidth, ~, rowCoeffs] = findBeamWidth(row);
    [colWidth, ~, colCoeffs] = findBeamWidth(col);
    widths(x) = (rowWidth + colWidth)/2;
end
end

