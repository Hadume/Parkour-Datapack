#> hd.prkr:object/init
# オブジェクトを初期化
# @within function hd.prkr:tick/

## それぞれのオブジェクトに対応するEntityを召喚
	execute if entity @s[tag=HdP.CGArea] run summon marker ~ ~ ~ {Tags:["HdP.CGArea","HdP"],Rotation:[0.0f,0.0f],data:{HdP:{Gamemode:1b}}}
	execute if entity @s[tag=HdP.ASign] run summon marker ~ ~ ~ {Tags:["HdP.ASign","HdP"],Rotation:[0.0f,0.0f],data:{HdP:{ASign:{Enable:1b,Put:0b}}}}

	execute if entity @s[tag=HdP.EndGateway] run setblock ~ ~ ~ end_gateway{Age:-9223372036854775808l}
## 自身を消す
	kill @s
