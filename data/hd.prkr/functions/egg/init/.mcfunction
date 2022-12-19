#> hd.prkr:egg/init/
#
# オブジェクトを初期化
#
# @within function hd.prkr:tick/

#> Tags
# @within function hd.prkr:egg/**
 #declare tag HdP
 #declare tag HdP.Laser
 #declare tag HdP.Start
 #declare tag HdP.Remove
 #declare tag HdP.EndGateway
 #declare tag HdP.CGArea
 #declare tag HdP.ASign
#> Tags
# @within function prkr:**
 #declare tag HdP.Remove
## それぞれのオブジェクトに対応するEntityを召喚
	execute if entity @s[tag=HdP.Laser] run summon marker ~ ~ ~ {Tags:["HdP.Laser","HdP"],Rotation:[0.0f,0.0f]}
	execute if entity @s[tag=HdP.Start] run function hd.prkr:egg/init/start
	execute if entity @s[tag=HdP.Remove] run summon marker ~ ~ ~ {Tags:["HdP.Remove","HdP"],Rotation:[0.0f,0.0f]}
	execute if entity @s[tag=HdP.CGArea] run summon marker ~ ~ ~ {Tags:["HdP.CGArea","HdP"],Rotation:[0.0f,0.0f],data:{HdP:{Gamemode:1b}}}
	execute if entity @s[tag=HdP.ASign] run summon marker ~ ~ ~ {Tags:["HdP.ASign","HdP"],Rotation:[0.0f,0.0f],data:{HdP:{ASign:{Enable:1b,Put:0b}}}}

	execute if entity @s[tag=HdP.EndGateway] run setblock ~ ~ ~ end_gateway{Age:-9223372036854775808l}
	execute if entity @s[tag=HdP.EndGateway] run kill @s
## 自身を消す
	kill @s
