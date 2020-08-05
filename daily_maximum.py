def main():
    for amedas in ["69122", "88317", "66408", "36126", "52586", "54232", "42251", "74181", "64036", "74436"]:
        sub(amedas)


def sub(amedas):
    dic = {}
    for month in range(5, 10+1):
        mm = str(month).zfill(2)
        with open(f"csv/final_wbgt_{amedas}_2019{mm}.csv") as f:
            f.readline()
            for line in f:
                cols = line.strip().split(",")
                date = cols[0]
                WBGT = float(cols[2])
                if not date in dic:
                    dic[date] = WBGT
                else:
                    dic[date] = max(dic[date], WBGT)
    with open(f"daily/wbgt_daily_{amedas}_2019.csv", "w") as fo:
        for date, WBGT in dic.items():
            fo.write(f"{date},{WBGT}\n")


if __name__ == "__main__":
    main()
