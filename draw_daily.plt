set datafile separator ","
set xdata time
set timefmt "%Y/%m/%d"
set xlabel "日最高WBGT"
set xrange ["2019/5/1":"2019/10/1"]
set key left bottom
plot \
"daily/wbgt_daily_69122_2019.csv" using 1:2 lw 2 lc rgb "#666666" with lines title "鳥取",\
33 with lines lc rgb "#770033" title "極めて危険",\
31 with lines lc rgb "#cc0066" title "危険",\
28 with lines lc rgb "#ff1100" title "厳重警戒"
# "daily/wbgt_daily_88317_2019.csv" using 1:2 with lines title "鹿児島",\
# "daily/wbgt_daily_66408_2019.csv" using 1:2 with lines title "岡山",\
# "daily/wbgt_daily_36126_2019.csv" using 1:2 with lines title "福島",\
# "daily/wbgt_daily_52586_2019.csv" using 1:2 with lines title "岐阜",\
# "daily/wbgt_daily_54232_2019.csv" using 1:2 with lines title "新潟",\
# "daily/wbgt_daily_42251_2019.csv" using 1:2 with lines title "群馬(前橋)",\
# "daily/wbgt_daily_74181_2019.csv" using 1:2 with lines title "高知",\
# "daily/wbgt_daily_64036_2019.csv" using 1:2 with lines title "奈良",\
# "daily/wbgt_daily_74436_2019.csv" using 1:2 with lines title "佐賀"
