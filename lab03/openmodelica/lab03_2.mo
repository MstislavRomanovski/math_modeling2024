model lab3 "Battle between forces"
parameter Integer x0 = 500000;
parameter Integer y0 = 500000;
parameter Real a = 0.17;
parameter Real b = 0.65;
parameter Real c = 0.28;
parameter Real h = 0.31;
Real P;
Real Q;
Real x(start=x0);
Real y(start=y0);
equation
P = sin(2*time);
Q = sin(time);
der(x) = - a * x - b * y + P + 2;
der(y) = - c * x * y - h * y + Q + 2;
end lab3;