function [handle] = textitle(text,size)

% TEXTITEL  Set the title in latex math markup
%   H = textitle(text) sets the text
%   H = textitle(text,size) sets the text in a specific font size
%
%   See also TITLE

    if nargin < 1
        error('Function requires text argument.')
    end

    if nargin < 2
        size = 11;
    end

    h = title({['$' text '$']},...
    'FontUnits','points',...
    'interpreter','latex',...
    'FontSize',size,...
    'FontName','Times');

    if nargout > 0
        handle = h;
    end

end


