#> hd.prkr:lib/rand/
#
# 疑似乱数
#
# @within function prkr:**

##
	scoreboard players operation $Rand.Current HdP.Global *= $HdP.Const.31743 HdP.Const
	scoreboard players operation $Rand.Current HdP.Global += $Rand.Carry HdP.Global
	scoreboard players operation $Rand.Carry HdP.Global = $Rand.Current HdP.Global
	scoreboard players operation $Rand.Current HdP.Global %= $HdP.Const.2^16 HdP.Const
	scoreboard players operation $Rand.Carry HdP.Global /= $HdP.Const.2^16 HdP.Const
## 値を取得
	scoreboard players get $Rand.Carry HdP.Global
