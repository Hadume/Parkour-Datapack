#> hd.prkr:egg/gamemode.area/particle
#
# ゲームモード変更エリア
#
# @within function hd.prkr:tick/

## 
	execute if entity @s[nbt={data:{HdP:{Gamemode:1b}}}] run particle minecraft:happy_villager ~ ~ ~ 0 0.25 0 0 2 normal @a[gamemode=!survival]
	execute if entity @s[nbt={data:{HdP:{Gamemode:2b}}}] run particle minecraft:happy_villager ~ ~ ~ 0 0.25 0 0 2 normal @a[gamemode=!creative]
	execute if entity @s[nbt={data:{HdP:{Gamemode:4b}}}] run particle minecraft:happy_villager ~ ~ ~ 0 0.25 0 0 2 normal @a[gamemode=!adventure]
	execute if entity @s[nbt={data:{HdP:{Gamemode:8b}}}] run particle minecraft:happy_villager ~ ~ ~ 0 0.25 0 0 2 normal @a[gamemode=!spectator]
