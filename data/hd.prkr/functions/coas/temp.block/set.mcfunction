#> hd.prkr:coas/temp.block/set
#
# 仮ブロックを設置
#
# @within function hd.prkr:coas/used

#> Tags
# @private
# @within function hd.prkr:tick
 #declare tag HdP.TempBlock
## シュルカーを召喚
	summon minecraft:shulker ~ ~ ~ {Glowing:1b,NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Tags:["HdP.TempBlock"]}
## ブロックを設置
	setblock ~ ~ ~ minecraft:barrier
## 音
	execute as @a[gamemode=!adventure,gamemode=!survival,distance=..8] run playsound minecraft:block.piston.contract master @s ~ ~ ~ 1 2
