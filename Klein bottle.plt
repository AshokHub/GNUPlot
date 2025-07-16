x(u,v)= v<pi ? (2.5-1.5*cos(v))*cos(u): \
        v<2*pi ? (2.5-1.5*cos(v))*cos(u):\
        v<3*pi ? -2+(2+cos(u))*cos(v): -2+2*cos(v)-cos(u)
y(u,v)= v<pi ? (2.5-1.5*cos(v))*sin(u): \
        v<2*pi ? (2.5-1.5*cos(v))*sin(u): \
        v<3*pi ? sin(u): sin(u)
z(u,v)= v<pi ? -2.5*sin(v): v < 2*pi ? 3*v-3*pi:\
        v<3*pi ? (2+cos(u))*sin(v)+3*pi: -3*v+12*pi
set parametric
set pm3d explicit
set pal rgb 9,9,3
unset colorbox
unset key
unset border
unset xtics
unset ytics
unset ztics
set hidden3d
set surface
set ticslevel 0
set size square
set view 60,210,1.5,1
set isosamples 18,48
set xrange[-8:10]
set yrange[-9:9]
set urange[0:2*pi]
set vrange[0:4*pi]
set term svg
set out "bottle.svg"
set multiplot
splot x(u,v),y(u,v),-z(u,v) w pm3d
splot x(u,v),y(u,v),-z(u,v) lt 4
unset multiplot