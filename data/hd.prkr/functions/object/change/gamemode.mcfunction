#> hd.prkr:object/change/gamemode
# ゲームモードの情報を変える
# @within function hd.prkr:object/change/

## 近くのオブジェクトにTagを付ける
	execute as @e[type=marker,tag=HdP.CGArea,distance=..2,sort=nearest,limit=1] run tag @s add HdP.This
##
	execute as @e[tag=HdP.This] store result entity @s data.HdP.Gamemode byte 2 run data get entity @s data.HdP.Gamemode
	execute as @e[tag=HdP.This,nbt={data:{HdP:{Gamemode:16b}}}] run data modify entity @s data.HdP.Gamemode set value 1b
## 伝える
	execute if entity @e[tag=HdP.This,nbt={data:{HdP:{Gamemode:1b}}}] run tellraw @s [{"text":"\n[パルクールシステム] "},{"text":"一番近くのオブジェクトの情報を","color":"green"},{"text": "「サバイバル」","color": "gold","bold": true},{"text": "に変更しました。","color":"green"}]
	execute if entity @e[tag=HdP.This,nbt={data:{HdP:{Gamemode:2b}}}] run tellraw @s [{"text":"\n[パルクールシステム] "},{"text":"一番近くのオブジェクトの情報を","color":"green"},{"text": "「クリエイティブ」","color": "gold","bold": true},{"text": "に変更しました。","color":"green"}]
	execute if entity @e[tag=HdP.This,nbt={data:{HdP:{Gamemode:4b}}}] run tellraw @s [{"text":"\n[パルクールシステム] "},{"text":"一番近くのオブジェクトの情報を","color":"green"},{"text": "「アドベンチャー」","color": "gold","bold": true},{"text": "に変更しました。","color":"green"}]
	execute if entity @e[tag=HdP.This,nbt={data:{HdP:{Gamemode:8b}}}] run tellraw @s [{"text":"\n[パルクールシステム] "},{"text":"一番近くのオブジェクトの情報を","color":"green"},{"text": "「スペクテイター」","color": "gold","bold": true},{"text": "に変更しました。","color":"green"}]
