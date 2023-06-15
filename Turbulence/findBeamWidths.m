function [widths] = findBeamWidths(frames)
%FINDBEAMWIDTHS Finds the widths of the given frames when sliced at their
%centroids
%   Detailed explanation goes here
centroids = findCentroid(frames);
widths = zeros(size(frames,3), 1);
for x= 1:size(frames,3)
    row = frames(centroids(1,1,x),:,x);
    col = frames(:,centroids(1,2,x),x);
    widths(x) = ((findBeamWidth(row) + findBeamWidth(col))/2);
end
end

