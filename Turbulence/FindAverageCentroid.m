function [ rowCol, aveFrame, sumFrame ] = FindAverageCentroid(videoFrames)
%FINDAVERAGECENTROID Finds the overall centroid[row col] from the
%frames of the supplied frame matrix where frames are on the 3rd dimension.

numFrames = size(videoFrames,3);

sumFrame = sum(cast(videoFrames(:,:,1:numFrames), 'uint64'),3, 'native');

%for some reason the top row has shit on them. clear it
%s(1,1:5) = s(1,end);

aveFrame = sumFrame ./ numFrames;

rowCol = findCentroid(sumFrame);

end

