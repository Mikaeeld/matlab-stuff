function fitresult = fitGaussian(y)
%CREATEFIT(X2)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      Y Output: x2
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 31-May-2023 15:19:26


%% Fit: 'untitled fit 1'.
y = cast(y, 'double');
[xData, yData] = prepareCurveData( [], y );

% Set up fittype and options.
ft = fittype( 'gauss1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf -Inf 0];
opts.StartPoint = [1949946 330 113.032707628494];

% Fit model to data.
fitresult = fit( xData, yData, ft, opts );

% Plot fit with data.
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );
% legend( h, 'data', 'fit', 'Location', 'NorthEast', 'Interpreter', 'none' );
% % Label axes
% ylabel( 'data', 'Interpreter', 'none' );
% grid on


