function [handle] = texylabel(text,size)
% TEXYLABEL  Set the Y label in latex math markup
%   H = texylabel(text) sets the text
%   H = texylabel(text,size) sets the text in a specific font size
%
%   See also YLABEL

    if nargin < 1
        error('Function requires text argument.')
    end

    if nargin < 2
        size = 11;
    end

    h = ylabel({['$' text '$']},...
    'FontUnits','points',...
    'interpreter','latex',...
    'FontSize',size,...
    'FontName','Times');

    if nargout > 0
        handle = h;
    end

end


