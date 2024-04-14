#> hd.prkr:object/gamemode.area/change
# ゲームモード変更
# @within function hd.prkr:tick/player

#> Tags
# @private
 #declare tag HdP.This
## 近くのオブジェクトにTagを付ける
	execute as @e[type=marker,tag=HdP.CGArea,distance=..0.75,sort=nearest,limit=1] run tag @s add HdP.This
## パーティクル
	execute if entity @e[tag=HdP.This,nbt={data:{HdP:{Gamemode:1b}}}] run gamemode survival
	execute if entity @e[tag=HdP.This,nbt={data:{HdP:{Gamemode:2b}}}] run gamemode creative
	execute if entity @e[tag=HdP.This,nbt={data:{HdP:{Gamemode:4b}}}] run gamemode adventure
	execute if entity @e[tag=HdP.This,nbt={data:{HdP:{Gamemode:8b}}}] run gamemode spectator
## Tagを外す
	execute as @e[tag=HdP.This] run tag @s remove HdP.This
