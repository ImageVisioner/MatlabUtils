% 创建一个3D曲面图
[X,Y,Z] = peaks;
figure,surf(X,Y,Z)


% texzlabel('z_{label}',15)
% 设置带有复杂LaTeX公式的Z轴标签
h=texzlabel('\frac{a_{1}}{a_{2}} = \sqrt{b_{1}^{n}}', 25);
fig2eps(h)

