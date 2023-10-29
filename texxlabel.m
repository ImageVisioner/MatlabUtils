function [handle] = texxlabel(text,size)

% TEXYLABEL  Set the X label in latex math markup
%   H = texxlabel(text) sets the text
%   H = texxlabel(text,size) sets the text in a specific font size
%
%   See also XLABEL

    if nargin < 1
        error('Function requires text argument.')
    end

    if nargin < 2
        size = 11;
    end

    h = xlabel({['$' text '$']},...
    'FontUnits','points',...
    'interpreter','latex',...
    'FontSize',size,...
    'FontName','Times');

    if nargout > 0
        handle = h;
    end

end


