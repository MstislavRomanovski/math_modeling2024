model lab3 "Battle between forces"
parameter Integer x0 = 500000;
parameter Integer y0 = 500000;
parameter Real a = 0.45;
parameter Real b = 0.86;
parameter Real c = 0.73;
parameter Real h = 0.49;
Real P;
Real Q;
Real x(start=x0);
Real y(start=y0);
equation
P = sin(time + 1);
Q = sin(time + 2);
der(x) = - a * x - b * y + P;
der(y) = - c * x - h * y + Q;
end lab3;