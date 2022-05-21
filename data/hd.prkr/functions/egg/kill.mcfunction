#> hd.prkr:egg/kill
#
# 卵から生まれたものを消す
#
# @within advancement hd.prkr:remove.objectiles

#> ScoreHolder
# @private
 #declare score_holder $HdP.Success
## オフハンドをコピー
	data modify storage hd.p: OffHandCopy set from entity @s Inventory[{Slot:-106b}]
## 一番近くの物を消す
	execute if data storage hd.p: OffHandCopy.tag.HdPL store success score $HdP.Success HdP.Temp run kill @e[type=minecraft:marker,tag=HdP.Laser,distance=..4,sort=nearest,limit=1]
	execute if data storage hd.p: OffHandCopy.tag.HdPS store success score $HdP.Success HdP.Temp as @e[type=minecraft:marker,tag=HdP.Start,distance=..4,sort=nearest,limit=1] at @s run forceload remove ~ ~ ~ ~
	execute if data storage hd.p: OffHandCopy.tag.HdPS store success score $HdP.Success HdP.Temp run kill @e[type=minecraft:marker,tag=HdP.Start,distance=..4,sort=nearest,limit=1]
	execute if data storage hd.p: OffHandCopy.tag.HdPR store success score $HdP.Success HdP.Temp run kill @e[type=minecraft:marker,tag=HdP.Remove,distance=..4,sort=nearest,limit=1]
## アイテムを返す
	item replace entity @s weapon.mainhand from entity @s weapon.offhand
	item replace entity @s weapon.offhand with minecraft:air
## 音を鳴らす
	execute if score $HdP.Success HdP.Temp matches 1 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
## 伝える
	execute if score $HdP.Success HdP.Temp matches 1 run tellraw @s [{"text":"[パルクールシステム] "},{"text":"一番近くのオブジェクトを削除しました。","color":"red"}]
## 進捗を剥奪
	advancement revoke @s only hd.prkr:remove.objectiles
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdP.Success
## 一時使用Storageをリセット
	data remove storage hd.p: OffHandCopy
