#> hd.prkr:coas/used
# ニンジン棒を使ったら
# @within function hd.prkr:score/used.coas

## スコアを持っていなかったら、スコアを与える
	execute unless score @s HdP.COAS.Stat = @s HdP.COAS.Stat run scoreboard players set @s HdP.COAS.Stat 0
## 視点先へ移動
	execute if score @s HdP.COAS.Stat matches 0 run function hd.prkr:coas/move
## 視点先に仮ブロック設置
	execute if score @s HdP.COAS.Stat matches 10 anchored eyes positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ #hd.prkr:can.place.temp_block run function hd.prkr:coas/temp.block/set/couldnt
	execute if score @s HdP.COAS.Stat matches 10 anchored eyes positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #hd.prkr:can.place.temp_block run function hd.prkr:coas/temp.block/set/
