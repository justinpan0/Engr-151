[x,y] = meshgrid(-5:.25:5);
z = exp(-x.^2-y.^2).*sin(x).*sin(y);
figure
surf(z)
xlabel('X')
ylabel('Y')
zlabel('Z')