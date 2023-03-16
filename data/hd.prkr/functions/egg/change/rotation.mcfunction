#> hd.prkr:egg/change/rotation
#
# 向きを変える
#
# @within function hd.prkr:egg/change/

## 近くのオブジェクトにTagを付ける
	execute if data storage hd.p: SelectedItemCopy.tag.HdP.Laser as @e[type=marker,tag=HdP.Laser,distance=..2,sort=nearest,limit=1] run tag @s add HdP.This
	execute if data storage hd.p: SelectedItemCopy.tag.HdP.Start as @e[type=marker,tag=HdP.Start,distance=..2,sort=nearest,limit=1] run tag @s add HdP.This
## プレイヤーの向きに合わせる
	execute if entity @s[y_rotation=-45..44.99] as @e[type=marker,tag=HdP.This] at @s run tp @s ~ ~ ~ 0 0
	execute if entity @s[y_rotation=45..134.99] as @e[type=marker,tag=HdP.This] at @s run tp @s ~ ~ ~ 90 0
	execute if entity @s[y_rotation=-135..-45.01] as @e[type=marker,tag=HdP.This] at @s run tp @s ~ ~ ~ -90 0
	execute if entity @s[y_rotation=135..-135.01] as @e[type=marker,tag=HdP.This] at @s run tp @s ~ ~ ~ 180 0

	execute if entity @s[x_rotation=90] as @e[type=marker,tag=HdP.This] at @s run tp @s ~ ~ ~ ~ 90
	execute if entity @s[x_rotation=-90] as @e[type=marker,tag=HdP.This] at @s run tp @s ~ ~ ~ ~ -90
## 伝える
	tellraw @s [{"text":"\n[パルクールシステム] "},{"text":"一番近くのオブジェクトの向きを変更しました。","color":"green"}]
