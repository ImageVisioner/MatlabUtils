function [handle] = texzlabel(text,size)
% TEXZLABEL  Set the Z label in latex math markup
%   H = texzlabel(text) sets the text
%   H = texzlabel(text,size) sets the text in a specific font size
%
%   See also ZLABEL

    if nargin < 1
        error('Function requires text argument.')
    end

    if nargin < 2
        size = 11;
    end

    h = zlabel({['$' text '$']},...
    'FontUnits','points',...
    'interpreter','latex',...
    'FontSize',size,...
    'FontName','Times');
    

    if nargout > 0
        handle = h;
    end

end


