#> hd.prkr:sneak.time
#
# スニークしていたら
#
# @within function hd.prkr:tick/players

#> Tags
# @private
 #declare tag HdP
## メインハンドのアイテムをコピー
	execute if data entity @s SelectedItem run data modify storage hd.p: SelectedItemCopy set from entity @s SelectedItem
## 手にレーザーの卵を持っていたら
	execute if entity @s[gamemode=creative,scores={HdP.SneakTime=1}] if data storage hd.p: SelectedItemCopy.tag.HdP if entity @e[type=minecraft:marker,tag=HdP,distance=..2] run function hd.prkr:egg/rotation
## スニークしていなかったら、Scoreboardをリセット
	execute unless predicate hd.prkr:sneaking run scoreboard players reset @s HdP.SneakTime
## 一時使用Storageをリセット
	execute if data storage hd.p: SelectedItemCopy run data remove storage hd.p: SelectedItemCopy
