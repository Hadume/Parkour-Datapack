#> hd.prkr:object/particle
# オブジェクトの位置
# @within function hd.prkr:tick/player

## メインハンドのアイテムをコピー
	data modify storage hd.p: SelectedItemCopy set from entity @s SelectedItem
## パーティクル
	execute if data storage hd.p: {SelectedItemCopy:{tag:{HdP:["ASign"]}}} as @e[type=marker,tag=HdP.ASign,distance=..8] at @s run particle wax_off ~ ~ ~ 0 0 0 0 1
	execute if data storage hd.p: {SelectedItemCopy:{tag:{HdP:["CGArea"]}}} as @e[type=marker,tag=HdP.CGArea,distance=..8] at @s run particle crit ~ ~ ~ 0 0 0 0 1
## 一時使用Storageをリセット
	data remove storage hd.p: SelectedItemCopy
