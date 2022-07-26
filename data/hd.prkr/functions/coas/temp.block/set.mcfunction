#> hd.prkr:coas/temp.block/set
#
# 仮ブロックを設置
#
# @within function hd.prkr:coas/used

#> Tags
# @private
# @within function
#   hd.prkr:tick
#   hd.prkr:coas/temp.block/remove
 #declare tag HdP.TempBlock
 #declare tag HdP.TempBlock.Reset
 #declare tag HdP.TempBlock.Reset.OnGround
## シュルカーを召喚
	execute if block ~ ~ ~ minecraft:air run summon minecraft:shulker ~ ~ ~ {Glowing:1b,NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Tags:["HdP.TempBlock"]}
	execute if block ~ ~ ~ minecraft:light[level=0] run summon minecraft:shulker ~ ~ ~ {Glowing:1b,NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Tags:["HdP.TempBlock","HdP.TempBlock.Reset"]}
	execute if block ~ ~ ~ minecraft:light[level=1] run summon minecraft:shulker ~ ~ ~ {Glowing:1b,NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Tags:["HdP.TempBlock","HdP.TempBlock.Reset.OnGround"]}
## ブロックを設置
	setblock ~ ~ ~ minecraft:barrier
## 音
	execute as @a[gamemode=!adventure,gamemode=!survival,distance=..8] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1 2
