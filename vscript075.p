
set terminal png size 800,700 font "Helvetica"

#set terminal postscript eps color colortext

set output 'v075_600.png'

set key left bottom

set xlabel "y/D" font "Helvetica,16"
set ylabel "v/u_{/Symbol \245}" offset 1,0 font "Helvetica,20"

set yrange[-0.4:0.4]
set xrange[-2:2]

plot "UMean_075_600.xy" u 1:($3/0.1183) title "URANS" w l lw 3 lc 3, \
     "v075Mod.dat" u 1:2 title "Modesti URANS" w l ls 3 lw 3 lc 1 , \
     "v075Cat.dat" u 1:2 title "Catalano URANS" w l ls 3 lw 3 lc 6 , \


