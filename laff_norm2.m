function [ alpha ] = laff_norm2( x )
%LAFF_NORM2 -
%   alpha = norm( x ) computes the length of vector x

% Make sure x is a row or column vector
if ~isvector( x )
    alpha = 'FAILED';
    return
end

alpha = sqrt( laff_dot( x, x ) );

end