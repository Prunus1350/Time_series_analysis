load("data/.RData")


# 表2-1 4銘柄の収益率の平均
attach(return4)
mean(x5202)
mean(x4927)
mean(x7272)
mean(x4502)
detach(2)


# 表2-2 4銘柄のボラティリティ
attach(return4)
sd(x5202)
sd(x4927)
sd(x7272)
sd(x4502)
detach(2)


# 図2-6 4銘柄の収益率のヒストグラム
attach(return4)
hist(x5202, main="板硝子",   breaks=-10:10*5/3)
hist(x4927, main="ポーラHD", breaks=-10:10*5/3)
hist(x7272, main="ヤマハ",   breaks=-10:10*5/3)
hist(x4502, main="武田薬品", breaks=-10:10*5/3)
detach(2)



