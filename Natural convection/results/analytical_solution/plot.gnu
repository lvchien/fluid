path = "G:/FEM Code/Fluid/Natural convection/results/analytical_solution"
set terminal postscript color enhanced "Times" 24

set logscale xy
set output path.'/h7_Pr1_P1b_P1_norm0.ps'
set xrange [1e-6:1e-2]
set yrange [1e-5:1e-2]

set xtics ('{10^{-6}}' 1e-6, '{10^{-5}}' 1e-5, '{10^{-4}}' 1e-4, '{10^{-3}}' 1e-3, '{10^{-2}}' 1e-2, '{10^{-1}}' 1e-1, '{1}'       1)
set ytics ('{10^{-6}}' 1e-6, '{10^{-5}}' 1e-5, '{10^{-4}}' 1e-4, '{10^{-3}}' 1e-3, '{10^{-2}}' 1e-2, '{10^{-1}}' 1e-1, '{1}'       1)

set style line 1 linetype 1 linecolor 1 linewidth 2 pointtype 5 pointsize 1
set style line 2 linetype 1 linecolor 2 linewidth 2 pointtype 7 pointsize 1.5

set xlabel "dt"
set ylabel "error"
plot path."/h7_Pr1_P1b_P1_norm0.txt" u 1:2 title "thermal" with linespoints ls 1, path."/h7_Pr1_P1b_P1_norm0.txt" u 1:3 title "velocity" with linespoints ls 2
