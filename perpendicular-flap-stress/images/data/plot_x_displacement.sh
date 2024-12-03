#!/bin/bash

gnuplot << EOF
set terminal pngcairo enhanced size 1000,600
set output "x_displacement_vs_time.png"

set grid
set title "Perpendicular-flap G+Smo Elasticity Mesh Convergence Study"
set xlabel "Time (s)"
set ylabel "X-Displacement (m)"

# Specify the delimiter (adjust if your CSV uses something other than commas)
set datafile separator ","

# Plot data
plot \
    "pointData-r1.csv" every ::1 using 3:1 with lines title "Refinement=1", \
    "pointData-r2.csv" every ::1 using 3:1 with lines title "Refinement=2", \
    "pointData-r3.csv" every ::1 using 3:1 with lines title "Refinement=3"
EOF
