set termoption enhanced
set encoding iso_8859_1 
set border lw 1

#set key right bottom # below 
set key font ",30"
set tics font ", 30"
#set key spacing 1
set key samplen 2
set key left top #left box 1 
#set key width -1.8
#set logscale x
#set logscale y

set origin 0, 0

#set size 0.99, 1.06
#set y2tics 1
#set ytics 1
#set xtics 0.4
#set yrange[0.0:0.6]
#set xrange[0.7:2.15]
#set y2range[0:1.4]
# f(x) = m*x + b
#set ytics add ("1" 0.6)

set style line 1 lt 10 pt 13 ps 1.2 lc rgb "forest-green" lw 6
set style line 2 lt 5 pt 7 ps 1.2 lc rgb "blue" lw 6
set style line 3 lt 3 pt 9 ps 1.2 lc rgb "plum" lw 6
set style line 4 lt 4 pt 15 ps 1.2 lc rgb "skyblue" lw 6
set style line 5 lt 1 pt 13 ps 1.2 lc rgb "orange-red" lw 6



#rep 'tg_cal.dat' u 1:2 w lp ls 2 t 'calculated'
#set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
#set terminal postscript enhanced "Helvetica,30" color
#set output "xrd_tos.eps"
#rep
