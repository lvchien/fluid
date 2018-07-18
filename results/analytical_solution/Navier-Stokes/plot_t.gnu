path = "G:/FEM Code/Fluid/Navier-Stokes/results/analytical_solution"
set terminal postscript color enhanced "Times" 18

set logscale xy
set output path.'/convergence_by_t.ps'
set xrange [1e-7:1e-3]
set yrange [1e-5:1e-2]

set xtics ('{10^{-7}}' 1e-7, '{10^{-6}}' 1e-6, '{10^{-5}}' 1e-5, '{10^{-4}}' 1e-4, '{10^{-3}}' 1e-3, '{10^{-2}}' 1e-2, '{10^{-1}}' 1e-1, '{1}'       1, '{10}' 10)
set ytics ('{10^{-7}}' 1e-7, '{10^{-6}}' 1e-6, '{10^{-5}}' 1e-5, '{10^{-4}}' 1e-4, '{10^{-3}}' 1e-3, '{10^{-2}}' 1e-2, '{10^{-1}}' 1e-1, '{1}'       1, '{10}' 10)

set style line 1 linetype 1 linecolor rgb "green" linewidth 2 pointtype 7 pointsize 0.7
set style line 2 linetype 1 linecolor rgb "red" linewidth 2 pointtype 7 pointsize 0.7
set style line 3 linetype 1 linecolor rgb "magenta" linewidth 2 pointtype 7 pointsize 0.7
set style line 4 linetype 1 linecolor rgb "blue" linewidth 2 pointtype 7 pointsize 0.7

set xlabel "dt"
set ylabel "error"

set multiplot
set key box
set key left top

plot path."/convergence_by_t.txt" u 1:10 title "{h=1/16}" with linespoints ls 1, path."/convergence_by_t.txt" u 1:11 title "{h=1/32}" with linespoints ls 2

set key right top
plot path."/convergence_by_t.txt" u 1:12 title '{h=1/64}' with linespoints ls 3, path."/convergence_by_t.txt" u 1:13 title "{h=1/128}" with linespoints ls 4
# plot path."/convergence_by_t.txt" u 1:2 title "{h=1/4}", path."/convergence_by_t.txt" u 1:3 title "{h=1/8}", path."/convergence_by_t.txt" u 1:4 title "{h=1/16}" , path."/convergence_by_t.txt" u 1:5 title "{h=1/32}", path."/convergence_by_t.txt" u 1:6 title "{h=1/64}", path."/convergence_by_t.txt" u 1:7 title "{h=1/128}"

unset multiplot