#> hd.prkr:coas/used
#
# ニンジン棒を使ったら
#
# @within function hd.prkr:tick

## スコアを持っていなかったら、スコアを与える
	execute unless score @s HdP.COAS.Stat matches ..2147483647 run scoreboard players set @s HdP.COAS.Stat 0
## 視点先へ移動
	execute if score @s HdP.COAS.Stat matches 0 run function hd.prkr:coas/move
## 視点先に仮ブロック設置
	execute if score @s HdP.COAS.Stat matches 1 anchored eyes positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ minecraft:air run function hd.prkr:coas/temp.block/couldnt
	execute if score @s HdP.COAS.Stat matches 1 anchored eyes positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ minecraft:air run function hd.prkr:coas/temp.block/set
## スコアをリセット
	scoreboard players reset @s HdP.Used.COAS
