using Plots
using DifferentialEquations

w = 3.0
g = 17.0
x₀ = 0.0
y₀ = -0.6


function ode_fn(du, u, p, t)
  x, y = u
  du[1] = u[2]
  du[2] = -(w*w)*u[1] - g*u[2] + 0.9*cos(10*t)
end

v₀ = [x₀, y₀]
tspan = (0.0, 77.0)
prob = ODEProblem(ode_fn, v₀, tspan)
sol = solve(prob, dtmax=0.05)

X = [u[1] for u in sol.u]
Y = [u[2] for u in sol.u]
T = [t for t in sol.t]
plt = plot(
           layout=(1,2),
           dpi=300,
           legend=false)

plot!(
      plt[1],
      T,
      X,
      title="Решение уравнения",
      color=:blue)

plot!(
      plt[2],
      X,
      Y,
      title="Фазовый портрет",
      color=:blue)

savefig(plt, "jl3.png")