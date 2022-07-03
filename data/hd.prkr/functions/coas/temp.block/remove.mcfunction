#> hd.prkr:coas/temp.block/remove
#
# 仮ブロックを削除
#
# @within function hd.prkr:coas/temp.block/tick

## 
	execute if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
## シュルカーを削除
	tp @s ~ -3000 ~
## 音
	execute as @a[gamemode=!adventure,gamemode=!survival,distance=..8] run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2
