#> hd.prkr:egg/init/start
#
# スタートのオブジェクト
#
# @within function hd.prkr:egg/init/

#> Tags
# @private
 #declare tag HdP.Start.Init
## Entityを召喚
	summon marker ~ ~ ~ {Tags:["HdP.Start","HdP","HdP.Start.Init"],Rotation:[0.0f,0.0f]}
## チャンクの読み込み
	execute as @e[type=marker,tag=HdP.Start.Init] at @s run forceload add ~ ~ ~ ~
## 仮タグを削除
	tag @e[type=marker,tag=HdP.Start.Init] remove HdP.Start.Init
