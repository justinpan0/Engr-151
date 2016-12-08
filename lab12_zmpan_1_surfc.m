[x,y] = meshgrid(-5:.2:5);
z = exp(-x.^2-y.^2).*sin(x).*sin(y);
figure
surfc(z)
xlabel('X')
ylabel('Y')
zlabel('Z')