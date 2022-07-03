#> hd.prkr:coas/move
#
# 視点先へ移動
#
# @within function hd.prkr:coas/used


### 赤石愛さんのものを参考にさせていただきました


#> Tags
# @private
 #declare tag HdP.Move
## Tagを追加
	tag @s add HdP.Move
## Markerを召喚
	summon minecraft:marker ~ ~ ~ {Tags:["HdP.Move"]}
## 視点先の遠くへ移動
	execute anchored eyes positioned ^ ^ ^102.4 facing entity @s eyes run tp @e[type=minecraft:marker,tag=HdP.Move] ~ ~ ~ ~ ~
## 視点先の一番近いところまで戻す
	execute as @e[type=minecraft:marker,tag=HdP.Move,limit=1] at @s positioned ^ ^ ^51.2 rotated as @e[tag=HdP.Move] positioned ^ ^ ^25.6 rotated as @e[tag=HdP.Move] positioned ^ ^ ^12.8 rotated as @e[tag=HdP.Move] positioned ^ ^ ^6.4 rotated as @e[tag=HdP.Move] positioned ^ ^ ^3.2 rotated as @e[tag=HdP.Move] positioned ^ ^ ^1.6 rotated as @e[tag=HdP.Move] positioned ^ ^ ^0.8 rotated as @e[tag=HdP.Move] positioned ^ ^ ^0.4 rotated as @e[tag=HdP.Move] positioned ^ ^ ^0.2 rotated as @e[tag=HdP.Move] positioned ^ ^ ^0.1 rotated as @e[tag=HdP.Move] positioned ^ ^ ^0.05 rotated as @e[tag=HdP.Move] unless block ~ ~ ~ minecraft:air run tp @s ~ ~ ~
## アマスタの位置へ移動
	execute as @e[type=minecraft:marker,tag=HdP.Move] at @s facing ^ ^ ^-1 positioned ^ ^ ^-0.1 align xyz run tp @a[tag=HdP.Move] ~0.5 ~ ~0.5 ~ ~
## Markerを消す
	kill @e[type=minecraft:marker,tag=HdP.Move]
## Tagを削除
	tag @s remove HdP.Move
## 音
	execute at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
