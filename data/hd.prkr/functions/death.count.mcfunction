#> hd.prkr:death.count
#
# 死んだら
#
# @within function hd.prkr:tick

## リセットタグを追加
	execute if entity @s[nbt={DeathTime:0s}] run tag @s add HdP.Reset
## スコアをリセット
	scoreboard players reset @s HdP.DeathCount
