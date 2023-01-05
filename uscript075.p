
set terminal png size 800,700 font "Helvetica"

#set terminal postscript eps color colortext

set output 'u075_600.png'

set key left bottom

set xlabel "y/D" font "Helvetica,16"
set ylabel "u/u_{/Symbol \245}" offset 1,0 font "Helvetica,20"

set yrange[-0.4:1.3]
set xrange[-1:1]

plot "UMean_075_600.xy" u 1:($2/0.1183) title "URANS" w l lw 3 lc 3, \
     "u075Mod.dat" u 1:2 title "Modesti URANS" w l ls 3 lw 3 lc 1 , \
     "u075Cat.dat" u 1:2 title "Catalano URANS" w l ls 3 lw 3 lc 6 , \


