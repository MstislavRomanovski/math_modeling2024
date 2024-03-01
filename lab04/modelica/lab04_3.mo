model lab43
Real x;
Real y;
Real w = 3.0;
Real g = 17.0;
Real t = time;
initial equation
x = 0.0;
y = -0.6;
equation
der(x) = y;
der(y) = -(w*w)*x - g*y + 0.9*sin(10*t);
end lab43;