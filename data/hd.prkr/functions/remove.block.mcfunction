#> hd.prkr:remove.block
#
# ブロックを削除
#
# @within function hd.prkr:tick/

## 時間経過
	scoreboard players add @s HdP.Timer 1
##
	execute if score @s HdP.Timer matches 40.. run setblock ~ ~ ~ air
	execute unless entity @a[distance=..16] run setblock ~ ~ ~ air
