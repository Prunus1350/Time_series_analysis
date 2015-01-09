load("data/.RData")


# 図2-1 株価の時系列プロット
attach(price4)
par(mfcol=c(2, 2))
plot(x5202, type="l", main="板硝子")
plot(x4927, type="l", main="ポーラHD")
plot(x7272, type="l", main="ヤマハ")
plot(x4502, type="l", main="武田薬品")
detach(2)


# 図2-2 株価(割合)の時系列プロット
attach(price4)
par(mfcol=c(2, 2))
plot(x5202/x5202[1], type="l", main="板硝子")
plot(x4927/x4927[1], type="l", main="ポーラHD")
plot(x7272/x7272[1], type="l", main="ヤマハ")
plot(x4502/x4502[1], type="l", main="武田薬品")
detach(2)


# 図2-3 4銘柄の収益率の時系列プロット
attach(price4)
par(mfcol=c(2, 2))
plot(diff(log(x5202))*100, type="l", main="板硝子",   xlab="Time", ylab="x5202", ylim=range(diff(log(x5202))*100))
plot(diff(log(x4927))*100, type="l", main="ポーラHD", xlab="Time", ylab="x4927", ylim=range(diff(log(x5202))*100))
plot(diff(log(x7272))*100, type="l", main="ヤマハ",   xlab="Time", ylab="x7272", ylim=range(diff(log(x5202))*100))
plot(diff(log(x4502))*100, type="l", main="武田薬品", xlab="Time", ylab="x4502", ylim=range(diff(log(x5202))*100))
detach(2)


# 図2-4 4銘柄の収益率の時系列プロット(縦軸調整)
attach(price4)
par(mfcol=c(2, 2))
plot(diff(log(x5202))*100, type="l", main="板硝子",   xlab="Time", ylab="x5202")
plot(diff(log(x4927))*100, type="l", main="ポーラHD", xlab="Time", ylab="x4927")
plot(diff(log(x7272))*100, type="l", main="ヤマハ",   xlab="Time", ylab="x7272")
plot(diff(log(x4502))*100, type="l", main="武田薬品", xlab="Time", ylab="x4502")
detach(2)
