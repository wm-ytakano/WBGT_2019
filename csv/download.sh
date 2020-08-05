#!/bin/bash

download_amedas() {
    amedas=$1
    for mm in `seq -w 5 10`; do
        wget https://www.wbgt.env.go.jp/mntr/final/2019/wbgt_2019/final_wbgt_${amedas}_2019${mm}.csv
    done
}

download_amedas 69122 # 鳥取
download_amedas 88317 # 鹿児島
download_amedas 66408 # 岡山
download_amedas 36126 # 福島
download_amedas 52586 # 岐阜
download_amedas 54232 # 新潟
download_amedas 42251 # 群馬(前橋)
download_amedas 74181 # 高知
download_amedas 64036 # 奈良
download_amedas 74436 # 佐賀
