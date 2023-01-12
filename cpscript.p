
set terminal png size 800,700

#set terminal postscript eps color colortext

set output 'cp600.png'

set yrange[-3:1]

plot "p_600.dat" u 4:(($3-1)/(0.5*0.1183*0.1183)) title "URANS" w l lw 3 lc 6, \
     "cpuransMod.dat" u 1:2 title "Modesti URANS"  w l ls 3 lw 3 lc 1 , \
     "cpuransCat.dat" u 1:2 title "Catalano URANS" w l ls 3 lw 3 lc 4, \
     "cpLESCat.dat" u 1:2 title "LES" w l ls 3 lw 3 lc -1 
     
