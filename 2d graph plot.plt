set title '{/Times-New-Roman=14:Bold Potential Energy Plot}' tc rgb '#167116'
set xlabel '{/Arial:Italic Number of steps}' tc rgb 'red'
set ylabel '{/Arial:Italic Potential energy}' tc rgb 'red'
set style line 1 lt 1 lc rgb '#f70453' lw 0.5
set grid layerdefault lt 0 lc rgb 'blue' lw 0.5
set border lt 1 lc rgb 'blue' lw 1
unset key
plot 'PE.txt' with lines ls 1
set xrange [GPVAL_DATA_X_MIN-0.5:GPVAL_DATA_X_MAX+0.5]
set yrange [*:*]
replot