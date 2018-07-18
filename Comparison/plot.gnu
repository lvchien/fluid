path = "G:/FEM Code/Fluid/Navier-Stokes/results/Lid-driven/h19/1st_Rey100_dt0.01_T100"
set terminal postscript color enhanced "Times" 24
set linestyle  1 linetype 1 linecolor 1
set linestyle  2 pointtype 9 linecolor 2 pointsize 2
set linestyle  3 pointtype 7 linecolor 3 pointsize 1



set output path.'/xprof.ps'
set label "Re=10000" at 0.1,0.9
set xlabel "y"
set ylabel "U_x"
plot path."/xprof" u 1:2 title "present" linestyle 1, path."/xprof10000.ghia" u 1:2 title "Ghia et al" linestyle 2, path."/xprof10000.erturk" u 1:2 title "Erturk et al" linestyle 3

unset label

set output path.'/yprof.ps'
set label "Re=10000" at 0.1,-0.5
set xlabel "x"
set ylabel "U_y"
plot path."/yprof" u 1:2 title "present" linestyle 1, path."/yprof10000.ghia" u 1:2 title "Ghia et al" linestyle 2, path."/yprof10000.erturk" u 1:2 title "Erturk et al" linestyle 3



set output path.'/xprof.ps'
set label "Re=100" at 0.1,0.9
set xlabel "y"
set ylabel "U_x"
plot path."/xprof" u 1:2 title "present" linestyle 1, path."/xprof100.ghia" u 1:2 title "Ghia et al" linestyle 3

unset label

set output path.'/yprof.ps'
set label "Re=100" at 0.1,-0.5
set xlabel "x"
set ylabel "U_y"
plot path."/yprof" u 1:2 title "present" linestyle 1, path."/yprof100.ghia" u 1:2 title "Ghia et al" linestyle 3

