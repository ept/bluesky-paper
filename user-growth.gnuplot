set encoding utf8
set terminal postscript eps size 4,2.5 enhanced color
set output '| ps2pdf -dEPSCrop - user-growth.pdf'
set datafile separator ","
set key autotitle columnhead
set key off
set decimalsign locale "en_US"
set format "%'.0f"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%b %Y"
set xrange ['2023-04-01 00:00:00':'2024-01-11 00:00:00']
set yrange [0:3100000]
set xtics ( \
  '' '2023-04-01 00:00:00', \
     '2023-05-01 00:00:00', \
  '' '2023-06-01 00:00:00', \
     '2023-07-01 00:00:00', \
  '' '2023-08-01 00:00:00', \
     '2023-09-01 00:00:00', \
  '' '2023-10-01 00:00:00', \
     '2023-11-01 00:00:00', \
  '' '2023-12-01 00:00:00', \
     '2024-01-01 00:00:00')
set grid linecolor rgb '#dddddd' linetype 1
set style line 1 linewidth 3.5 linecolor rgb '#0077BB' pointsize 1.3 pointtype 1
plot 'growth-by-day.csv' using 1:2 with lines linestyle 1
