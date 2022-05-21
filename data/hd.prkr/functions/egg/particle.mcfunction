#> hd.prkr:egg/particle
#
# 卵の位置を知らせる
#
# @within function hd.prkr:tick

## メインハンドのアイテムをコピー
	data modify storage hd.p: SelectedItemCopy set from entity @s SelectedItem
## パーティクル
	execute if data storage hd.p: SelectedItemCopy.tag.HdPL as @e[type=minecraft:marker,tag=HdP.Laser,distance=..8] at @s run particle minecraft:block minecraft:lapis_block ~ ~ ~ 0 0 0 0 1
	execute if data storage hd.p: SelectedItemCopy.tag.HdPR as @e[type=minecraft:marker,tag=HdP.Remove,distance=..8] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1

	execute if data storage hd.p: SelectedItemCopy.tag.HdPS as @e[type=minecraft:marker,tag=HdP.Start,distance=..8] at @s run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1
	execute if data storage hd.p: SelectedItemCopy.tag.HdPS as @e[type=minecraft:marker,tag=HdP.Start,distance=..8] at @s run particle minecraft:block minecraft:emerald_block ^ ^ ^1 0 0 0 0 1
## 一時使用Storageをリセット
	data remove storage hd.p: SelectedItemCopy
