[x,y] = meshgrid(-5:.1:5);
z = exp(-x.^2-y.^2).*sin(x).*sin(y);
figure
contour(z,'ShowText','on')
xlabel('X')
ylabel('Y')