reset
set style fill solid border lc rgb "#333333"
set boxwidth 1
set datafile separator ","
set ylabel "2019年の日数"
plot "stat/wbgt_stat_2019.csv" using ($0*3+0):3:xtic(2) with boxes lw 1 lc rgb "#ffbea5" title "WBGT>=28",\
"stat/wbgt_stat_2019.csv" using ($0*3+1):5 with boxes lw 1 lc rgb "#f5a0be" title "WBGT>=31",\
# \
# "stat.csv" using ($0*4+1):3:xtic(2) with boxes lw 2 lc rgb "light-cyan" title "WBGT>30",\
# "stat.csv" using ($0*4+2):3 with boxes lw 2 lc rgb "light-cyan" title "WBGT>31"