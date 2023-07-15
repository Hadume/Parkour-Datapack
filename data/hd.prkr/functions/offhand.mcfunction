#> hd.prkr:offhand
# オフハンドにアイテムを持ったら
# @within advancement hd.prkr:offhand

#> ScoreHolder
# @private
# @within function hd.prkr:egg/kill
 #declare score_holder $HdP.Success
## オフハンドをコピー
	data modify storage hd.p: OffHandCopy set from entity @s Inventory[{Slot:-106b}]
## オフハンドが卵だったら
	execute if data storage hd.p: OffHandCopy.tag.HdP.Egg run function hd.prkr:egg/kill
## オフハンドがニンジン棒だったら
	execute if data storage hd.p: OffHandCopy.tag.HdP.COAS run function hd.prkr:coas/stat
## アイテムを返す
	item replace entity @s weapon.mainhand from entity @s weapon.offhand
	item replace entity @s weapon.offhand with air
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdP.Success
## 一時使用Storageをリセット
	data remove storage hd.p: OffHandCopy
## 進捗を剥奪
	advancement revoke @s only hd.prkr:offhand
