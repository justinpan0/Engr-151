function [x,y,z] = lab12_zmpan_2(x0, y0, z0, vx, vy, v0z)
    g = 9.8;
    t = 0:0.25:10;
    x = x0.*t + vx.*t.^2/2;  
    y = y0.*t + vy.*t.^2/2;
    z = z0.*t + v0z.*t.^2/2-g*t.^3/6;

    m = input('Do you want to continue, Y/N [Y]:','s');
    if m=='y'|| m=='Y'
        figure
        plot3(x,y,z,'-o')
        grid on
    end
end