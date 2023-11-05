#> hd.prkr:object/gamemode.area/particle
# ゲームモード変更エリア
# @within function hd.prkr:tick/marker

##
	execute if entity @s[nbt={data:{HdP:{Gamemode:1b}}}] run particle wax_on ~ ~ ~ 0 0.25 0 0 2 force @a[gamemode=!survival]
	execute if entity @s[nbt={data:{HdP:{Gamemode:2b}}}] run particle wax_on ~ ~ ~ 0 0.25 0 0 2 force @a[gamemode=!creative]
	execute if entity @s[nbt={data:{HdP:{Gamemode:4b}}}] run particle wax_on ~ ~ ~ 0 0.25 0 0 2 force @a[gamemode=!adventure]
	execute if entity @s[nbt={data:{HdP:{Gamemode:8b}}}] run particle wax_on ~ ~ ~ 0 0.25 0 0 2 force @a[gamemode=!spectator]
