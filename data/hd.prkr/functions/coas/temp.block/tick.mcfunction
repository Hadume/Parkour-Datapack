#> hd.prkr:coas/temp.block/tick
#
# 仮ブロック
#
# @within function hd.prkr:tick/

## スコアを増加
	scoreboard players add @s HdP.Timer 1
## ブロックを削除
	execute if score @s HdP.Timer matches 40.. run function hd.prkr:coas/temp.block/remove
