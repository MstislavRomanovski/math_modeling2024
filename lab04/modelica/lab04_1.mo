model lab41
Real x;
Real y;
Real w = 30.0;
Real g = 0.0;
Real t = time;
initial equation
x = 0.0;
y = -0.6;
equation
der(x) = y;
der(y) = -(w*w)*x - g*y;
end lab41;