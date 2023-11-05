#> hd.prkr:object/kill
# 卵から生まれたものを消す
# @within function hd.prkr:offhand

## 一番近くの物を消す
	execute if data storage hd.p: {OffHandCopy:{tag:{HdP:{Remove:1b}}}} store success score $HdP.Success HdP.Temp run kill @e[type=marker,tag=HdP.Remove,distance=..4,sort=nearest,limit=1]
	execute if data storage hd.p: {OffHandCopy:{tag:{HdP:{CGArea:1b}}}} store success score $HdP.Success HdP.Temp run kill @e[type=marker,tag=HdP.CGArea,distance=..4,sort=nearest,limit=1]
	execute if data storage hd.p: {OffHandCopy:{tag:{HdP:{ASign:1b}}}} store success score $HdP.Success HdP.Temp as @e[type=marker,tag=HdP.ASign,distance=..4,sort=nearest,limit=1] at @s run function hd.prkr:object/attractive.sign/kill/
## 伝える
	execute if score $HdP.Success HdP.Temp matches 1 run tellraw @s [{"text":"\n[パルクールシステム] "},{"text":"一番近くのオブジェクトを削除しました。","color":"red"}]
## 音を鳴らす
	execute if score $HdP.Success HdP.Temp matches 1 run playsound block.note_block.bass block @s ~ ~ ~ 1 0.5
