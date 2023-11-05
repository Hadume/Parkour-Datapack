#> hd.prkr:score/death.count
# 死んだら
# @within function hd.prkr:tick/player

#> Tags
# @private
# @within function hd.prkr:tick/player
# @within predicate hd.prkr:reset
 #declare tag HdP.Dead
## タグを追加
  execute if entity @s[nbt={DeathTime:0s}] run tag @s add HdP.Dead
## スコアをリセット
	scoreboard players reset @s HdP.DeathCount
