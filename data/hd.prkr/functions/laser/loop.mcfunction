#> hd.prkr:laser/loop
#
# ループでレーザーを出す
#
# @within function
#   hd.prkr:5.tick
#   hd.prkr:laser/loop

#> Tags
# @private
# @within function
#   hd.prkr:tick
#   hd.prkr:5.tick
 #declare tag HdP.Warn
 #declare tag HdP.Hit
## パーティクルを出す
	particle minecraft:dust 1 0 0 1.5 ~ ~ ~ 0 0 0 0 1
## 音を鳴らすためのTag
	execute as @a[distance=..8] unless data entity @s SelectedItem.tag.HdPL run tag @s add HdP.Warn
## レーザーに当たったのTag
	execute as @a[gamemode=adventure,distance=..0.75] run tag @s add HdP.Hit
## ループ
	execute positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air positioned ^ ^ ^-10 unless entity @s[distance=..0.001] positioned ^ ^ ^10 run function hd.prkr:laser/loop
