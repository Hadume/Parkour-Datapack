#> hd.prkr:egg/init/
#
# オブジェクトを初期化
#
# @within function hd.prkr:tick

## それぞれのオブジェクトに対応するEntityを召喚
	execute if entity @s[tag=HdP.Laser] run summon minecraft:marker ~ ~ ~ {Tags:["HdP.Laser","HdP"],Rotation:[0.0f,0.0f]}
	execute if entity @s[tag=HdP.Start] run function hd.prkr:egg/init/start
	execute if entity @s[tag=HdP.Remove] run summon minecraft:marker ~ ~ ~ {Tags:["HdP.Remove","HdP"],Rotation:[0.0f,0.0f]}
## 自身を消す
	kill @s
