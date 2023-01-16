
set terminal png size 1000,900

#set terminal postscript eps color colortext

set output 'cp_-5.png'

set key right top

set xlabel "x/c" font "Helvetica,20"
set ylabel "C_p" offset 1,0 font "Helvetica,20"

set yrange[-4:1.1]
set xrange[0:1.1]

set grid

plot "cp_-5.xy" u 1:(($4-1)/(0.5*0.4361*0.4361)) title "OpenFOAM" w l ls 7 lw 2 , \
     "origfoilCP_-5.txt" u 1:2 title "Xfoil" w l ls -1 lw 2 dt 2 , \
     
