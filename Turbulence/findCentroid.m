function [rowCols] = findCentroid(frames)
%FINDCENTROID Finds the centroids of the given frames
%   Detailed explanation goes here
rowCols = zeros(1,2,size(frames,3));
for frameIndex = 1:size(frames,3)
    cols = sum(frames(:,:,frameIndex));
    rows = sum(frames(:,:,frameIndex), 2);
    total = sum(cols);
    cumSum = 0;
    for i = 1:size(rows)
        rowCols(1,1,frameIndex) = i;
        cumSum = cumSum + rows(i);
        if cumSum > total/2
            break
        end
    end
    cumSum = 0;
    for j = 1:size(cols, 2)
        rowCols(1,2,frameIndex) = j;
        cumSum = cumSum + cols(j);
        if cumSum > total/2
            break
        end
    end
end
end