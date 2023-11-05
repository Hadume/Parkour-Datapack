#> hd.prkr:score/sneak.time
# スニークしていたら
# @within function hd.prkr:tick/player

## メインハンドのアイテムをコピー
	data modify storage hd.p: SelectedItemCopy set from entity @s SelectedItem
## 手に卵を持っていたら
	execute if data storage hd.p: SelectedItemCopy.tag.HdP if entity @s[gamemode=creative,scores={HdP.SneakTime=1}] if entity @e[type=marker,tag=HdP,distance=..2] run function hd.prkr:object/change/
## スニークしていなかったら、Scoreboardをリセット
	execute unless predicate hd.prkr:sneaking run scoreboard players reset @s HdP.SneakTime
## 一時使用Storageをリセット
	data remove storage hd.p: SelectedItemCopy
