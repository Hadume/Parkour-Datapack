#> hd.prkr:egg/init/
#
# オブジェクトを初期化
#
# @within function hd.prkr:tick

#> Tags
# @within function hd.prkr:egg/**
 #declare tag HdP
 #declare tag HdP.Laser
 #declare tag HdP.Start
 #declare tag HdP.Remove
 #declare tag HdP.EndGateway
## それぞれのオブジェクトに対応するEntityを召喚
	execute if entity @s[tag=HdP.Laser] run summon minecraft:marker ~ ~ ~ {Tags:["HdP.Laser","HdP"],Rotation:[0.0f,0.0f]}
	execute if entity @s[tag=HdP.Start] run function hd.prkr:egg/init/start
	execute if entity @s[tag=HdP.Remove] run summon minecraft:marker ~ ~ ~ {Tags:["HdP.Remove","HdP"],Rotation:[0.0f,0.0f]}

	execute if entity @s[tag=HdP.EndGateway] run setblock ~ ~ ~ minecraft:end_gateway{Age:-9223372036854775808l}
	execute if entity @s[tag=HdP.EndGateway] run kill @s
## 自身を消す
	kill @s
