path = "G:/Navier Stokes by characteristic method/code/resu/Liddriven/h25/DC1st_Rey10000_dt0.01_T200"
set terminal postscript color enhanced "Times" 24
set linestyle  1 linetype 1 linecolor 1
set linestyle  2 pointtype 9 linecolor 2 pointsize 2
set linestyle  3 pointtype 7 linecolor 3 pointsize 1



set output path.'/xprof_R10000_T200_dt0.01.ps'
set label "Re=10000" at 0.1,0.9
set xlabel "y"
set ylabel "U_x"
plot path."/xprof_R10000_T200_dt0.01" u 1:2 title "present" linestyle 1, path."/xprof10000.ghia" u 1:2 title "Ghia et al" linestyle 2, path."/xprof10000.erturk" u 1:2 title "Erturk et al" linestyle 3

unset label

set output path.'/yprof_R10000_T200_dt0.01.ps'
set label "Re=10000" at 0.1,-0.5
set xlabel "x"
set ylabel "U_y"
plot path."/yprof_R10000_T200_dt0.01" u 1:2 title "present" linestyle 1, path."/yprof10000.ghia" u 1:2 title "Ghia et al" linestyle 2, path."/yprof10000.erturk" u 1:2 title "Erturk et al" linestyle 3



set output path.'/xprof_R20000_T250_dt0.01.ps'
set label "Re=20000" at 0.1,0.9
set xlabel "y"
set ylabel "U_x"
plot path."/xprof_R20000_T250_dt0.01" u 1:2 title "present" linestyle 1, path."/xprof20000.erturk" u 1:2 title "Erturk et al" linestyle 3

unset label

set output path.'/yprof_R20000_T250_dt0.01.ps'
set label "Re=20000" at 0.1,-0.5
set xlabel "x"
set ylabel "U_y"
plot path."/yprof_R20000_T250_dt0.01" u 1:2 title "present" linestyle 1, path."/yprof20000.erturk" u 1:2 title "Erturk et al" linestyle 3

