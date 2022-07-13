#> hd.prkr:coas/reset.areas/replace
#
# ブロックを置き換える
#
# @within function hd.prkr:coas/reset.areas/pos/3

## 可視化
	execute if score @s HdP.COAS.Stat matches 20 run function hd.prkr:coas/reset.areas/visible
## 不可視化
	execute if score @s HdP.COAS.Stat matches 21 run function hd.prkr:coas/reset.areas/hidden
