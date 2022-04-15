% Weibull function
function out = weibull(x, k, lambda, g)

% ARGUMENTS
% x = value at which to calculate weibull
% k = shape parameter 
% lambda = scale parameter 
% g = chance performance

% Output
out = g + (1 - g).*(1 - exp(-(x./lambda).^k));

