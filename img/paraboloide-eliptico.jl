using CairoMakie    
graphictype = "pdf"
CairoMakie.activate!(type = graphictype)
myblue = RGBf(0.067,0.529,0.871)
myred = RGBf(1.0, 0.13, 0.32)

# Define the grid
xs = range(-3, 3, 600)
ys = range(-2, 2, 400)
f(x, y) = x^2 / 9 + y^2 / 4
zs = [(x^2 / 9 + y^2 / 4) <= 1 ? (x^2 / 9 + y^2 / 4) : NaN for x in xs, y in ys]

fig = Figure()
ax = Axis3(fig[1,1], 
    xlabel = L"$x$", ylabel = L"$y$", zlabel = L"$z$", azimuth= -pi/2.5, aspect = (1, 1, 0.5))
zlims!(ax, 0, 1)

# Plot the surface
surface!(ax, xs, ys, zs, color = :blue, transparency = true)
arrows!(ax, [Point3(0, 0, 1)], [Point3(3, 0, 0), Point3(0,2,0)], color = :gray, linewidth = 0.01, arrowsize = 0, fxaa=true)
ts = range(0, 2pi, 100)
f(t) = [3cos(t), 2sin(t), 1]
points = Point3.(f.(ts))
lines!(ax, points, linewidth = 4)
text!(ax, Point3(1.5, 0, 1), text = L"$a=3$", fontsize = 24)
text!(ax, Point3(0.2, 1, 1), text = L"$b=2$", fontsize = 24)
# Display the figure
save("img/paraboloide-eliptico." * graphictype, fig, pt_per_unit = 1)

fig
