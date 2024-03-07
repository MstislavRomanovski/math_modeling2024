model lab51
  Real a = 0.48;
  Real b = 0.52;
  Real c = 0.053;
  Real d = 0.048;
  Real x;
  Real y;

initial equation
  x = 6;
  y = 21;
equation
  der(x) = -a*x + c*x*y;
  der(y) = b*y - d*x*y;
  annotation(
    experiment(StartTime = 0, StopTime = 60, Tolerance = 1e-06, Interval = 0.05));
end lab51;
