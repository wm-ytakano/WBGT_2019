def main():
    amedasList = {
        "69122": "鳥取",
        "88317": "鹿児島",
        "66408": "岡山",
        "36126": "福島",
        "52586": "岐阜",
        "54232": "新潟",
        "42251": "前橋",
        "74181": "高知",
        "64036": "奈良",
        "74436": "佐賀",
    }

    with open("stat/wbgt_stat_2019.csv", "w") as fo:
        for amedas, name in amedasList.items():
            over28, over30, over31, over32 = sub(amedas)
            fo.write(f"{amedas},{name},{over28},{over30},{over31},{over32}\n")


def sub(amedas):
    over28 = 0
    over30 = 0
    over31 = 0
    over32 = 0
    with open(f"daily/wbgt_daily_{amedas}_2019.csv") as f:
        for line in f:
            cols = line.strip().split(",")
            wbgt = float(cols[1])
            if wbgt >= 28:
                over28 += 1
            if wbgt >= 30:
                over30 += 1
            if wbgt >= 31:
                over31 += 1
            if wbgt >= 32:
                over32 += 1
    return over28, over30, over31, over32


if __name__ == "__main__":
    main()
