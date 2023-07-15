#> hd.prkr:coas/reset.areas/
#
# @within function hd.prkr:coas/used

## 音
	execute if score @s HdP.COAS.Stat matches 20 run playsound block.glass.place block @s ~ ~ ~
	execute if score @s HdP.COAS.Stat matches 21 run playsound block.glass.break block @s ~ ~ ~
## ブロックを置き換える
	execute align xyz positioned ~0.5 ~0.5 ~0.5 run function hd.prkr:coas/reset.areas/pos/x
## 動きを止める
	tp @s @s
## スコアを変更
	scoreboard players add @s HdP.COAS.Stat 1
	execute if score @s HdP.COAS.Stat matches 22.. run scoreboard players set @s HdP.COAS.Stat 20
