#> hd.prkr:egg/rotation
#
# 向きを変える
#
# @within function hd.prkr:sneak.time

#> Tags
# @private
 #declare tag HdP.This
#> ScoreHolder
# @private
 #declare score_holder $HdP.Success
## 近くのオブジェクトにTagを付ける
	execute if data storage hd.p: SelectedItemCopy.tag.HdPL as @e[type=minecraft:marker,tag=HdP.Laser,distance=..4,sort=nearest,limit=1] run tag @s add HdP.This
	execute if data storage hd.p: SelectedItemCopy.tag.HdPS as @e[type=minecraft:marker,tag=HdP.Start,distance=..4,sort=nearest,limit=1] run tag @s add HdP.This
## プレイヤーの向きに合わせる
	execute if entity @s[y_rotation=-45..44.99] as @e[type=minecraft:marker,tag=HdP.This] at @s run tp @s ~ ~ ~ 0 0
	execute if entity @s[y_rotation=45..134.99] as @e[type=minecraft:marker,tag=HdP.This] at @s run tp @s ~ ~ ~ 90 0
	execute if entity @s[y_rotation=-135..-45.01] as @e[type=minecraft:marker,tag=HdP.This] at @s run tp @s ~ ~ ~ -90 0
	execute if entity @s[y_rotation=135..-135.01] as @e[type=minecraft:marker,tag=HdP.This] at @s run tp @s ~ ~ ~ 180 0

	execute if entity @s[x_rotation=90] as @e[type=minecraft:marker,tag=HdP.This] at @s run tp @s ~ ~ ~ ~ 90
	execute if entity @s[x_rotation=-90] as @e[type=minecraft:marker,tag=HdP.This] at @s run tp @s ~ ~ ~ ~ -90
## Tagを外す
	execute store success score $HdP.Success HdP.Temp as @e[type=minecraft:marker,tag=HdP.This] run tag @s remove HdP.This
## 伝える
	execute if score $HdP.Success HdP.Temp matches 1 run tellraw @s [{"text":"[パルクールシステム] "},{"text":"一番近くのオブジェクトの向きを変更しました。","color":"green"}]
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdP.Success
