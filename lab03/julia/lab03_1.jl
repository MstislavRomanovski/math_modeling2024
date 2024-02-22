using Plots
using DifferentialEquations
#X army quantity
x0 = 500000
#Y army quantity
y0 = 500000

a = 0.45 # army X casualties factor
b = 0.86 # Y army efficiency
c = 0.73 # X army efficiency
h = 0.49 # army Y casualties factor

p = (a, b, c, h)
quantity = [x0,y0] 

P(t) = sin(t+1)
Q(t) = cos(t+2)

#differential system
function rr_warfare(dF,u,p,t)
    a, b, c, h = p
    dF[1] = -a * u[1] - b * u[2] + P(t) 
    dF[2] = -c * u[1] - h * u[2] + Q(t)
end

v0 = [0,4]

problem = ODEProblem(rr_warfare,quantity,v0,p)
solution = solve(problem)

A1 = [u[1] for u in solution.u]
A2 = [u[2] for u in solution.u]
T1 = [t for t in solution.t]


plt1 = plot(dpi = 300, legend= true, bg =:white)
plot!(plt1, xlabel="Время", ylabel="Численность", title="Модель боевых действий - Регулярные армии", legend=:outerbottom)
plot!(plt1, T1, A1, label="Численность армии X", color =:red)
plot!(plt1, T1, A2, label="Численность армии Y", color =:green)
savefig(plt1, "lab03_1.png")